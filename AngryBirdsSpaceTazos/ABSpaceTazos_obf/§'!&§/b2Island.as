package §'!&§
{
   import §3c§.*;
   import §9t§.*;
   import §=!n§.*;
   import §@!'§.*;
   import §`X§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §0!R§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0!R§ = new b2ContactImpulse();
         }
      }
      
      private var § B§;
      
      private var §?!n§:b2ContactListener;
      
      private var §4!<§:b2ContactSolver;
      
      b2internal var §5K§:Vector.<b2Body>;
      
      b2internal var get:Vector.<b2Contact>;
      
      b2internal var §>!o§:Vector.<b2Joint>;
      
      b2internal var §"s§:int;
      
      b2internal var §1!s§:int;
      
      b2internal var §3!G§:int;
      
      private var §""D§:int;
      
      b2internal var §#P§:int;
      
      b2internal var §!!v§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§5K§ = new Vector.<b2Body>();
               while(!(_loc1_ && _loc1_))
               {
                  this.get = new Vector.<b2Contact>();
                  do
                  {
                     this.§>!o§ = new Vector.<b2Joint>();
                  }
                  while(_loc1_);
                  
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §>`§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(_loc8_)
         {
            this.§""D§ = param1;
            loop0:
            while(true)
            {
               this.§#P§ = param2;
               loop1:
               while(true)
               {
                  this.§!!v§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§"s§ = 0;
                     while(!_loc9_)
                     {
                        this.§3!G§ = 0;
                        loop4:
                        for(; !_loc9_; if(!(_loc8_ || param3))
                        {
                           continue;
                        },§§goto(addr208))
                        {
                           this.§1!s§ = 0;
                           while(true)
                           {
                              this.§ B§ = param4;
                              continue loop2;
                              addr225:
                              if(_loc9_ && param3)
                              {
                                 continue;
                              }
                              if(!_loc8_)
                              {
                                 continue loop0;
                              }
                              this.§4!<§ = param6;
                              loop8:
                              while(true)
                              {
                                 _loc7_ = int(this.§5K§.length);
                                 if(!(_loc9_ && this))
                                 {
                                    if(_loc8_)
                                    {
                                       continue loop4;
                                    }
                                    addr218:
                                    while(!(_loc9_ && param2))
                                    {
                                       §§goto(addr225);
                                       continue loop8;
                                    }
                                    continue loop2;
                                 }
                              }
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
                                       if(§§pop() < §§pop())
                                       {
                                          this.§5K§[_loc7_] = null;
                                          break;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          §§push(int(this.get.length));
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
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §§push(param2);
                                                         loop17:
                                                         while(_loc8_)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               break loop16;
                                                            }
                                                            while(_loc8_ || param3)
                                                            {
                                                               §§push(int(this.§>!o§.length));
                                                               loop19:
                                                               while(!(_loc9_ && param2))
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_ && param2)
                                                                     {
                                                                        _loc7_++;
                                                                     }
                                                                     else
                                                                     {
                                                                        addr163:
                                                                     }
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc8_)
                                                                        {
                                                                           if(_loc9_ && param1)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(param3);
                                                                           if(_loc9_ && param3)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(!(_loc8_ || this))
                                                                              {
                                                                                 §§goto(addr74);
                                                                              }
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    if(_loc8_ || param3)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    break loop11;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           this.§>!o§[_loc7_] = null;
                                                                           §§goto(addr97);
                                                                           continue loop17;
                                                                        }
                                                                        continue loop19;
                                                                        addr88:
                                                                     }
                                                                     continue loop16;
                                                                     addr81:
                                                                     if(!(_loc8_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr88);
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop10;
                                                               loop23:
                                                               while(!(_loc9_ && param1))
                                                               {
                                                                  _loc7_++;
                                                                  while(_loc9_ && param2)
                                                                  {
                                                                     continue loop23;
                                                                     §§goto(addr104);
                                                                  }
                                                                  addr104:
                                                                  §§goto(addr81);
                                                               }
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop13;
                                                   }
                                                   this.get[_loc7_] = null;
                                                   §§goto(addr163);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    _loc7_++;
                                    continue loop9;
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr213);
      }
      
      public function §["5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§"s§ = 0;
         }
         while(true)
         {
            this.§3!G§ = 0;
            while(!(_loc1_ && _loc2_))
            {
               this.§1!s§ = 0;
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §3!N§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         if(!(_loc19_ && this))
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§"s§)
         {
            if((_loc6_ = this.§5K§[_loc4_]).§@!N§() != b2Body.b2_dynamicBody)
            {
               if(_loc18_)
               {
                  loop19:
                  while(true)
                  {
                     _loc4_++;
                     if(_loc18_)
                     {
                        if(_loc18_ || param3)
                        {
                           if(_loc18_)
                           {
                              if(!_loc19_)
                              {
                                 if(false)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc6_.m_angularVelocity);
                                       if(!(_loc19_ && param3))
                                       {
                                          §§push(b2Math);
                                          §§push(1);
                                          §§push(param1.§2^§);
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop() * _loc6_.§=!y§);
                                          }
                                          §§push(§§pop() * §§pop().§`J§(§§pop() - §§pop(),0,1));
                                       }
                                       §§pop().m_angularVelocity = §§pop();
                                       addr124:
                                       while(_loc18_ || param3)
                                       {
                                          continue loop19;
                                       }
                                       loop17:
                                       while(true)
                                       {
                                          §§push(_loc6_.§?o§);
                                          if(!(_loc19_ && param1))
                                          {
                                             if(!_loc19_)
                                             {
                                                §§push(b2Math);
                                                §§push(1);
                                                §§push(param1.§2^§);
                                                if(_loc18_)
                                                {
                                                   §§push(§§pop() * _loc6_.§[5§);
                                                }
                                                §§push(§§pop().§`J§(§§pop() - §§pop(),0,1));
                                                if(!(_loc19_ && this))
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      addr166:
                                                      §§pop().§-!&§(§§pop());
                                                      while(_loc19_ && this)
                                                      {
                                                         §§goto(addr166);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop2;
                                                         §§goto(addr167);
                                                      }
                                                      addr167:
                                                      addr174:
                                                   }
                                                   else
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(param1.§2^§);
                                                         if(_loc18_ || param2)
                                                         {
                                                            §§push(param2.x);
                                                            if(!(_loc19_ && this))
                                                            {
                                                               §§push(_loc6_.§6!W§);
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_.§#!u§);
                                                                  addr316:
                                                                  addr274:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr317:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr318:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  addr274:
                                                                  if(_loc19_ && param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr282:
                                                                  §§push(§§pop() * (§§pop() + §§pop()));
                                                                  if(!_loc18_)
                                                                  {
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr322:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_.§?o§);
                                                                              addr206:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_.§?o§);
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§push(param1.§2^§);
                                                                                       if(!(_loc19_ && param2))
                                                                                       {
                                                                                          §§push(param2.y);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             if(_loc18_ || param2)
                                                                                             {
                                                                                                §§push(_loc6_.§6!W§);
                                                                                                if(_loc18_ || param3)
                                                                                                {
                                                                                                   if(_loc18_ || param2)
                                                                                                   {
                                                                                                      §§push(_loc6_.§#!u§);
                                                                                                      if(_loc18_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc18_ || param2)
                                                                                                         {
                                                                                                            §§goto(addr274);
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr316);
                                                                                                      }
                                                                                                      §§goto(addr317);
                                                                                                   }
                                                                                                   §§goto(addr318);
                                                                                                }
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             addr319:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr282);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              addr286:
                                                                              addr287:
                                                                              §§pop().y = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 §§push(_loc6_.m_angularVelocity);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(param1.§2^§);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(_loc6_.§<!%§);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          addr200:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             §§push(_loc6_.§8<§);
                                                                                          }
                                                                                          §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                          continue loop17;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr200);
                                                                                 §§goto(addr286);
                                                                              }
                                                                              §§goto(addr166);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr320:
                                                                  }
                                                                  §§goto(addr286);
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                   }
                                                   §§goto(addr287);
                                                }
                                                §§goto(addr286);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr291:
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr206);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              addr329:
                              while(true)
                              {
                              }
                              §§goto(addr291);
                           }
                           §§goto(addr322);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr124);
                  }
               }
               else
               {
                  addr325:
                  _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                  addr80:
               }
               §§goto(addr329);
            }
            else
            {
               §§push(_loc6_.m_sweep);
               if(!_loc19_)
               {
                  §§pop().c0.SetV(_loc6_.m_sweep.c);
                  if(_loc18_)
                  {
                     §§goto(addr80);
                  }
                  §§goto(addr174);
               }
            }
            §§goto(addr325);
         }
         if(_loc18_ || param1)
         {
            §§push(this.§4!<§);
            if(_loc18_ || param2)
            {
               §§pop().§>`§(param1,this.get,this.§3!G§,this.§ B§);
               addr358:
               §§push(this.§4!<§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(!(_loc19_ && this))
            {
               §§push(0);
               if(!(_loc19_ && this))
               {
                  _loc4_ = §§pop();
                  if(_loc18_ || param1)
                  {
                     loop21:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!(_loc19_ && this))
                        {
                           §§push(this.§1!s§);
                           if(_loc18_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§>!o§[_loc4_]).InitVelocityConstraints(param1);
                                 if(!(_loc19_ && param2))
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(_loc18_)
                              {
                                 §§push(0);
                                 if(_loc18_ || param2)
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc19_ && param1))
                                    {
                                       loop147:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc18_)
                                          {
                                             addr553:
                                             §§push(param1.§3Y§);
                                             if(!(_loc19_ && this))
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc18_ || this)
                                                   {
                                                      addr512:
                                                      §§push(0);
                                                      if(!_loc19_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc19_)
                                                               {
                                                                  break loop147;
                                                               }
                                                               addr1128:
                                                               _loc4_ = §§pop();
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  loop142:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc18_)
                                                                     {
                                                                        addr1436:
                                                                        loop78:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§3]§);
                                                                           if(_loc18_)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop79:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc12_ = §§pop();
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             loop80:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(true);
                                                                                                if(!(_loc19_ && param1))
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      continue loop79;
                                                                                                   }
                                                                                                   _loc13_ = §§pop();
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc18_ || param1)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr1274:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§1!s§);
                                                                                                                        if(!(_loc19_ && param3))
                                                                                                                        {
                                                                                                                           addr1283:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(!(_loc19_ && param2))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  break loop80;
                                                                                                                                                               }
                                                                                                                                                               addr1451:
                                                                                                                                                               loop87:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_++;
                                                                                                                                                                     if(!(_loc18_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        break loop79;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop142;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1734:
                                                                                                                                                                     if(_loc15_ >= b2Settings.b2_timeToSleep)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        break loop79;
                                                                                                                                                                     }
                                                                                                                                                                     break loop79;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr1441:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr1442:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.§6!G§(_loc8_.§+"'§);
                                                                                                                                                                           continue loop87;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr1319:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1744);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1451);
                                                                                                                                                }
                                                                                                                                                addr1302:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1415);
                                                                                                                                          }
                                                                                                                                          addr1294:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1302);
                                                                                                                                    }
                                                                                                                                    addr1286:
                                                                                                                                 }
                                                                                                                                 break loop79;
                                                                                                                              }
                                                                                                                              §§push((_loc7_ = this.§>!o§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(_loc18_ || param2)
                                                                                                                                 {
                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                    if(_loc18_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       loop92:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   loop93:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      loop94:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(!(_loc19_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr1238:
                                                                                                                                                                  if(!(_loc18_ || param3))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop92;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop94;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop94;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop93;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1238);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1269:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1245);
                                                                                                                                             }
                                                                                                                                             addr1267:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1269);
                                                                                                                                       }
                                                                                                                                       addr1259:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1224);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1259);
                                                                                                                              }
                                                                                                                              §§goto(addr1267);
                                                                                                                           }
                                                                                                                           addr1283:
                                                                                                                        }
                                                                                                                        addr1725:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                           {
                                                                                                                              if(_loc18_ || param3)
                                                                                                                              {
                                                                                                                                 §§goto(addr1734);
                                                                                                                              }
                                                                                                                              §§goto(addr1755);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push((_loc6_ = this.§5K§[_loc4_]).§@!N§());
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(b2Body.b2_staticBody);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          loop106:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc4_++;
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      loop107:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(b2Math.§+!G§(_loc15_,_loc6_.§;",§));
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc19_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                  loop124:
                                                                                                                                                                  while(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     loop125:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc18_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc19_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop107;
                                                                                                                                                                              }
                                                                                                                                                                              addr1712:
                                                                                                                                                                              loop109:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1698:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.§0" §);
                                                                                                                                                                                    addr1700:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(b2Body.§!"B§);
                                                                                                                                                                                       addr1702:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() & §§pop());
                                                                                                                                                                                          addr1703:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             addr1704:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                                                                loop120:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   loop121:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1707:
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                         loop123:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1671:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                  §§goto(addr1671);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1672:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop111:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop121;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop119:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop120;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              loop117:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(b2Math.§<"E§(_loc6_.§?o§,_loc6_.§?o§));
                                                                                                                                                                                                                                 addr1640:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop111;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                       if(!(_loc18_ || param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop119;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                                                                          continue loop109;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1711:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop117;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop120;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1693:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                              §§push(_loc6_.§;",§);
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + param1.§2^§);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().§;",§ = §§pop();
                                                                                                                                                                                                                              continue loop125;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           loop118:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc6_.§;",§ = 0;
                                                                                                                                                                                                                              addr1663:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1613:
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc18_ || this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop123;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop118;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop124;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1632:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1708);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1696);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1613:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1613);
                                                                                                                                                                                                                                 continue loop118;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1640);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1650);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop121;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1707);
                                                                                                                                                                                                                     addr1688:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1707);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1707);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1693);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1671);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1708:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1688);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1663);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1621);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop106;
                                                                                                                                                                  addr1559:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr1710:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1711);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1672);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1613);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1713);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr1536:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1559);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1632);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.§0" §);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr1488:
                                                                                                                                          §§push(b2Body.§!"B§);
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             addr1497:
                                                                                                                                             §§push(§§pop() & §§pop());
                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc19_ && param3))
                                                                                                                                                      {
                                                                                                                                                         _loc6_.§;",§ = 0;
                                                                                                                                                         if(_loc18_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1710);
                                                                                                                                                            §§push(0);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1712);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1536);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1698);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1704);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1703);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1702);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1700);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1497);
                                                                                                                              }
                                                                                                                              §§goto(addr1488);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1274:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(this.§"s§);
                                                                                                            }
                                                                                                            continue;
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§goto(addr1725);
                                                                                                            }
                                                                                                            break loop78;
                                                                                                         }
                                                                                                         §§goto(addr1442);
                                                                                                      }
                                                                                                      §§goto(addr1329);
                                                                                                   }
                                                                                                   §§goto(addr1431);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr1451);
                                                                                             }
                                                                                          }
                                                                                          addr1183:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr1783);
                                                                                 }
                                                                                 §§goto(addr1294);
                                                                              }
                                                                              §§goto(addr1441);
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              §§goto(addr1783);
                                                                           }
                                                                           else
                                                                           {
                                                                              (_loc6_ = this.§5K§[_loc4_]).SetAwake(false);
                                                                              if(_loc18_)
                                                                              {
                                                                                 _loc4_++;
                                                                              }
                                                                              §§goto(addr1755);
                                                                           }
                                                                        }
                                                                        addr1436:
                                                                     }
                                                                     §§goto(addr1780);
                                                                  }
                                                               }
                                                               §§goto(addr1339);
                                                            }
                                                            addr541:
                                                         }
                                                         §§goto(addr1454);
                                                      }
                                                      addr573:
                                                      _loc4_ = §§pop();
                                                      if(_loc18_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc19_)
                                                            {
                                                               break loop21;
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr1436);
                                                         addr1110:
                                                      }
                                                      §§goto(addr1339);
                                                   }
                                                   §§goto(addr1431);
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!_loc19_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!_loc19_)
                                                         {
                                                            loop155:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§1!s§);
                                                                     if(!(_loc19_ && param3))
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           (_loc7_ = this.§>!o§[_loc5_]).SolveVelocityConstraints(param1);
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              _loc5_++;
                                                                           }
                                                                           continue loop155;
                                                                        }
                                                                        if(!_loc19_)
                                                                        {
                                                                           _loc8_.SolveVelocityConstraints();
                                                                           if(!_loc19_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc4_++;
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop147;
                                                                              }
                                                                              §§goto(addr1286);
                                                                              addr489:
                                                                           }
                                                                           §§goto(addr1446);
                                                                        }
                                                                        §§goto(addr1744);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr1283);
                                                                  addr473:
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr1274);
                                                         }
                                                         §§goto(addr489);
                                                      }
                                                      addr443:
                                                   }
                                                   §§goto(addr473);
                                                }
                                             }
                                             while(§§pop() >= §§pop())
                                             {
                                                if(!_loc19_)
                                                {
                                                   _loc8_.§8!,§();
                                                   if(_loc18_ || param2)
                                                   {
                                                      §§push(0);
                                                      if(_loc18_ || param3)
                                                      {
                                                         §§goto(addr573);
                                                      }
                                                      §§goto(addr1780);
                                                   }
                                                   §§goto(addr1319);
                                                }
                                                §§goto(addr1446);
                                             }
                                             break;
                                             §§goto(addr1128);
                                             addr553:
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§1!s§);
                                          if(!(_loc19_ && param2))
                                          {
                                             §§goto(addr553);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc18_)
                                             {
                                                §§push(0);
                                                if(_loc18_)
                                                {
                                                   §§goto(addr1128);
                                                }
                                                §§goto(addr1274);
                                             }
                                             §§goto(addr1183);
                                          }
                                          else
                                          {
                                             if((_loc6_ = this.§5K§[_loc4_]).§@!N§() == b2Body.b2_staticBody)
                                             {
                                                if(_loc18_ || param3)
                                                {
                                                   loop75:
                                                   while(true)
                                                   {
                                                      _loc4_++;
                                                      if(_loc18_)
                                                      {
                                                         addr652:
                                                         if(_loc18_)
                                                         {
                                                            if(false)
                                                            {
                                                               loop69:
                                                               while(true)
                                                               {
                                                                  _loc6_.§6!+§();
                                                                  addr659:
                                                                  loop70:
                                                                  while(true)
                                                                  {
                                                                     if(_loc18_)
                                                                     {
                                                                        if(!_loc19_)
                                                                        {
                                                                           if(_loc19_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop75;
                                                                        }
                                                                        loop67:
                                                                        while(true)
                                                                        {
                                                                           if(_loc18_ || param2)
                                                                           {
                                                                              addr801:
                                                                              §§push(_loc6_.m_sweep);
                                                                              if(!(_loc19_ && param1))
                                                                              {
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       §§push(_loc6_.m_sweep);
                                                                                       if(!(_loc19_ && param2))
                                                                                       {
                                                                                          §§push(§§pop().a);
                                                                                          if(!(_loc19_ && this))
                                                                                          {
                                                                                             §§push(param1.§2^§);
                                                                                             if(!(_loc19_ && param2))
                                                                                             {
                                                                                                §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§pop().a = §§pop();
                                                                                             while(_loc18_ || param2)
                                                                                             {
                                                                                                continue loop69;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc19_ && param2))
                                                                                                {
                                                                                                   addr873:
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc19_ && param3))
                                                                                                      {
                                                                                                         addr897:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                            break loop67;
                                                                                                            §§goto(addr897);
                                                                                                         }
                                                                                                         addr831:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         loop25:
                                                                                                         for(; _loc18_; if(!(_loc18_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         },§§push(Number(§§pop())),if(_loc18_)
                                                                                                         {
                                                                                                            §§goto(addr934);
                                                                                                         },§§goto(addr987))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     addr1091:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        addr1092:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr917:
                                                                                                                     if(_loc18_ || this)
                                                                                                                     {
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.§?o§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().Normalize();
                                                                                                                                 addr1100:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.§?o§);
                                                                                                                                    loop37:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.§?o§);
                                                                                                                                       addr1071:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          addr1072:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(b2Settings.b2_maxTranslation);
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§,t§);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                                addr1078:
                                                                                                                                             }
                                                                                                                                             addr1079:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr1080:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   continue loop37;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1097:
                                                                                                                        }
                                                                                                                        §§goto(addr898);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr1107:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr1108);
                                                                                                         }
                                                                                                      }
                                                                                                      addr1109:
                                                                                                   }
                                                                                                   §§goto(addr996);
                                                                                                }
                                                                                                §§goto(addr1018);
                                                                                             }
                                                                                             addr718:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().a0 = §§pop();
                                                                                             addr830:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.m_sweep);
                                                                                                addr805:
                                                                                                addr826:
                                                                                                while(_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                      addr810:
                                                                                                      addr729:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().c);
                                                                                                         addr811:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr812:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.§2^§);
                                                                                                               addr814:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.§?o§);
                                                                                                                  addr816:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr817:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr818:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr819:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              break loop70;
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
                                                                                                         §§push(§§pop().c);
                                                                                                         if(!(_loc18_ || this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                         if(!(_loc19_ && param3))
                                                                                                         {
                                                                                                            §§push(§§pop().c);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§push(param1.§2^§);
                                                                                                                     if(_loc18_ || param2)
                                                                                                                     {
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.§?o§);
                                                                                                                           if(!(_loc19_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr778:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    addr786:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                    {
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       continue loop67;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr818);
                                                                                                                                 }
                                                                                                                                 §§goto(addr819);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr817);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr816);
                                                                                                                           }
                                                                                                                           §§goto(addr817);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr814);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr778);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr812);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr786);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr811);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr810);
                                                                                                         }
                                                                                                         §§goto(addr811);
                                                                                                         §§goto(addr801);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr829:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr829);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr805);
                                                                              }
                                                                              §§goto(addr729);
                                                                           }
                                                                           §§goto(addr830);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                           break loop69;
                                                                        }
                                                                     }
                                                                     §§goto(addr718);
                                                                  }
                                                                  while(!_loc19_)
                                                                  {
                                                                     §§goto(addr729);
                                                                     §§push(_loc6_.m_sweep);
                                                                  }
                                                                  §§goto(addr1100);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr1110);
                                                            }
                                                         }
                                                         while(!(_loc19_ && param2))
                                                         {
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               §§goto(addr826);
                                                               §§push(_loc6_.m_sweep);
                                                            }
                                                            §§goto(addr1097);
                                                         }
                                                         §§goto(addr1081);
                                                      }
                                                      §§goto(addr659);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(param1.§2^§);
                                                   addr647:
                                                }
                                                §§goto(addr1103);
                                             }
                                             else
                                             {
                                                §§push(param1.§2^§);
                                                if(_loc18_ || param2)
                                                {
                                                   §§push(_loc6_.§?o§);
                                                   if(_loc18_ || param1)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc18_ || param2)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc19_ && this))
                                                            {
                                                               _loc9_ = §§pop();
                                                               if(_loc18_ || param2)
                                                               {
                                                                  §§goto(addr647);
                                                               }
                                                               §§goto(addr1109);
                                                            }
                                                            §§goto(addr1103);
                                                         }
                                                         §§goto(addr1086);
                                                      }
                                                      §§goto(addr995);
                                                   }
                                                   §§goto(addr1105);
                                                }
                                             }
                                             §§goto(addr1107);
                                          }
                                       }
                                       addr1122:
                                    }
                                    §§goto(addr1446);
                                 }
                                 §§goto(addr1752);
                              }
                              §§goto(addr512);
                           }
                           §§goto(addr553);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(this.§"s§);
                        if(!(_loc19_ && param2))
                        {
                           §§goto(addr1122);
                        }
                        §§goto(addr1725);
                     }
                  }
                  addr1783:
                  return;
               }
               §§goto(addr443);
            }
            §§goto(addr1454);
         }
         §§goto(addr358);
      }
      
      public function §!!'§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:b2Body = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(!_loc13_)
         {
            §§push(this.§4!<§);
            if(!_loc13_)
            {
               §§pop().§>`§(param1,this.get,this.§3!G§,this.§ B§);
               addr50:
               §§push(this.§4!<§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!_loc13_)
            {
               _loc2_ = 0;
            }
            loop0:
            while(true)
            {
               while(_loc2_ < this.§1!s§)
               {
                  this.§>!o§[_loc2_].InitVelocityConstraints(param1);
                  if(_loc13_ && param1)
                  {
                     break;
                  }
                  _loc2_++;
                  if(!_loc14_)
                  {
                     break;
                  }
                  if(false)
                  {
                     continue loop0;
                  }
               }
               §§push(0.75);
               if(!(_loc13_ && this))
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc14_)
               {
                  §§push(0);
                  loop2:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr461:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr292:
                           while(true)
                           {
                              if(_loc14_)
                              {
                                 §§push(param1.§3]§);
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!(_loc14_ || _loc3_))
                                       {
                                          addr1011:
                                          return;
                                       }
                                       if(!_loc14_)
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr364:
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(this.§1!s§);
                                                   addr366:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(!_loc13_)
                                                            {
                                                               if(_loc14_ || this)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop21:
                                                                  while(_loc14_ || this)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc13_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop22:
                                                                           while(!(_loc13_ && _loc3_))
                                                                           {
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc13_ && this))
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          if(_loc14_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                addr342:
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc14_ || param1)
                                                                                                {
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(_loc14_)
                                                                                                               {
                                                                                                                  addr357:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                     §§goto(addr357);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                               addr355:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr359:
                                                                                                            }
                                                                                                            _loc2_++;
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                         }
                                                                                                         addr353:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            addr457:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               addr458:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  addr448:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr456:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         addr444:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            addr445:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr440:
                                                                                                      _loc8_ = §§pop();
                                                                                                      addr417:
                                                                                                      §§push(_loc7_);
                                                                                                      if(!(_loc13_ && this))
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         break loop22;
                                                                                                      }
                                                                                                      addr441:
                                                                                                   }
                                                                                                   §§goto(addr448);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr457);
                                                                                          }
                                                                                          addr413:
                                                                                          _loc7_ = §§pop();
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                                 §§goto(addr342);
                                                                              }
                                                                              §§goto(addr413);
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           addr426:
                                                                           if(§§pop())
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr412);
                                                                        }
                                                                        §§goto(addr353);
                                                                     }
                                                                     §§goto(addr426);
                                                                  }
                                                                  §§pop();
                                                                  §§push(_loc8_);
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     §§goto(addr426);
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  §§goto(addr413);
                                                                  addr378:
                                                                  addr428:
                                                               }
                                                               §§goto(addr417);
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                         addr367:
                                                      }
                                                      else
                                                      {
                                                         §§push(Boolean(this.§>!o§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                      }
                                                      §§goto(addr440);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr306);
                                    }
                                    else
                                    {
                                       §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                    }
                                    §§goto(addr456);
                                 }
                                 addr296:
                              }
                              §§goto(addr444);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  _loc2_++;
                  §§goto(addr208);
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §6!G§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!(_loc6_ && this))
         {
            if(this.§?!n§ == null)
            {
               if(_loc7_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§3!G§)
         {
            _loc3_ = this.get[_loc2_];
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
                        §§push(_loc5_);
                        if(_loc6_)
                        {
                           continue loop1;
                        }
                        if(§§pop() >= _loc4_.§9">§)
                        {
                           if(!(_loc6_ && param1))
                           {
                              this.§?!n§.PostSolve(_loc3_,§0!R§);
                           }
                           loop4:
                           while(!_loc6_)
                           {
                              _loc2_++;
                              if(_loc6_ && _loc2_)
                              {
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    if(true)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              addr136:
                              while(_loc6_ && this)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§0!R§);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    addr141:
                                    while(true)
                                    {
                                       §§pop().§<w§[_loc5_] = _loc4_.§?!%§[_loc5_].normalImpulse;
                                       continue loop6;
                                    }
                                 }
                                 §§pop().§8!!§[_loc5_] = _loc4_.§?!%§[_loc5_].tangentImpulse;
                              }
                              while(true)
                              {
                                 _loc5_++;
                                 break loop4;
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr141);
                           §§push(§0!R§);
                        }
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr136);
         }
      }
      
      public function §!"C§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            param1.§7V§ = this.§"s§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§"s§ + 1;
         _loc3_.§"s§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§"s§;
         this.§5K§[_loc2_] = param1;
      }
      
      public function §'0§(param1:b2Contact) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§3!G§ + 1;
         _loc3_.§3!G§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§3!G§;
         this.get[_loc2_] = param1;
      }
      
      public function §@!p§(param1:b2Joint) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§1!s§ + 1;
         _loc3_.§1!s§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§1!s§;
         this.§>!o§[_loc2_] = param1;
      }
   }
}
