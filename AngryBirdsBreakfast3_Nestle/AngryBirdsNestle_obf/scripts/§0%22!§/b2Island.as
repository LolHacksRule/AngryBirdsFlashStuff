package §0"!§
{
   import §!§.*;
   import §'!_§.*;
   import §23§.*;
   import §@!E§.*;
   import §@h§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §^"4§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §^"4§ = new b2ContactImpulse();
         }
      }
      
      private var §;!b§;
      
      private var §-c§:b2ContactListener;
      
      private var §^_§:b2ContactSolver;
      
      b2internal var §1!]§:Vector.<b2Body>;
      
      b2internal var §]J§:Vector.<b2Contact>;
      
      b2internal var §@I§:Vector.<b2Joint>;
      
      b2internal var §1a§:int;
      
      b2internal var § !%§:int;
      
      b2internal var §^" §:int;
      
      private var §>y§:int;
      
      b2internal var §>J§:int;
      
      b2internal var §3y§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§1!]§ = new Vector.<b2Body>();
               while(!_loc1_)
               {
                  while(_loc2_ || _loc2_)
                  {
                     this.§@I§ = new Vector.<b2Joint>();
                     if(_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§]J§ = new Vector.<b2Contact>();
            §§goto(addr51);
         }
      }
      
      public function §6R§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:int = 0;
         if(!_loc8_)
         {
            this.§>y§ = param1;
         }
         loop0:
         while(true)
         {
            this.§>J§ = param2;
            loop1:
            while(true)
            {
               this.§3y§ = param3;
               loop2:
               while(_loc9_)
               {
                  this.§1a§ = 0;
                  loop3:
                  while(true)
                  {
                     this.§^" § = 0;
                     while(true)
                     {
                        this.§ !%§ = 0;
                        while(_loc9_ || param3)
                        {
                           if(!_loc8_)
                           {
                              this.§;!b§ = param4;
                              while(!(_loc8_ && param2))
                              {
                                 this.§-c§ = param5;
                                 loop7:
                                 while(_loc9_)
                                 {
                                    this.§^_§ = param6;
                                    while(true)
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function §7Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1a§ = 0;
         }
         do
         {
            this.§^" § = 0;
            do
            {
               this.§ !%§ = 0;
            }
            while(_loc1_ && this);
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function §`"5§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§1a§)
         {
            if((_loc6_ = this.§1!]§[_loc4_]).§4!v§() != b2Body.b2_dynamicBody)
            {
               if(!(_loc18_ && param2))
               {
                  loop21:
                  while(true)
                  {
                     _loc4_++;
                     if(_loc19_ || param2)
                     {
                        addr91:
                        if(false)
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              §§push(_loc6_.m_angularVelocity);
                              if(_loc19_)
                              {
                                 §§push(b2Math);
                                 §§push(1);
                                 §§push(param1.§"!n§);
                                 if(!(_loc18_ && param3))
                                 {
                                    §§push(§§pop() * _loc6_.§?I§);
                                 }
                                 §§push(§§pop() * §§pop().§ !X§(§§pop() - §§pop(),0,1));
                              }
                              §§pop().m_angularVelocity = §§pop();
                              §§goto(addr91);
                           }
                           addr93:
                        }
                        continue loop0;
                     }
                     addr119:
                     addr165:
                     while(_loc19_ || param2)
                     {
                        continue loop21;
                     }
                     while(!_loc18_)
                     {
                        §§goto(addr93);
                        §§goto(addr119);
                     }
                     loop5:
                     while(true)
                     {
                        if(!_loc18_)
                        {
                           addr197:
                           if(!(_loc18_ && param2))
                           {
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              §§push(_loc6_.§;!A§);
                              addr208:
                              while(true)
                              {
                                 §§push(_loc6_.§;!A§);
                                 if(!(_loc18_ && this))
                                 {
                                    §§push(§§pop().y);
                                    if(!(_loc18_ && param2))
                                    {
                                       §§push(param1.§"!n§);
                                       if(_loc19_ || this)
                                       {
                                          if(!_loc18_)
                                          {
                                             §§push(_loc6_.§@?§);
                                             if(_loc19_ || this)
                                             {
                                                §§push(param2.y);
                                                if(_loc19_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc19_)
                                                   {
                                                      addr252:
                                                      if(!(_loc18_ && param3))
                                                      {
                                                         if(_loc19_ || this)
                                                         {
                                                            §§push(_loc6_.§ c§);
                                                            if(!_loc18_)
                                                            {
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(_loc6_.§6",§);
                                                                  if(_loc19_ || param3)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr285:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc18_)
                                                                        {
                                                                           if(!(_loc18_ && param2))
                                                                           {
                                                                              addr295:
                                                                              §§push(§§pop() + §§pop() * (§§pop() + §§pop()));
                                                                              while(true)
                                                                              {
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 while(_loc18_ && this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_.§;!A§);
                                                                                       addr311:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_.§;!A§);
                                                                                          addr313:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             §§push(param1.§"!n§);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(_loc6_.§@?§);
                                                                                                if(!(_loc18_ && param2))
                                                                                                {
                                                                                                   §§push(param2.x);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr332:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.§ c§);
                                                                                                      }
                                                                                                   }
                                                                                                   addr331:
                                                                                                }
                                                                                                §§goto(addr332);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                continue loop6;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§push(_loc6_);
                                                                                 §§push(_loc6_.m_angularVelocity);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(param1.§"!n§);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(_loc6_.§"k§);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          addr192:
                                                                                          §§push(§§pop() * _loc6_.§?!u§);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr192);
                                                                              }
                                                                              addr297:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_.§6",§);
                                                                              addr336:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr337:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr339:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr340);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                                  §§goto(addr336);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr285);
                                                         }
                                                         §§goto(addr332);
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                   §§goto(addr295);
                                                }
                                                §§goto(addr285);
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr340);
                                       }
                                       §§goto(addr295);
                                    }
                                    §§goto(addr297);
                                 }
                                 §§goto(addr313);
                              }
                           }
                        }
                        §§goto(addr300);
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc6_.§;!A§);
                  if(_loc19_ || param1)
                  {
                     if(!(_loc18_ && param1))
                     {
                        §§push(b2Math);
                        §§push(1);
                        §§push(param1.§"!n§);
                        if(_loc19_)
                        {
                           §§push(§§pop() * _loc6_.§!4§);
                        }
                        §§push(§§pop().§ !X§(§§pop() - §§pop(),0,1));
                        if(!(_loc18_ && param1))
                        {
                           §§pop().§",§(§§pop());
                           §§goto(addr165);
                        }
                        §§goto(addr295);
                     }
                     §§goto(addr311);
                  }
                  §§goto(addr208);
                  §§goto(addr197);
               }
               addr204:
            }
            else
            {
               §§push(_loc6_.m_sweep);
               if(_loc19_)
               {
                  §§pop().c0.SetV(_loc6_.m_sweep.c);
                  if(!_loc18_)
                  {
                     addr345:
                     _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                     §§goto(addr349);
                  }
                  §§goto(addr204);
               }
               §§goto(addr345);
            }
            §§goto(addr349);
         }
         if(_loc19_ || param2)
         {
            §§push(this.§^_§);
            if(!_loc18_)
            {
               §§pop().§6R§(param1,this.§]J§,this.§^" §,this.§;!b§);
               addr373:
               §§push(this.§^_§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(!(_loc18_ && this))
            {
               §§push(0);
               if(!(_loc18_ && param1))
               {
                  _loc4_ = §§pop();
                  if(!(_loc18_ && param1))
                  {
                     loop23:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc19_)
                        {
                           §§push(this.§ !%§);
                           if(_loc19_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§@I§[_loc4_]).InitVelocityConstraints(param1);
                                 if(!(_loc18_ && param2))
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(_loc19_)
                              {
                                 §§push(0);
                                 if(!(_loc18_ && param1))
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc18_ && param1))
                                    {
                                       loop41:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc18_)
                                          {
                                             §§push(param1.§]!X§);
                                             if(!_loc18_)
                                             {
                                                loop42:
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(0);
                                                      if(_loc19_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc19_ || param3)
                                                         {
                                                            loop43:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc19_ || param3)
                                                               {
                                                                  §§push(this.§ !%§);
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop42;
                                                                  }
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     (_loc7_ = this.§@I§[_loc5_]).SolveVelocityConstraints(param1);
                                                                     if(!_loc18_)
                                                                     {
                                                                        _loc5_++;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     _loc8_.SolveVelocityConstraints();
                                                                     if(!_loc19_)
                                                                     {
                                                                        continue loop41;
                                                                     }
                                                                     _loc4_++;
                                                                     if(!(_loc18_ && this))
                                                                     {
                                                                        continue loop41;
                                                                     }
                                                                     §§goto(addr1168);
                                                                  }
                                                                  §§goto(addr1818);
                                                               }
                                                               else
                                                               {
                                                                  loop51:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§1a§);
                                                                     if(!_loc18_)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!(_loc18_ && param3))
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc19_ || this)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc19_ || param3)
                                                                                 {
                                                                                    §§goto(addr1453);
                                                                                 }
                                                                                 §§goto(addr1790);
                                                                              }
                                                                              §§goto(addr1782);
                                                                           }
                                                                           §§goto(addr1489);
                                                                        }
                                                                        else
                                                                        {
                                                                           if((_loc6_ = this.§1!]§[_loc4_]).§4!v§() == b2Body.b2_staticBody)
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 loop105:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_++;
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc6_.§+!X§();
                                                                                          }
                                                                                          addr649:
                                                                                       }
                                                                                       continue loop51;
                                                                                    }
                                                                                    loop55:
                                                                                    while(!_loc18_)
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          continue loop105;
                                                                                       }
                                                                                       loop56:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(_loc6_.m_angularVelocity);
                                                                                             loop57:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc18_ && param3))
                                                                                                {
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      loop58:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                            if(_loc19_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() * param1.§=!9§);
                                                                                                            }
                                                                                                            §§pop().m_angularVelocity = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     loop60:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                        loop61:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                           loop62:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              loop63:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                 loop64:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().a);
                                                                                                                                    loop65:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().a0 = §§pop();
                                                                                                                                       loop66:
                                                                                                                                       while(!_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().c);
                                                                                                                                             loop68:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                loop69:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   loop70:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§"!n§);
                                                                                                                                                         if(!(_loc18_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.§;!A§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               addr807:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr806:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                         }
                                                                                                                                                         addr808:
                                                                                                                                                      }
                                                                                                                                                      loop74:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         loop75:
                                                                                                                                                         while(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               continue loop62;
                                                                                                                                                            }
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                               loop76:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop63;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  if(!(_loc19_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop68;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                  if(!(_loc19_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop69;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop70;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(param1.§"!n§);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.§;!A§);
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr761:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr764:
                                                                                                                                                                                 §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc19_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop75;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc18_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop76;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1019:
                                                                                                                                                                                    while(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop90:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param1.§"!n§);
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1057:
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      if(_loc19_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                      if(_loc19_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                         loop91:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc18_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                                                                     break loop91;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1077:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop93:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                                                                        addr1099:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                                                                           continue loop93;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1066:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1079:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() <= §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop90;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.§;!A§);
                                                                                                                                                                                                            addr1082:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().Normalize();
                                                                                                                                                                                                               break loop66;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1057:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(_loc18_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop58;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(_loc19_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                                                                   if(!(_loc18_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop90;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop57;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr916:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop56;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop60;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr923:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1066);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1079);
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop58;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr923);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    loop88:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_.§;!A§);
                                                                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.§;!A§);
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             if(_loc19_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1.§=!9§);
                                                                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1000:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(!(_loc18_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1008:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                  §§goto(addr1013);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                  addr1026:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.§=!9§);
                                                                                                                                                                                                                     addr1028:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        addr1029:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1024:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                               continue loop88;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1029);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1028);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1026);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1000);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1008);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1024);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1023:
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1013:
                                                                                                                                                                                    while(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1023);
                                                                                                                                                                                       §§push(_loc6_.§;!A§);
                                                                                                                                                                                       §§goto(addr1031);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1031:
                                                                                                                                                                                    §§goto(addr1082);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop61;
                                                                                                                                                                                 addr765:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr807);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr808);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr806);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr761);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr764);
                                                                                                                                                               }
                                                                                                                                                               continue loop74;
                                                                                                                                                            }
                                                                                                                                                            addr939:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               §§push(b2Settings.b2_maxRotation);
                                                                                                                                                               if(_loc19_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  if(_loc19_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     addr957:
                                                                                                                                                                     §§push(§§pop() * param1.§=!9§);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop60;
                                                                                                                                                                  }
                                                                                                                                                                  addr961:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr957);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop66;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             if(!(_loc18_ && param3))
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().a);
                                                                                                                                                      if(!(_loc18_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§"!n§);
                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().a = §§pop();
                                                                                                                                                         break loop55;
                                                                                                                                                      }
                                                                                                                                                      continue loop65;
                                                                                                                                                   }
                                                                                                                                                   continue loop64;
                                                                                                                                                }
                                                                                                                                                continue loop61;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1019);
                                                                                                                                          §§goto(addr1082);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1080);
                                                                                                               }
                                                                                                               §§goto(addr961);
                                                                                                            }
                                                                                                            addr853:
                                                                                                         }
                                                                                                         §§goto(addr939);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1034);
                                                                                                }
                                                                                                §§goto(addr1077);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1099);
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
                                                                                          §§goto(addr853);
                                                                                       }
                                                                                       §§goto(addr765);
                                                                                    }
                                                                                    addr708:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr649);
                                                                                    }
                                                                                 }
                                                                                 addr1107:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr1141);
                                                                              }
                                                                              §§goto(addr1080);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(param1.§"!n§);
                                                                              if(_loc19_ || param1)
                                                                              {
                                                                                 §§push(_loc6_.§;!A§);
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc19_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc18_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr1057);
                                                                                       }
                                                                                       _loc9_ = §§pop();
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§goto(addr1086);
                                                                                          §§push(param1.§"!n§);
                                                                                       }
                                                                                       §§goto(addr708);
                                                                                    }
                                                                                    §§goto(addr916);
                                                                                 }
                                                                                 §§goto(addr1088);
                                                                              }
                                                                           }
                                                                           §§goto(addr1057);
                                                                        }
                                                                     }
                                                                     break loop43;
                                                                  }
                                                               }
                                                               §§goto(addr1141);
                                                            }
                                                            §§goto(addr1283);
                                                         }
                                                         §§goto(addr1467);
                                                      }
                                                      break;
                                                   }
                                                   if(!(_loc18_ && param2))
                                                   {
                                                      §§push(0);
                                                      if(_loc19_ || param2)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(!(_loc18_ && param3))
                                                         {
                                                            loop46:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc18_ && param2))
                                                               {
                                                                  addr559:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§ !%§);
                                                                     if(_loc19_)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           (_loc7_ = this.§@I§[_loc4_]).§=Y§();
                                                                           if(!_loc18_)
                                                                           {
                                                                              _loc4_++;
                                                                           }
                                                                           continue loop46;
                                                                        }
                                                                        if(_loc19_)
                                                                        {
                                                                           _loc8_.§=Y§();
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr1815:
                                                                              §§push(0);
                                                                              if(!(_loc18_ && param2))
                                                                              {
                                                                                 break loop41;
                                                                              }
                                                                              loop146:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§1a§);
                                                                                 addr1817:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       §§goto(addr1818);
                                                                                    }
                                                                                    addr1814:
                                                                                    (_loc6_ = this.§1!]§[_loc4_]).SetAwake(false);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       _loc4_++;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop146;
                                                                                    }
                                                                                    continue loop146;
                                                                                 }
                                                                              }
                                                                              addr1815:
                                                                           }
                                                                           addr1790:
                                                                           §§goto(addr1814);
                                                                        }
                                                                        loop148:
                                                                        while(true)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    break loop23;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr1815);
                                                                              addr1276:
                                                                           }
                                                                           addr1151:
                                                                           while(true)
                                                                           {
                                                                              §§push(true);
                                                                              if(_loc18_ && param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc13_ = §§pop();
                                                                              if(_loc19_ || this)
                                                                              {
                                                                                 addr1168:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr1141:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             continue loop148;
                                                                                          }
                                                                                       }
                                                                                       addr1141:
                                                                                    }
                                                                                    break loop46;
                                                                                 }
                                                                                 addr1168:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr1453:
                                                                                 §§push(_loc4_);
                                                                                 if(!(_loc18_ && this))
                                                                                 {
                                                                                    break loop42;
                                                                                 }
                                                                                 §§goto(addr1815);
                                                                              }
                                                                           }
                                                                           addr1316:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc18_ && param3))
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 loop38:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    addr1481:
                                                                                    loop39:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          break loop38;
                                                                                       }
                                                                                       if(!(_loc18_ && param3))
                                                                                       {
                                                                                          addr1489:
                                                                                          while(true)
                                                                                          {
                                                                                             addr1467:
                                                                                             loop145:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§&!9§(_loc8_.§,"+§);
                                                                                                if(_loc19_ || param1)
                                                                                                {
                                                                                                   §§push(param3);
                                                                                                   if(!(_loc19_ || param3))
                                                                                                   {
                                                                                                      continue loop39;
                                                                                                   }
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      continue loop38;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr1438:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(Number.MAX_VALUE));
                                                                                                            loop35:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc15_ = §§pop();
                                                                                                               if(!(_loc18_ && param3))
                                                                                                               {
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     continue loop145;
                                                                                                                  }
                                                                                                                  §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                  {
                                                                                                                     §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           §§goto(addr1417);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1766);
                                                                                                                  }
                                                                                                                  addr1417:
                                                                                                                  loop37:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc16_ = §§pop();
                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                           {
                                                                                                                              §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                              if(!(_loc18_ && param3))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    continue loop36;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1766:
                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc19_ || param3)
                                                                                                                                 {
                                                                                                                                    break loop35;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1790);
                                                                                                                              }
                                                                                                                              break loop37;
                                                                                                                           }
                                                                                                                           addr1380:
                                                                                                                           if(_loc19_ || param1)
                                                                                                                           {
                                                                                                                              _loc17_ = §§pop();
                                                                                                                              if(_loc19_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    break loop46;
                                                                                                                                 }
                                                                                                                                 addr1782:
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 if(_loc19_ || param3)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1790);
                                                                                                                                 }
                                                                                                                                 break loop37;
                                                                                                                                 addr1395:
                                                                                                                              }
                                                                                                                              break loop37;
                                                                                                                           }
                                                                                                                           continue loop37;
                                                                                                                        }
                                                                                                                        addr1336:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr1818);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         addr1438:
                                                                                                      }
                                                                                                      §§goto(addr1818);
                                                                                                   }
                                                                                                }
                                                                                                §§push(0);
                                                                                                if(_loc19_ || param3)
                                                                                                {
                                                                                                   §§goto(addr1782);
                                                                                                }
                                                                                                §§goto(addr1815);
                                                                                             }
                                                                                          }
                                                                                          addr1466:
                                                                                       }
                                                                                       §§goto(addr1818);
                                                                                    }
                                                                                 }
                                                                                 _loc4_++;
                                                                                 addr1480:
                                                                                 if(_loc19_ || param2)
                                                                                 {
                                                                                 }
                                                                                 addr1818:
                                                                                 return;
                                                                                 addr1480:
                                                                              }
                                                                              §§goto(addr1498);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr1283:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 if(!(_loc18_ && param2))
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!(_loc18_ && param3))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             §§goto(addr1316);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1481);
                                                                                    }
                                                                                    §§goto(addr1437);
                                                                                 }
                                                                                 §§goto(addr1480);
                                                                              }
                                                                              addr1291:
                                                                           }
                                                                           §§goto(addr1790);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push((_loc7_ = this.§@I§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!_loc18_)
                                                                              {
                                                                                 _loc14_ = §§pop();
                                                                                 if(!(_loc18_ && this))
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr1274:
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc18_)
                                                                                       {
                                                                                       }
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr1275:
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc14_);
                                                                                                if(!(_loc18_ && param3))
                                                                                                {
                                                                                                   if(!(_loc19_ || param2))
                                                                                                   {
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                   addr1254:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc19_ || param2)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         addr1264:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc13_ = §§pop();
                                                                                                            do
                                                                                                            {
                                                                                                               _loc5_++;
                                                                                                            }
                                                                                                            while(_loc18_);
                                                                                                            
                                                                                                            if(!(_loc18_ && param2))
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         §§goto(addr1276);
                                                                                                         §§goto(addr1254);
                                                                                                      }
                                                                                                      addr1262:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1264);
                                                                                             }
                                                                                             continue loop30;
                                                                                          }
                                                                                       }
                                                                                       addr1274:
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr1274);
                                                                                    }
                                                                                    §§goto(addr1262);
                                                                                 }
                                                                                 §§goto(addr1275);
                                                                              }
                                                                              §§goto(addr1274);
                                                                           }
                                                                           §§goto(addr1264);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr559:
                                                               }
                                                               break;
                                                            }
                                                            loop33:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(_loc19_)
                                                               {
                                                                  if(_loc19_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr1336);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1753:
                                                                           §§push(_loc4_);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(this.§1a§);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          break loop33;
                                                                                       }
                                                                                       §§goto(addr1790);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push((_loc6_ = this.§1!]§[_loc4_]).§4!v§());
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(b2Body.b2_staticBody);
                                                                                          if(!(_loc18_ && param3))
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(_loc19_ || param3)
                                                                                                {
                                                                                                   loop109:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_++;
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         if(_loc19_ || param1)
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               loop110:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(b2Math.§5!!§(_loc15_,_loc6_.§9!I§));
                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        if(!(_loc18_ && param3))
                                                                                                                        {
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr1617:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    if(_loc19_ || param1)
                                                                                                                                    {
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                          {
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                continue loop109;
                                                                                                                                             }
                                                                                                                                             loop126:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(b2Math.§,w§(_loc6_.§;!A§,_loc6_.§;!A§));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            addr1678:
                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                            if(!(_loc18_ && param3))
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  loop120:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc19_ || param3))
                                                                                                                                                                     {
                                                                                                                                                                        loop111:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           loop112:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop112;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1748:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             continue loop126;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1678);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                addr1712:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                   addr1713:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop120;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1711:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1712);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1748:
                                                                                                                                                                                       addr1726:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1693:
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                          §§push(_loc6_.§9!I§);
                                                                                                                                                                                          if(_loc19_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + param1.§"!n§);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§9!I§ = §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop110;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1665:
                                                                                                                                                                                             addr1663:
                                                                                                                                                                                             addr1665:
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1695:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc6_.§9!I§ = 0;
                                                                                                                                                                                                   addr1698:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1661:
                                                                                                                                                                                                      §§push(Number(0));
                                                                                                                                                                                                      break loop110;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1695:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop109;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1656:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1695);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop111;
                                                                                                                                                                                 addr1721:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 §§goto(addr1748);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr1745:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1721);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1693);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1726);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1711);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1713);
                                                                                                                                                   }
                                                                                                                                                   addr1673:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1748);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1656);
                                                                                                                                       }
                                                                                                                                       addr1629:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1673);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1661);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr1750:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr1751:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                 addr1752:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr1738:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.§1!h§);
                                                                                                                                       addr1740:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(b2Body.§5"4§);
                                                                                                                                          addr1742:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() & §§pop());
                                                                                                                                             addr1743:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                addr1744:
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
                                                                                                                           §§goto(addr1745);
                                                                                                                        }
                                                                                                                        §§goto(addr1751);
                                                                                                                     }
                                                                                                                     §§goto(addr1712);
                                                                                                                  }
                                                                                                                  §§goto(addr1617);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc15_ = §§pop();
                                                                                                                  §§goto(addr1663);
                                                                                                                  §§goto(addr1661);
                                                                                                               }
                                                                                                               §§goto(addr1665);
                                                                                                            }
                                                                                                            §§goto(addr1752);
                                                                                                         }
                                                                                                         §§goto(addr1698);
                                                                                                      }
                                                                                                      §§goto(addr1629);
                                                                                                   }
                                                                                                   §§goto(addr1753);
                                                                                                }
                                                                                                §§goto(addr1658);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc6_.§1!h§);
                                                                                                if(_loc19_ || param3)
                                                                                                {
                                                                                                   addr1538:
                                                                                                   §§push(b2Body.§5"4§);
                                                                                                   if(_loc19_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                      if(!(_loc18_ && param1))
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!(_loc18_ && param3))
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  _loc6_.§9!I§ = 0;
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     §§goto(addr1750);
                                                                                                                     §§push(0);
                                                                                                                  }
                                                                                                                  §§goto(addr1665);
                                                                                                               }
                                                                                                               §§goto(addr1695);
                                                                                                            }
                                                                                                            §§goto(addr1738);
                                                                                                         }
                                                                                                         §§goto(addr1744);
                                                                                                      }
                                                                                                      §§goto(addr1743);
                                                                                                   }
                                                                                                   §§goto(addr1742);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1740);
                                                                                          }
                                                                                          §§goto(addr1742);
                                                                                       }
                                                                                       §§goto(addr1538);
                                                                                    }
                                                                                 }
                                                                                 addr1760:
                                                                              }
                                                                              §§goto(addr1817);
                                                                           }
                                                                        }
                                                                        §§goto(addr1815);
                                                                     }
                                                                     addr1334:
                                                                  }
                                                                  §§goto(addr1438);
                                                               }
                                                               break;
                                                               §§goto(addr1395);
                                                            }
                                                            §§goto(addr1764);
                                                            §§push(_loc15_);
                                                         }
                                                         §§goto(addr1168);
                                                      }
                                                      §§goto(addr1141);
                                                   }
                                                   §§goto(addr1438);
                                                   §§goto(addr1467);
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§5"2§);
                                                   if(_loc19_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                            if(_loc19_ || this)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc18_ && param3))
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr1151);
                                                                     }
                                                                     addr1198:
                                                                  }
                                                                  §§goto(addr1498);
                                                               }
                                                            }
                                                            §§goto(addr1480);
                                                         }
                                                         §§goto(addr1466);
                                                      }
                                                      addr1465:
                                                   }
                                                   §§goto(addr1760);
                                                }
                                             }
                                             §§goto(addr1283);
                                          }
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(!(_loc18_ && param1))
                                       {
                                          §§goto(addr1100);
                                       }
                                       §§goto(addr1198);
                                    }
                                    §§goto(addr1818);
                                 }
                                 §§goto(addr559);
                              }
                              §§goto(addr1291);
                           }
                           §§goto(addr1465);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(this.§ !%§);
                        if(!_loc18_)
                        {
                           §§goto(addr1283);
                        }
                        §§goto(addr1817);
                     }
                  }
                  §§goto(addr1467);
               }
               §§goto(addr559);
            }
            §§goto(addr1334);
         }
         §§goto(addr373);
      }
      
      public function §04§(param1:b2TimeStep) : void
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
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         if(_loc14_)
         {
            §§push(this.§^_§);
            if(!_loc13_)
            {
               §§pop().§6R§(param1,this.§]J§,this.§^" §,this.§;!b§);
               addr50:
               §§push(this.§^_§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!(_loc13_ && _loc2_))
            {
               _loc2_ = 0;
            }
            while(true)
            {
               loop1:
               while(true)
               {
                  if(_loc2_ < this.§ !%§)
                  {
                     this.§@I§[_loc2_].InitVelocityConstraints(param1);
                     while(true)
                     {
                        _loc2_++;
                        if(_loc13_ && _loc2_)
                        {
                           break;
                        }
                        if(!(_loc13_ && _loc2_))
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
                  if(_loc14_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(_loc14_)
                  {
                     §§push(0);
                     if(!_loc13_)
                     {
                        _loc2_ = §§pop();
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop5:
                              while(true)
                              {
                                 if(!_loc13_)
                                 {
                                    §§push(param1.§5"2§);
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc13_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                if(!_loc13_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc14_)
                                                         {
                                                            if(_loc14_ || _loc2_)
                                                            {
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc14_)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(param1.§]!X§);
                                                                     if(_loc14_ || this)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(_loc14_ || this)
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc14_ || param1)
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          if(_loc14_ || this)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                addr962:
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   if(!(_loc13_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(this.§ !%§);
                                                                                                      if(!(_loc13_ && _loc2_))
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            if(!(_loc13_ && param1))
                                                                                                            {
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  _loc2_++;
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     loop23:
                                                                                                                     while(!_loc13_)
                                                                                                                     {
                                                                                                                        addr342:
                                                                                                                        loop13:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           addr309:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§ !%§);
                                                                                                                              addr311:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                       }
                                                                                                                                       loop31:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             if(_loc14_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc13_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         addr337:
                                                                                                                                                         loop33:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(_loc14_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  addr271:
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop31;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc13_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc13_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    return;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr981:
                                                                                                                                                                                 addr981:
                                                                                                                                                                                 addr981:
                                                                                                                                                                                 addr981:
                                                                                                                                                                                 addr981:
                                                                                                                                                                                 continue loop3;
                                                                                                                                                                              }
                                                                                                                                                                              addr304:
                                                                                                                                                                              _loc2_++;
                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop33;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop3;
                                                                                                                                                                           addr291:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr405:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc6_ = §§pop();
                                                                                                                                                                           break loop33;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr381:
                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                        loop27:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           addr358:
                                                                                                                                                                           addr350:
                                                                                                                                                                           loop28:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc13_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr367:
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr368:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       break loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr348:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                       break loop28;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr366:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                    addr390:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       addr385:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                                                                          addr386:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr223:
                                                                                                                                                                                          if(_loc13_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop18;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr389:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr350:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr352:
                                                                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc3_++;
                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                    §§goto(addr352);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr353:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr366);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr348);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr368);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr348);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr350);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr368);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr271);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr389);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr291);
                                                                                                                                                }
                                                                                                                                                §§goto(addr367);
                                                                                                                                             }
                                                                                                                                             §§goto(addr358);
                                                                                                                                          }
                                                                                                                                          §§goto(addr350);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr977:
                                                                                                                                       this.§&!9§(_loc4_.§,"+§);
                                                                                                                                       §§goto(addr981);
                                                                                                                                    }
                                                                                                                                    §§goto(addr981);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(this.§@I§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                                                                 }
                                                                                                                                 §§goto(addr381);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr345);
                                                                                                                        §§goto(addr368);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr981);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr216:
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     _loc3_++;
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr231);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr977);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              §§goto(addr223);
                                                                                                                           }
                                                                                                                           §§goto(addr385);
                                                                                                                           addr221:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr237:
                                                                                                                  }
                                                                                                                  §§goto(addr977);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr977);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§@I§[_loc3_].SolveVelocityConstraints(param1);
                                                                                                         }
                                                                                                         §§goto(addr216);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr974:
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            if((_loc9_ = this.§1!]§[_loc2_]).§4!v§() == b2Body.b2_staticBody)
                                                                                                            {
                                                                                                               if(_loc14_ || this)
                                                                                                               {
                                                                                                                  loop91:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_++;
                                                                                                                     if(_loc14_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr473:
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           if(_loc14_ || this)
                                                                                                                           {
                                                                                                                              if(!(_loc13_ && this))
                                                                                                                              {
                                                                                                                                 if(!(_loc13_ && this))
                                                                                                                                 {
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       addr961:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       break loop18;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc9_.§+!X§();
                                                                                                                                       addr511:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop91;
                                                                                                                                       }
                                                                                                                                       §§goto(addr473);
                                                                                                                                    }
                                                                                                                                    loop68:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.m_sweep);
                                                                                                                                             loop69:
                                                                                                                                             for(; !_loc13_; §§push(_loc9_.m_sweep),if(!(_loc14_ || _loc3_))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             },if(!(_loc13_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_.m_sweep);
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().a);
                                                                                                                                                   if(_loc14_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§"!n§);
                                                                                                                                                      if(!_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * _loc9_.m_angularVelocity);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                   }
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().a = §§pop();
                                                                                                                                                      §§goto(addr552);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr676);
                                                                                                                                                }
                                                                                                                                                §§goto(addr675);
                                                                                                                                             },§§goto(addr681))
                                                                                                                                             {
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   if(_loc14_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_.m_sweep);
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                         if(!(_loc13_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            if(_loc14_)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.§"!n§);
                                                                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc9_.§;!A§);
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     if(_loc14_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr619:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc14_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              addr629:
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc13_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc14_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    loop70:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop69;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr948:
                                                                                                                                                                                          loop37:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc9_.§;!A§);
                                                                                                                                                                                             loop38:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().Normalize();
                                                                                                                                                                                                loop39:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc9_.§;!A§);
                                                                                                                                                                                                   loop40:
                                                                                                                                                                                                   for(; !_loc13_; while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr858:
                                                                                                                                                                                                      §§push(_loc9_.§;!A§);
                                                                                                                                                                                                      if(_loc13_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop40;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc9_.§;!A§);
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc14_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                               if(!(_loc13_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.§=!9§);
                                                                                                                                                                                                                     if(_loc14_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr903:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr911:
                                                                                                                                                                                                                           §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop48:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(param1.§"!n§);
                                                                                                                                                                                                                                 if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc14_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc9_.m_angularVelocity);
                                                                                                                                                                                                                                       if(!(_loc13_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                     if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                           if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc12_ = §§pop();
                                                                                                                                                                                                                                                                              if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr824:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr827:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc9_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                   addr829:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                                                                      addr830:
                                                                                                                                                                                                                                                                                                      while(_loc14_ || _loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                                                                            if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * param1.§=!9§);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr838:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(!_loc13_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                                                                            if(_loc14_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr853:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * param1.§=!9§);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr678:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc9_.m_sweep);
                                                                                                                                                                                                                                                                                                                     break loop70;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr857:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr853);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                                                                                                                         §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                                                                         break loop68;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr947:
                                                                                                                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop37;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop48;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr827:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr678);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             loop78:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr943:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * _loc11_);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      break loop78;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr944:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      addr958:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         addr959:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                            addr960:
                                                                                                                                                                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break loop78;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop78;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop78;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr957:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr945:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr947);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr824:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr830);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr829);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr824);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr943);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr796:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr824);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr958);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr959);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr939);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr829);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr954:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc9_.§;!A§);
                                                                                                                                                                                                                                                            addr956:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr954:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr957);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr762:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr829);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr754:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr944);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr796);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr945);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr762);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break loop68;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr912:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr927);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr928);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr925);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr903);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr911);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr920);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   },§§goto(addr929))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc9_.§;!A§);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr925:
                                                                                                                                                                                                            §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param1.§=!9§);
                                                                                                                                                                                                               addr927:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  addr928:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr925:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr929:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            continue loop40;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop38;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr677:
                                                                                                                                                                                       addr552:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc9_.m_sweep);
                                                                                                                                                                                          break loop69;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(_loc14_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr508);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr930);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().c0.SetV(_loc9_.m_sweep.c);
                                                                                                                                                                                       addr686:
                                                                                                                                                                                       while(!(_loc13_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc9_.m_sweep);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc9_.m_sweep);
                                                                                                                                                                                             addr675:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().a);
                                                                                                                                                                                                addr676:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().a0 = §§pop();
                                                                                                                                                                                                   §§goto(addr677);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr857);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr681:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.§"!n§);
                                                                                                                                                                                    addr659:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_.§;!A§);
                                                                                                                                                                                       addr661:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                          addr662:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             addr663:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr657:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 continue loop68;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr659);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr663);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr662);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr661);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr619);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr629);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr657);
                                                                                                                                                         }
                                                                                                                                                         addr656:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr656);
                                                                                                                                                      }
                                                                                                                                                      addr655:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr655);
                                                                                                                                                   }
                                                                                                                                                   addr653:
                                                                                                                                                }
                                                                                                                                                §§goto(addr673);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr653);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr686);
                                                                                                                                    }
                                                                                                                                    addr508:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                       {
                                                                                                                                          if(_loc14_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr678);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr912);
                                                                                                                                    }
                                                                                                                                    §§goto(addr960);
                                                                                                                                    addr665:
                                                                                                                                 }
                                                                                                                                 §§goto(addr827);
                                                                                                                              }
                                                                                                                              §§goto(addr838);
                                                                                                                           }
                                                                                                                           §§goto(addr665);
                                                                                                                        }
                                                                                                                        §§goto(addr552);
                                                                                                                     }
                                                                                                                     §§goto(addr511);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr827);
                                                                                                            }
                                                                                                            §§push(param1.§"!n§);
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               §§push(_loc9_.§;!A§);
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(!(_loc13_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           _loc10_ = §§pop();
                                                                                                                           if(!(_loc13_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§goto(addr954);
                                                                                                                              §§push(param1.§"!n§);
                                                                                                                           }
                                                                                                                           §§goto(addr948);
                                                                                                                        }
                                                                                                                        §§goto(addr954);
                                                                                                                     }
                                                                                                                     §§goto(addr935);
                                                                                                                  }
                                                                                                                  §§goto(addr754);
                                                                                                               }
                                                                                                               §§goto(addr956);
                                                                                                            }
                                                                                                            §§goto(addr939);
                                                                                                         }
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            §§goto(addr977);
                                                                                                         }
                                                                                                         §§goto(addr981);
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr974);
                                                                                                   §§goto(addr961);
                                                                                                }
                                                                                                §§goto(addr974);
                                                                                                addr962:
                                                                                             }
                                                                                             §§goto(addr961);
                                                                                          }
                                                                                          §§goto(addr981);
                                                                                       }
                                                                                       §§goto(addr221);
                                                                                    }
                                                                                    §§goto(addr962);
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr304);
                                                                           }
                                                                           §§goto(addr977);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc4_.SolveVelocityConstraints();
                                                                        }
                                                                        §§goto(addr237);
                                                                     }
                                                                     §§goto(addr974);
                                                                  }
                                                                  §§goto(addr962);
                                                               }
                                                               continue loop5;
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                         §§goto(addr981);
                                                      }
                                                   }
                                                   addr251:
                                                }
                                                §§goto(addr353);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          §§goto(addr405);
                                       }
                                       §§goto(addr311);
                                    }
                                 }
                                 §§goto(addr309);
                              }
                           }
                        }
                     }
                     §§goto(addr962);
                  }
                  §§goto(addr981);
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §&!9§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!_loc7_)
         {
            if(this.§-c§ == null)
            {
               if(_loc6_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         loop0:
         for(; _loc2_ < this.§^" §; if(true)
         {
            continue;
         },§§goto(addr84))
         {
            _loc3_ = this.§]J§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(_loc6_ || param1)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  _loc5_ = §§pop();
                  loop2:
                  while(true)
                  {
                     addr84:
                     loop3:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           break;
                        }
                        if(§§pop() >= _loc4_.§#!1§)
                        {
                           loop4:
                           while(_loc6_ || param1)
                           {
                              while(true)
                              {
                                 this.§-c§.PostSolve(_loc3_,§^"4§);
                                 loop7:
                                 for(; !(_loc7_ && param1); _loc2_++,if(_loc6_ || this)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop4;
                                 })
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(§^"4§);
                                          if(!(_loc6_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          §§pop().§`4§[_loc5_] = _loc4_.§>Q§[_loc5_].tangentImpulse;
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc5_++;
                                       break loop7;
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        §§push(§^"4§);
                        §§goto(addr140);
                     }
                     continue loop1;
                  }
               }
            }
            §§goto(addr98);
         }
      }
      
      public function §#!K§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            param1.§[!b§ = this.§1a§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§1a§ + 1;
         _loc3_.§1a§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§1a§;
         this.§1!]§[_loc2_] = param1;
      }
      
      public function §'<§(param1:b2Contact) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§^" § + 1;
         _loc3_.§^" § = _loc4_;
         var _loc2_:* = (_loc3_ = this).§^" §;
         this.§]J§[_loc2_] = param1;
      }
      
      public function §<>§(param1:b2Joint) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§ !%§ + 1;
         _loc3_.§ !%§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§ !%§;
         this.§@I§[_loc2_] = param1;
      }
   }
}
