package §+S§
{
   import § !V§.*;
   import §2"=§.*;
   import §5!o§.*;
   import §;T§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §3m§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §3m§ = new b2ContactImpulse();
         }
      }
      
      private var §=!6§;
      
      private var §;!!§:b2ContactListener;
      
      private var § !"§:b2ContactSolver;
      
      b2internal var §;!j§:Vector.<b2Body>;
      
      b2internal var §1f§:Vector.<b2Contact>;
      
      b2internal var §4!L§:Vector.<b2Joint>;
      
      b2internal var §&z§:int;
      
      b2internal var §,i§:int;
      
      b2internal var §3!Z§:int;
      
      private var §5H§:int;
      
      b2internal var §]";§:int;
      
      b2internal var §]!n§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            while(true)
            {
               this.§;!j§ = new Vector.<b2Body>();
               while(true)
               {
                  this.§1f§ = new Vector.<b2Contact>();
                  §§goto(addr69);
               }
            }
         }
         addr69:
         while(true)
         {
            this.§4!L§ = new Vector.<b2Joint>();
            if(_loc1_ || _loc2_)
            {
               if(_loc1_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr61:
      }
      
      public function §1o§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            this.§5H§ = param1;
            loop0:
            while(true)
            {
               this.§]";§ = param2;
               while(true)
               {
                  this.§]!n§ = param3;
                  loop2:
                  while(_loc8_ || param1)
                  {
                     this.§&z§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§3!Z§ = 0;
                        do
                        {
                           this.§,i§ = 0;
                           do
                           {
                              this.§=!6§ = param4;
                              loop6:
                              while(true)
                              {
                                 this.§;!!§ = param5;
                                 addr205:
                                 while(true)
                                 {
                                    if(!_loc9_)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                                 continue loop2;
                              }
                           }
                           while(!(_loc8_ || param2));
                           
                        }
                        while(!(_loc8_ || param1));
                        
                        addr142:
                        if(_loc7_ >= param1)
                        {
                           addr150:
                           _loc7_ = int(this.§1f§.length);
                           addr151:
                           addr146:
                           if(_loc8_)
                           {
                              addr81:
                              §§push(_loc7_);
                              §§push(param2);
                              if(!_loc9_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    addr87:
                                    if(_loc8_)
                                    {
                                       addr93:
                                       §§push(int(this.§4!L§.length));
                                       if(_loc8_ || this)
                                       {
                                          if(!_loc9_)
                                          {
                                             _loc7_ = §§pop();
                                             addr103:
                                             if(!(_loc9_ && param1))
                                             {
                                                if(!(_loc9_ && param2))
                                                {
                                                   addr21:
                                                   §§push(_loc7_);
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(param3);
                                                         if(_loc8_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!(_loc8_ || param3))
                                                               {
                                                                  addr43:
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           §§goto(addr21);
                                                                        }
                                                                        §§goto(addr87);
                                                                     }
                                                                     §§goto(addr103);
                                                                  }
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     _loc7_++;
                                                                     §§goto(addr43);
                                                                  }
                                                                  _loc7_++;
                                                                  addr120:
                                                                  if(_loc8_)
                                                                  {
                                                                     §§goto(addr81);
                                                                  }
                                                                  §§goto(addr142);
                                                                  addr141:
                                                               }
                                                               return;
                                                            }
                                                            this.§4!L§[_loc7_] = null;
                                                            §§goto(addr43);
                                                         }
                                                      }
                                                      §§goto(addr81);
                                                   }
                                                   §§goto(addr93);
                                                }
                                                §§goto(addr151);
                                             }
                                             §§goto(addr120);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr146);
                                 }
                                 this.§1f§[_loc7_] = null;
                                 §§goto(addr141);
                              }
                              §§goto(addr142);
                           }
                           _loc7_++;
                           §§goto(addr120);
                           addr165:
                        }
                        this.§;!j§[_loc7_] = null;
                        §§goto(addr165);
                     }
                  }
               }
            }
         }
         §§goto(addr238);
      }
      
      public function §^S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§&z§ = 0;
            do
            {
               this.§3!Z§ = 0;
               do
               {
                  this.§,i§ = 0;
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function §=F§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         if(!(_loc19_ && param2))
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§&z§)
         {
            if((_loc6_ = this.§;!j§[_loc4_]).§+!O§() != b2Body.b2_dynamicBody)
            {
               if(_loc18_ || this)
               {
                  loop16:
                  while(true)
                  {
                     _loc4_++;
                     if(!(_loc19_ && this))
                     {
                        addr154:
                        if(_loc18_)
                        {
                           if(!_loc19_)
                           {
                              addr158:
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
                                       §§push(param1.§+z§);
                                       if(!(_loc19_ && param1))
                                       {
                                          §§push(§§pop() * _loc6_.§7!_§);
                                       }
                                       §§push(§§pop() * §§pop().§&>§(§§pop() - §§pop(),0,1));
                                    }
                                    §§pop().m_angularVelocity = §§pop();
                                    addr186:
                                    while(true)
                                    {
                                       continue loop16;
                                    }
                                    §§goto(addr154);
                                    §§goto(addr158);
                                 }
                                 addr160:
                              }
                              continue loop0;
                           }
                           addr253:
                           while(true)
                           {
                           }
                           while(true)
                           {
                              §§push(_loc6_.§,b§);
                              addr258:
                              while(true)
                              {
                                 §§push(§§pop().y);
                                 if(_loc18_ || this)
                                 {
                                    addr266:
                                    while(true)
                                    {
                                       §§push(param1.§+z§);
                                       if(!_loc19_)
                                       {
                                          §§push(param2.y);
                                          if(!_loc19_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_.§;k§);
                                                if(_loc18_ || param2)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc6_.§2!d§);
                                                      addr285:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().y);
                                                         addr286:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                   }
                                                   addr283:
                                                }
                                                addr287:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             addr274:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                          addr288:
                                       }
                                       addr289:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                    addr266:
                                 }
                                 addr290:
                                 while(true)
                                 {
                                    §§pop().y = §§pop();
                                    addr291:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc6_.m_angularVelocity);
                                       if(!_loc19_)
                                       {
                                          §§push(param1.§+z§);
                                          if(_loc18_)
                                          {
                                             §§push(_loc6_.§6x§);
                                             if(!(_loc19_ && param2))
                                             {
                                                addr251:
                                                §§push(§§pop() * §§pop());
                                                if(_loc18_ || param3)
                                                {
                                                   §§push(_loc6_.§?6§);
                                                }
                                                §§pop().m_angularVelocity = §§pop() + §§pop();
                                                §§goto(addr253);
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                       §§goto(addr251);
                                    }
                                 }
                              }
                           }
                           addr253:
                           addr256:
                           while(true)
                           {
                              §§push(_loc6_.§,b§);
                              if(_loc18_)
                              {
                                 §§push(b2Math);
                                 §§push(1);
                                 §§push(param1.§+z§);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop() * _loc6_.§%!o§);
                                 }
                                 §§push(§§pop().§&>§(§§pop() - §§pop(),0,1));
                                 if(!(_loc19_ && this))
                                 {
                                    §§pop().§>!t§(§§pop());
                                    while(!(_loc19_ && param3))
                                    {
                                       §§goto(addr160);
                                    }
                                    addr213:
                                 }
                                 else
                                 {
                                    §§goto(addr290);
                                 }
                                 §§goto(addr291);
                              }
                              else
                              {
                                 §§goto(addr256);
                              }
                           }
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr186);
                  }
               }
               §§goto(addr253);
            }
            else
            {
               §§push(_loc6_.§,b§);
               if(_loc18_ || param3)
               {
                  §§push(_loc6_.§,b§);
                  if(_loc18_)
                  {
                     §§push(§§pop().x);
                     if(_loc18_)
                     {
                        §§push(param1.§+z§);
                        if(_loc18_)
                        {
                           §§push(param2.x);
                           if(!_loc19_)
                           {
                              §§push(_loc6_.§;k§);
                              if(!_loc19_)
                              {
                                 §§push(_loc6_.§2!d§);
                                 if(!(_loc19_ && this))
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc19_ && param2))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc18_ || this)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc18_)
                                             {
                                                addr133:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc19_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(_loc18_ || param2)
                                                   {
                                                      §§goto(addr253);
                                                      §§push(_loc6_.§,b§);
                                                   }
                                                   §§goto(addr186);
                                                }
                                                §§goto(addr266);
                                             }
                                             §§goto(addr289);
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr287);
                                    }
                                    §§goto(addr286);
                                 }
                                 §§goto(addr285);
                              }
                              §§goto(addr283);
                           }
                           §§goto(addr274);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr266);
                  }
                  §§goto(addr258);
               }
            }
            §§goto(addr253);
         }
         if(_loc18_ || param2)
         {
            §§push(this.§ !"§);
            if(_loc18_)
            {
               §§pop().§1o§(param1,this.§1f§,this.§3!Z§,this.§=!6§);
               addr315:
               §§push(this.§ !"§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(!_loc19_)
            {
               §§push(0);
               if(_loc18_)
               {
                  _loc4_ = §§pop();
                  if(_loc18_)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc18_ || param1)
                        {
                           §§push(this.§,i§);
                           if(_loc18_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§4!L§[_loc4_]).InitVelocityConstraints(param1);
                                 if(!_loc19_)
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(!_loc19_)
                              {
                                 addr1251:
                                 §§push(0);
                                 if(!(_loc19_ && param2))
                                 {
                                    break;
                                 }
                                 loop149:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc18_)
                                    {
                                       if(false)
                                       {
                                          loop72:
                                          while(true)
                                          {
                                             §§push(b2Settings.b2_angularSleepTolerance);
                                             if(_loc18_ || param2)
                                             {
                                                if(_loc18_)
                                                {
                                                   §§push(b2Settings.b2_angularSleepTolerance);
                                                   if(!(_loc19_ && this))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc18_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc19_ && param2))
                                                         {
                                                            addr1288:
                                                            if(!(_loc19_ && this))
                                                            {
                                                               _loc17_ = §§pop();
                                                               if(!(_loc19_ && param3))
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc19_ && param3))
                                                                  {
                                                                     continue loop149;
                                                                  }
                                                                  addr1643:
                                                                  loop78:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§&z§);
                                                                     if(_loc18_ || this)
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(!(_loc19_ && param3))
                                                                              {
                                                                                 break loop72;
                                                                              }
                                                                              §§goto(addr1705);
                                                                           }
                                                                           §§push((_loc6_ = this.§;!j§[_loc4_]).§+!O§());
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              §§push(b2Body.b2_staticBody);
                                                                              if(_loc18_)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_++;
                                                                                          if(!(_loc19_ && this))
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(b2Math.§8L§(_loc15_,_loc6_.§[^§));
                                                                                                if(_loc18_ || param1)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      if(_loc18_ || this)
                                                                                                      {
                                                                                                         _loc15_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               if(!(_loc19_ && param1))
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     addr1497:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     loop39:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.m_angularVelocity);
                                                                                                                        loop37:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.m_angularVelocity);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr1599:
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc18_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    loop26:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          loop27:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc18_ || param2)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   loop28:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         §§push(_loc6_.§[^§);
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + param1.§+z§);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§[^§ = §§pop();
                                                                                                                                                         while(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc19_ && param3))
                                                                                                                                                            {
                                                                                                                                                               continue loop22;
                                                                                                                                                            }
                                                                                                                                                            addr1592:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(!(_loc19_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr1530:
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        _loc15_ = §§pop();
                                                                                                                                                                        break loop28;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1546);
                                                                                                                                                                  }
                                                                                                                                                                  addr1530:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1530);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                         addr1510:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc19_ && param2))
                                                                                                                                                         {
                                                                                                                                                            _loc6_.§[^§ = 0;
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1621);
                                                                                                                                                         }
                                                                                                                                                         addr1546:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc19_ && param2))
                                                                                                                                                            {
                                                                                                                                                               continue loop26;
                                                                                                                                                            }
                                                                                                                                                            continue loop37;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1592);
                                                                                                                                                   }
                                                                                                                                                   continue loop21;
                                                                                                                                                   addr1580:
                                                                                                                                                }
                                                                                                                                                loop30:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr1621:
                                                                                                                                                   addr1632:
                                                                                                                                                   loop29:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(b2Math.§@!y§(_loc6_.§,b§,_loc6_.§,b§));
                                                                                                                                                         }
                                                                                                                                                         addr1623:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr1639:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr1625:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.§`"8§);
                                                                                                                                                               addr1627:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(b2Body.§8"8§);
                                                                                                                                                                  addr1629:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() & §§pop());
                                                                                                                                                                     addr1630:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        addr1631:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           break loop29;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1639:
                                                                                                                                                      }
                                                                                                                                                      continue loop30;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      addr1633:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            break loop27;
                                                                                                                                                         }
                                                                                                                                                         continue loop27;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1546);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1633);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             continue loop39;
                                                                                                                                          }
                                                                                                                                          addr1634:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1620);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    addr1638:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1639);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1582);
                                                                                                            }
                                                                                                            §§goto(addr1510);
                                                                                                         }
                                                                                                         addr1486:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr1637:
                                                                                                      }
                                                                                                      §§goto(addr1638);
                                                                                                   }
                                                                                                   §§goto(addr1599);
                                                                                                }
                                                                                                §§goto(addr1530);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1486);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             break loop20;
                                                                                          }
                                                                                          continue loop78;
                                                                                       }
                                                                                       addr1640:
                                                                                    }
                                                                                    §§goto(addr1497);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc6_.§`"8§);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       addr1425:
                                                                                       §§push(b2Body.§8"8§);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr1429:
                                                                                          §§push(§§pop() & §§pop());
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      _loc6_.§[^§ = 0;
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§goto(addr1637);
                                                                                                         §§push(0);
                                                                                                      }
                                                                                                      §§goto(addr1623);
                                                                                                   }
                                                                                                   §§goto(addr1639);
                                                                                                }
                                                                                                §§goto(addr1625);
                                                                                             }
                                                                                             §§goto(addr1631);
                                                                                          }
                                                                                          §§goto(addr1630);
                                                                                       }
                                                                                       §§goto(addr1629);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1627);
                                                                              }
                                                                              §§goto(addr1429);
                                                                           }
                                                                           §§goto(addr1425);
                                                                           continue loop78;
                                                                        }
                                                                        addr1669:
                                                                        _loc4_ = §§pop();
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           addr1677:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              addr1702:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§&z§);
                                                                              }
                                                                           }
                                                                           addr1701:
                                                                        }
                                                                        addr1705:
                                                                        return;
                                                                        addr1652:
                                                                     }
                                                                     addr1704:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           (_loc6_ = this.§;!j§[_loc4_]).SetAwake(false);
                                                                           if(_loc18_)
                                                                           {
                                                                              _loc4_++;
                                                                           }
                                                                           §§goto(addr1701);
                                                                        }
                                                                        §§goto(addr1702);
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            addr1661:
                                                            loop71:
                                                            while(true)
                                                            {
                                                               if(_loc18_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc19_)
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     if(!(_loc19_ && param1))
                                                                     {
                                                                        if(_loc18_ || param3)
                                                                        {
                                                                           addr1332:
                                                                           if(!(_loc18_ || param2))
                                                                           {
                                                                              loop67:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(Number.MAX_VALUE));
                                                                                 addr1355:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc15_ = §§pop();
                                                                                    addr1356:
                                                                                    while(!_loc19_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(b2Settings.b2_linearSleepTolerance);
                                                                                          addr1307:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(b2Settings.b2_linearSleepTolerance);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                             continue loop71;
                                                                                          }
                                                                                          addr1663:
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                addr1666:
                                                                                                §§push(0);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§goto(addr1669);
                                                                                                }
                                                                                                §§goto(addr1702);
                                                                                             }
                                                                                             §§goto(addr1677);
                                                                                          }
                                                                                          §§goto(addr1705);
                                                                                       }
                                                                                    }
                                                                                    addr1368:
                                                                                    while(!(_loc19_ && this))
                                                                                    {
                                                                                       loop66:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§;!q§(_loc8_.§#I§);
                                                                                          if(!(_loc19_ && this))
                                                                                          {
                                                                                             addr1390:
                                                                                             §§push(param3);
                                                                                             if(!(_loc19_ && param3))
                                                                                             {
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop67;
                                                                                                   }
                                                                                                   §§goto(addr1705);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr1389:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   addr1389:
                                                                                                }
                                                                                                §§goto(addr1705);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   _loc4_++;
                                                                                                }
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop66;
                                                                                             }
                                                                                             §§goto(addr1666);
                                                                                             addr1390:
                                                                                          }
                                                                                          §§goto(addr1705);
                                                                                       }
                                                                                    }
                                                                                    loop81:
                                                                                    while(true)
                                                                                    {
                                                                                       addr1360:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             loop64:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.§@!C§);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   §§goto(addr1368);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr1110:
                                                                                                   §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         _loc12_ = §§pop();
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            if(!(_loc19_ && this))
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc18_ || param2)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc19_ && param3)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr1389);
                                                                                                                  }
                                                                                                                  §§goto(addr1390);
                                                                                                               }
                                                                                                               §§pop();
                                                                                                               if(!(_loc19_ && param3))
                                                                                                               {
                                                                                                                  addr1241:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr1389);
                                                                                                                  }
                                                                                                                  addr1241:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop72;
                                                                                                                  }
                                                                                                                  addr1339:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1390);
                                                                                                         }
                                                                                                         addr1208:
                                                                                                      }
                                                                                                   }
                                                                                                   loop151:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr1083:
                                                                                                      addr1073:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            if(_loc18_ || this)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop64;
                                                                                                                  addr1097:
                                                                                                               }
                                                                                                               §§goto(addr1705);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1104);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1390);
                                                                                                         continue loop151;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         if(!(_loc18_ || this))
                                                                                                         {
                                                                                                            continue loop81;
                                                                                                         }
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr1083);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop55:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§,i§);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc18_ || this))
                                                                                                                           {
                                                                                                                              continue loop67;
                                                                                                                           }
                                                                                                                           §§goto(addr1208);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push((_loc7_ = this.§4!L§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                           if(_loc18_ || param1)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                              {
                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       addr1188:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       loop60:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             loop56:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr1192:
                                                                                                                                                loop57:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   loop58:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_ && param2)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr1174:
                                                                                                                                                            if(_loc19_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue loop60;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                            do
                                                                                                                                                            {
                                                                                                                                                               _loc5_++;
                                                                                                                                                            }
                                                                                                                                                            while(!(_loc18_ || this));
                                                                                                                                                            
                                                                                                                                                            if(!(_loc19_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  continue loop58;
                                                                                                                                                               }
                                                                                                                                                               continue loop55;
                                                                                                                                                            }
                                                                                                                                                            continue loop57;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1174);
                                                                                                                                                   }
                                                                                                                                                   continue loop56;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr1191:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1181);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1191);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1192);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1188);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1704);
                                                                                                                  }
                                                                                                                  addr1196:
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr1702);
                                                                                                         }
                                                                                                         §§goto(addr1097);
                                                                                                      }
                                                                                                   }
                                                                                                   addr1104:
                                                                                                   addr1110:
                                                                                                }
                                                                                                §§goto(addr1389);
                                                                                             }
                                                                                             §§goto(addr1652);
                                                                                          }
                                                                                          §§goto(addr1669);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1339);
                                                                        }
                                                                        §§goto(addr1356);
                                                                     }
                                                                     §§goto(addr1677);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr1355);
                                                            }
                                                            addr1661:
                                                            §§goto(addr1663);
                                                            §§push(b2Settings.b2_timeToSleep);
                                                            §§goto(addr1705);
                                                         }
                                                         §§goto(addr1661);
                                                      }
                                                      §§goto(addr1288);
                                                   }
                                                   §§goto(addr1663);
                                                }
                                                §§goto(addr1307);
                                             }
                                             §§goto(addr1288);
                                          }
                                          addr1660:
                                          §§goto(addr1661);
                                          §§push(_loc15_);
                                       }
                                       §§goto(addr1640);
                                    }
                                    §§goto(addr1660);
                                 }
                                 addr1251:
                              }
                              §§goto(addr1110);
                           }
                           §§goto(addr1669);
                        }
                        break;
                     }
                     _loc4_ = §§pop();
                     if(_loc18_)
                     {
                        loop52:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!_loc19_)
                           {
                              §§push(param1.§?l§);
                              if(_loc18_ || param2)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc18_)
                                    {
                                       §§push(0);
                                       if(!_loc19_)
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc18_ || this)
                                          {
                                             loop53:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc18_ || param3)
                                                {
                                                   addr481:
                                                   while(true)
                                                   {
                                                      §§push(this.§,i§);
                                                      if(!_loc19_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            (_loc7_ = this.§4!L§[_loc4_]).§8"§();
                                                            if(_loc18_)
                                                            {
                                                               _loc4_++;
                                                            }
                                                            continue loop53;
                                                         }
                                                         if(_loc18_)
                                                         {
                                                            _loc8_.§8"§();
                                                            if(_loc18_ || param2)
                                                            {
                                                               §§push(0);
                                                               if(!_loc19_)
                                                               {
                                                                  addr500:
                                                                  _loc4_ = §§pop();
                                                                  if(!_loc19_)
                                                                  {
                                                                     loop153:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc18_ || param3)
                                                                        {
                                                                           §§push(this.§&z§);
                                                                           if(_loc18_)
                                                                           {
                                                                              addr1044:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(!(_loc19_ && param3))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!(_loc19_ && param3))
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          if(!(_loc19_ && param2))
                                                                                          {
                                                                                             §§goto(addr1360);
                                                                                             addr1068:
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr1660);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    if((_loc6_ = this.§;!j§[_loc4_]).§+!O§() == b2Body.b2_staticBody)
                                                                                    {
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          loop141:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_++;
                                                                                             if(_loc18_ || param2)
                                                                                             {
                                                                                                addr564:
                                                                                                if(!(_loc19_ && param3))
                                                                                                {
                                                                                                   addr571:
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         continue loop153;
                                                                                                      }
                                                                                                      loop105:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_.§#!k§();
                                                                                                         addr578:
                                                                                                         loop106:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc19_ && this))
                                                                                                            {
                                                                                                               if(_loc19_ && param3)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop141;
                                                                                                            }
                                                                                                            loop103:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                               if(!(_loc19_ && param3))
                                                                                                               {
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().a);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr620:
                                                                                                                           §§push(param1.§+z§);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                           }
                                                                                                                           §§pop().a = §§pop() + §§pop();
                                                                                                                           loop104:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          continue loop105;
                                                                                                                                       }
                                                                                                                                       loop129:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.§,b§);
                                                                                                                                          loop130:
                                                                                                                                          for(; _loc18_; while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.§,b§);
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(_loc6_.§,b§);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc19_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.§1!4§);
                                                                                                                                                               if(!(_loc19_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr988:
                                                                                                                                                                  §§pop().y = §§pop() * (§§pop() * §§pop());
                                                                                                                                                                  addr987:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     loop139:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§+z§);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr787:
                                                                                                                                                                           if(_loc18_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                              if(!(_loc19_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(_loc18_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc18_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc18_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr838:
                                                                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr858:
                                                                                                                                                                                                               _loc11_ = §§pop();
                                                                                                                                                                                                               if(_loc18_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop139;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr871:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                             addr892:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc19_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                         addr907:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                     §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * param1.§1!4§);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                                     break loop104;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr915:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                  §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * param1.§1!4§);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                                  loop85:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr758:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                        addr761:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                                                                                           addr766:
                                                                                                                                                                                                                                                                           while(!_loc19_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                 break loop103;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop85;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr781:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1015:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               addr1016:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                                                                                                                  addr1018:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop139;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_.§,b§);
                                                                                                                                                                                                                                                                        break loop130;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr906:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop110:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                                                                                                                         addr1031:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                                                                            continue loop110;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1030:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1018);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                                                                   addr1009:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      addr1010:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1015);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1014:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1018);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr838);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr890:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break loop104;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr758);
                                                                                                                                                                                                                                    §§goto(addr858);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr882:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr907);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr873:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1029);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1030);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr871:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr892);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr882);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1014);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1009);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1018);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr907);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr823:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr871);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr815:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1010);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1016);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr871);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr907);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_.§,b§);
                                                                                                                                                                                 addr1027:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    break loop139;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr787);
                                                                                                                                                                              }
                                                                                                                                                                              addr1025:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr823);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1029);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr989:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1000);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1002);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1003);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr987);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr998);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr988);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr997);
                                                                                                                                             }
                                                                                                                                          })
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.§,b§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                addr998:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                   addr1000:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§1!4§);
                                                                                                                                                      addr1002:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr1003:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            addr1004:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               continue loop130;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().Normalize();
                                                                                                                                             continue loop129;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr989);
                                                                                                                                 }
                                                                                                                                 §§goto(addr915);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              §§goto(addr564);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr758);
                                                                                                                           }
                                                                                                                           addr621:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().a0 = §§pop();
                                                                                                                           break loop105;
                                                                                                                        }
                                                                                                                        addr756:
                                                                                                                     }
                                                                                                                     §§goto(addr620);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr638:
                                                                                                               loop102:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc19_ && param3))
                                                                                                                  {
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(_loc18_ || param3)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§+z§);
                                                                                                                                          if(_loc18_ || param2)
                                                                                                                                          {
                                                                                                                                             if(!(_loc19_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.§,b§);
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr704:
                                                                                                                                                      §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                      addr703:
                                                                                                                                                      continue loop103;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr729:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         break loop102;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr728:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr728);
                                                                                                                                                }
                                                                                                                                                addr727:
                                                                                                                                             }
                                                                                                                                             §§goto(addr729);
                                                                                                                                          }
                                                                                                                                          §§goto(addr703);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr704);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(param1.§+z§);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr727);
                                                                                                                                          §§push(_loc6_.§,b§);
                                                                                                                                       }
                                                                                                                                       §§goto(addr729);
                                                                                                                                    }
                                                                                                                                    break loop102;
                                                                                                                                 }
                                                                                                                                 addr713:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr713);
                                                                                                                              }
                                                                                                                              addr712:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr712);
                                                                                                                           }
                                                                                                                           addr710:
                                                                                                                        }
                                                                                                                        §§goto(addr761);
                                                                                                                     }
                                                                                                                     §§goto(addr753);
                                                                                                                  }
                                                                                                                  addr709:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr710);
                                                                                                                     continue loop102;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  break loop106;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr756);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               if(_loc18_ || param2)
                                                                                                               {
                                                                                                                  if(_loc18_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§goto(addr638);
                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                     }
                                                                                                                     §§goto(addr1031);
                                                                                                                  }
                                                                                                                  §§goto(addr1019);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr766);
                                                                                                         }
                                                                                                         §§goto(addr1005);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr709);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr621);
                                                                                             }
                                                                                             §§goto(addr578);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr890);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(param1.§+z§);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(_loc6_.§,b§);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc18_ || param1)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc18_ || param2)
                                                                                                   {
                                                                                                      _loc9_ = §§pop();
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§goto(addr1025);
                                                                                                         §§push(param1.§+z§);
                                                                                                      }
                                                                                                      §§goto(addr781);
                                                                                                   }
                                                                                                   §§goto(addr873);
                                                                                                }
                                                                                                §§goto(addr815);
                                                                                             }
                                                                                             §§goto(addr1018);
                                                                                          }
                                                                                          §§goto(addr1027);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr906);
                                                                                 }
                                                                              }
                                                                              addr1044:
                                                                           }
                                                                           §§goto(addr1669);
                                                                        }
                                                                        §§goto(addr1251);
                                                                     }
                                                                  }
                                                                  §§goto(addr1241);
                                                               }
                                                               §§goto(addr1073);
                                                            }
                                                            §§goto(addr1677);
                                                         }
                                                         §§goto(addr1068);
                                                      }
                                                      §§goto(addr1669);
                                                   }
                                                   addr481:
                                                }
                                                break;
                                             }
                                             §§goto(addr1643);
                                          }
                                          §§goto(addr1666);
                                       }
                                       §§goto(addr500);
                                    }
                                    §§goto(addr1368);
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(_loc18_ || this)
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc19_ && param3)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(_loc18_ || this)
                                             {
                                                §§push(this.§,i§);
                                                if(!(_loc19_ && param2))
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      (_loc7_ = this.§4!L§[_loc5_]).SolveVelocityConstraints(param1);
                                                      if(_loc18_)
                                                      {
                                                         _loc5_++;
                                                      }
                                                      continue;
                                                   }
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         _loc8_.SolveVelocityConstraints();
                                                         if(_loc18_)
                                                         {
                                                            _loc4_++;
                                                            if(!_loc19_)
                                                            {
                                                               continue loop52;
                                                            }
                                                            §§goto(addr1358);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr1241);
                                                      addr427:
                                                   }
                                                   §§goto(addr1110);
                                                }
                                                else
                                                {
                                                   §§goto(addr1044);
                                                }
                                             }
                                             §§goto(addr1643);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr481);
                                    }
                                    §§goto(addr1669);
                                 }
                              }
                              §§goto(addr1044);
                           }
                           break;
                        }
                        §§goto(addr1196);
                     }
                     §§goto(addr427);
                  }
                  §§goto(addr1677);
               }
               §§goto(addr500);
            }
            §§goto(addr388);
         }
         §§goto(addr315);
      }
      
      public function §!!a§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:* = false;
         if(!_loc13_)
         {
            §§push(this.§ !"§);
            if(_loc14_ || _loc2_)
            {
               §§pop().§1o§(param1,this.§1f§,this.§3!Z§,this.§=!6§);
               addr55:
               §§push(this.§ !"§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(_loc14_ || this)
            {
               _loc2_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc13_)
               {
                  §§push(this.§,i§);
                  loop1:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(0);
                           if(_loc14_)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc13_ && param1))
                                    {
                                       if(_loc14_ || _loc2_)
                                       {
                                          §§push(param1.§?l§);
                                          if(_loc14_)
                                          {
                                             if(!_loc13_)
                                             {
                                                if(_loc13_)
                                                {
                                                   continue loop1;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      if(_loc14_ || this)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            addr109:
                                                            _loc2_ = §§pop();
                                                            if(_loc14_ || this)
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        addr746:
                                                                        if(_loc2_ < this.§&z§)
                                                                        {
                                                                           if((_loc6_ = this.§;!j§[_loc2_]).§+!O§() == b2Body.b2_staticBody)
                                                                           {
                                                                              if(_loc14_ || this)
                                                                              {
                                                                                 addr270:
                                                                                 _loc2_++;
                                                                                 if(_loc14_ || param1)
                                                                                 {
                                                                                    if(_loc14_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          if(_loc14_ || this)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                addr296:
                                                                                                _loc6_.§#!k§();
                                                                                                if(!(_loc13_ && param1))
                                                                                                {
                                                                                                   if(_loc14_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         §§goto(addr270);
                                                                                                      }
                                                                                                      addr726:
                                                                                                      §§push(_loc7_);
                                                                                                      §§push(_loc7_);
                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                      {
                                                                                                         addr724:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         §§push(_loc8_);
                                                                                                      }
                                                                                                      addr745:
                                                                                                      if(§§pop() + §§pop() * _loc8_ > b2Settings.b2_maxTranslationSquared)
                                                                                                      {
                                                                                                         addr733:
                                                                                                         _loc6_.§,b§.Normalize();
                                                                                                         addr711:
                                                                                                         addr702:
                                                                                                         addr700:
                                                                                                         §§push(_loc6_.§,b§);
                                                                                                         §§push(_loc6_.§,b§.x);
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            addr710:
                                                                                                            §§push(§§pop() * (b2Settings.b2_maxTranslation * param1.§1!4§));
                                                                                                         }
                                                                                                         §§pop().x = §§pop();
                                                                                                         addr731:
                                                                                                         addr734:
                                                                                                         addr712:
                                                                                                         §§push(_loc6_.§,b§);
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               §§push(_loc6_.§,b§);
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                  {
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(b2Settings.b2_maxTranslation);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           if(!(_loc13_ && param1))
                                                                                                                           {
                                                                                                                              §§push(param1.§1!4§);
                                                                                                                              if(!(_loc13_ && this))
                                                                                                                              {
                                                                                                                                 addr685:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    addr688:
                                                                                                                                    §§pop().y = §§pop() * §§pop();
                                                                                                                                    if(!(_loc13_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr521:
                                                                                                                                       §§push(param1.§+z§);
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc14_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.m_angularVelocity);
                                                                                                                                                if(!(_loc13_ && this))
                                                                                                                                                {
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc13_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(_loc14_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     addr573:
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc14_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr589:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc13_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc13_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                       if(_loc14_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr616:
                                                                                                                                                                                                if(_loc6_.m_angularVelocity < 0)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr620:
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                      if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr638:
                                                                                                                                                                                                         §§push(§§pop() * param1.§1!4§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                      _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                      addr485:
                                                                                                                                                                                                      _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                                                                                                                                      addr484:
                                                                                                                                                                                                      addr492:
                                                                                                                                                                                                      addr489:
                                                                                                                                                                                                      addr482:
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr445:
                                                                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr466:
                                                                                                                                                                                                            addr465:
                                                                                                                                                                                                            addr452:
                                                                                                                                                                                                            addr451:
                                                                                                                                                                                                            addr450:
                                                                                                                                                                                                            addr448:
                                                                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                                                                            §§push(_loc6_.m_sweep.c.x);
                                                                                                                                                                                                            §§push(param1.§+z§);
                                                                                                                                                                                                            if(_loc14_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr464:
                                                                                                                                                                                                               §§push(§§pop() * _loc6_.§,b§.x);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc13_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr371:
                                                                                                                                                                                                                     §§push(_loc6_.m_sweep.c);
                                                                                                                                                                                                                     if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                                                                           if(!(_loc13_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param1.§+z§);
                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_.§,b§);
                                                                                                                                                                                                                                       if(!(_loc13_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                          if(_loc14_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr423:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc14_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr431:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   addr434:
                                                                                                                                                                                                                                                   if(_loc14_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc14_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc14_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                               if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().a);
                                                                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr362:
                                                                                                                                                                                                                                                                        §§push(param1.§+z§);
                                                                                                                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().a = §§pop() + §§pop();
                                                                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr296);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr616);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr434);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr485);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr362);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr484);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr492);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr445);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr371);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr485);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr466);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr465);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr464);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr423);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr452);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr431);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr451);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr450);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr448);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr731);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr734);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr520:
                                                                                                                                                                                                            §§goto(addr489);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr482);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr620);
                                                                                                                                                                                                      addr642:
                                                                                                                                                                                                      addr507:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr638);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * param1.§1!4§);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                §§goto(addr520);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr485);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr743:
                                                                                                                                                                                          §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr616);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr744:
                                                                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                                                                    §§goto(addr745);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr616);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr726);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr589);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr724);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr726);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr616);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr726);
                                                                                                                                                }
                                                                                                                                                §§goto(addr589);
                                                                                                                                             }
                                                                                                                                             §§goto(addr743);
                                                                                                                                          }
                                                                                                                                          §§goto(addr726);
                                                                                                                                       }
                                                                                                                                       §§goto(addr616);
                                                                                                                                    }
                                                                                                                                    §§goto(addr712);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr710);
                                                                                                                        }
                                                                                                                        §§goto(addr685);
                                                                                                                     }
                                                                                                                     §§goto(addr711);
                                                                                                                  }
                                                                                                                  §§goto(addr688);
                                                                                                               }
                                                                                                               §§goto(addr702);
                                                                                                            }
                                                                                                            §§goto(addr733);
                                                                                                         }
                                                                                                         §§goto(addr700);
                                                                                                      }
                                                                                                      §§goto(addr521);
                                                                                                   }
                                                                                                   §§goto(addr688);
                                                                                                }
                                                                                                §§goto(addr466);
                                                                                             }
                                                                                             §§goto(addr746);
                                                                                          }
                                                                                          §§goto(addr642);
                                                                                       }
                                                                                       §§goto(addr507);
                                                                                    }
                                                                                    §§goto(addr362);
                                                                                 }
                                                                                 §§goto(addr296);
                                                                              }
                                                                              §§goto(addr485);
                                                                           }
                                                                           §§push(param1.§+z§);
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(_loc6_.§,b§);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc14_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             §§push(param1.§+z§);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                addr741:
                                                                                                §§goto(addr743);
                                                                                                §§push(_loc6_.§,b§.y);
                                                                                             }
                                                                                             §§goto(addr744);
                                                                                          }
                                                                                          §§goto(addr520);
                                                                                       }
                                                                                       §§goto(addr724);
                                                                                    }
                                                                                    §§goto(addr616);
                                                                                 }
                                                                                 §§goto(addr726);
                                                                              }
                                                                              §§goto(addr741);
                                                                           }
                                                                           §§goto(addr573);
                                                                        }
                                                                        break;
                                                                     }
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        addr125:
                                                                        while(true)
                                                                        {
                                                                           if(_loc14_ || _loc2_)
                                                                           {
                                                                              §§push(this.§,i§);
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       addr138:
                                                                                       break loop4;
                                                                                    }
                                                                                    _loc2_++;
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr155:
                                                                                 this.§4!L§[_loc3_].SolveVelocityConstraints(param1);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       while(_loc14_ || this)
                                                                                       {
                                                                                          §§push(0);
                                                                                       }
                                                                                       continue loop2;
                                                                                       addr181:
                                                                                    }
                                                                                    if(!(_loc14_ || this))
                                                                                    {
                                                                                       break loop10;
                                                                                    }
                                                                                    if(!(_loc14_ || param1))
                                                                                    {
                                                                                       _loc2_++;
                                                                                       break loop10;
                                                                                       addr213:
                                                                                    }
                                                                                    _loc3_++;
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc13_)
                                                                                       {
                                                                                       }
                                                                                       continue loop6;
                                                                                       §§goto(addr171);
                                                                                    }
                                                                                    addr171:
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                              addr134:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr155);
                                                               }
                                                               §§goto(addr138);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr746);
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   break;
                                                }
                                                _loc4_.SolveVelocityConstraints();
                                                §§goto(addr181);
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr746);
                                       }
                                       §§goto(addr125);
                                    }
                                    §§goto(addr109);
                                 }
                                 §§push(0.75);
                                 if(_loc14_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!_loc13_)
                                 {
                                    addr1014:
                                    _loc2_ = 0;
                                    addr1015:
                                    §§push(_loc2_);
                                    if(_loc14_ || _loc3_)
                                    {
                                       §§push(param1.§@!C§);
                                       if(_loc14_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc14_)
                                             {
                                                if(!_loc13_)
                                                {
                                                   if(!(_loc13_ && _loc2_))
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         §§goto(addr789);
                                                      }
                                                      §§goto(addr956);
                                                   }
                                                   §§goto(addr846);
                                                }
                                                §§goto(addr859);
                                             }
                                             addr789:
                                             this.§;!q§(_loc4_.§#I§);
                                             if(_loc13_ && this)
                                             {
                                                addr932:
                                                if(!(_loc13_ && this))
                                                {
                                                   §§push(_loc11_);
                                                   if(!(_loc13_ && this))
                                                   {
                                                      if(!(_loc13_ && this))
                                                      {
                                                         addr819:
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc13_ && _loc2_))
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  if(_loc14_ || _loc2_)
                                                                  {
                                                                     if(_loc14_ || this)
                                                                     {
                                                                        addr844:
                                                                        if(§§pop())
                                                                        {
                                                                           addr846:
                                                                           if(!_loc13_)
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 if(!(_loc13_ && param1))
                                                                                 {
                                                                                    addr857:
                                                                                    §§goto(addr789);
                                                                                 }
                                                                                 addr987:
                                                                                 §§push(_loc3_);
                                                                                 if(!(_loc13_ && _loc2_))
                                                                                 {
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       addr894:
                                                                                       if(§§pop() >= this.§,i§)
                                                                                       {
                                                                                          addr895:
                                                                                          if(!(_loc13_ && param1))
                                                                                          {
                                                                                             addr903:
                                                                                             §§push(_loc10_);
                                                                                             if(!(_loc13_ && _loc2_))
                                                                                             {
                                                                                                addr911:
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc14_ || param1)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr922:
                                                                                                         if(_loc14_ || this)
                                                                                                         {
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               §§goto(addr932);
                                                                                                            }
                                                                                                            addr990:
                                                                                                            _loc11_ = §§pop();
                                                                                                            addr986:
                                                                                                            _loc3_ = 0;
                                                                                                            §§goto(addr987);
                                                                                                            addr991:
                                                                                                         }
                                                                                                         addr945:
                                                                                                         if(_loc14_ || this)
                                                                                                         {
                                                                                                            addr955:
                                                                                                            _loc11_ = Boolean(Boolean(§§pop()));
                                                                                                            _loc3_++;
                                                                                                            addr942:
                                                                                                            §§goto(addr987);
                                                                                                            addr953:
                                                                                                            addr954:
                                                                                                            addr956:
                                                                                                         }
                                                                                                         addr982:
                                                                                                         _loc12_ = §§pop();
                                                                                                         §§push(Boolean(_loc11_));
                                                                                                         if(!(_loc13_ && this))
                                                                                                         {
                                                                                                            addr968:
                                                                                                            §§goto(addr953);
                                                                                                            §§push(§§pop() && _loc12_);
                                                                                                         }
                                                                                                         §§goto(addr969);
                                                                                                         addr983:
                                                                                                      }
                                                                                                      §§goto(addr844);
                                                                                                   }
                                                                                                   §§goto(addr968);
                                                                                                }
                                                                                                §§goto(addr969);
                                                                                             }
                                                                                             §§goto(addr954);
                                                                                          }
                                                                                          §§goto(addr970);
                                                                                       }
                                                                                       §§goto(addr982);
                                                                                       §§push(Boolean(this.§4!L§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                    }
                                                                                    §§goto(addr1014);
                                                                                 }
                                                                                 §§goto(addr986);
                                                                              }
                                                                              §§goto(addr942);
                                                                           }
                                                                           §§goto(addr895);
                                                                        }
                                                                        _loc2_++;
                                                                        addr859:
                                                                        if(_loc14_ || _loc3_)
                                                                        {
                                                                           if(!(_loc13_ && _loc2_))
                                                                           {
                                                                              if(!(_loc13_ && this))
                                                                              {
                                                                                 §§goto(addr1014);
                                                                              }
                                                                              §§goto(addr1015);
                                                                           }
                                                                           §§goto(addr991);
                                                                        }
                                                                        §§goto(addr983);
                                                                     }
                                                                     addr1011:
                                                                     _loc10_ = §§pop();
                                                                     §§goto(addr990);
                                                                     §§push(true);
                                                                     addr1012:
                                                                  }
                                                                  §§goto(addr945);
                                                               }
                                                               §§goto(addr903);
                                                            }
                                                            §§goto(addr911);
                                                         }
                                                         §§goto(addr922);
                                                      }
                                                      §§goto(addr955);
                                                   }
                                                   §§goto(addr819);
                                                }
                                                §§goto(addr1012);
                                             }
                                             return;
                                          }
                                          §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                          if(_loc14_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          §§goto(addr1011);
                                       }
                                       §§goto(addr894);
                                    }
                                    §§goto(addr987);
                                 }
                                 §§goto(addr857);
                              }
                           }
                           §§goto(addr746);
                        }
                     }
                     else
                     {
                        this.§4!L§[_loc2_].InitVelocityConstraints(param1);
                     }
                     §§goto(addr213);
                  }
               }
               §§goto(addr746);
            }
         }
         §§goto(addr55);
      }
      
      public function §;!q§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!(_loc7_ && _loc2_))
         {
            if(this.§;!!§ == null)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!Z§)
         {
            _loc3_ = this.§1f§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(_loc6_)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  _loc5_ = §§pop();
                  addr151:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr148);
         }
      }
      
      public function §"[§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            param1.§7<§ = this.§&z§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§&z§ + 1;
         _loc3_.§&z§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§&z§;
         this.§;!j§[_loc2_] = param1;
      }
      
      public function §2"2§(param1:b2Contact) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§3!Z§ + 1;
         _loc3_.§3!Z§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§3!Z§;
         this.§1f§[_loc2_] = param1;
      }
      
      public function §6E§(param1:b2Joint) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§,i§ + 1;
         _loc3_.§,i§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§,i§;
         this.§4!L§[_loc2_] = param1;
      }
   }
}
