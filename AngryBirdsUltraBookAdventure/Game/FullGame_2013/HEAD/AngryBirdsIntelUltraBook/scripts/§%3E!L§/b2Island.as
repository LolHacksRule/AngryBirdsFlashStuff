package §>!L§
{
   import §!m§.*;
   import §#!0§.*;
   import §+!g§.*;
   import §=;§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §"3§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §"3§ = new b2ContactImpulse();
         }
      }
      
      private var §6I§;
      
      private var §+!>§:b2ContactListener;
      
      private var §%A§:b2ContactSolver;
      
      b2internal var §,!<§:Vector.<b2Body>;
      
      b2internal var §`!4§:Vector.<b2Contact>;
      
      b2internal var §0!a§:Vector.<b2Joint>;
      
      b2internal var §+C§:int;
      
      b2internal var § var§:int;
      
      b2internal var § !Q§:int;
      
      private var §2`§:int;
      
      b2internal var §6_§:int;
      
      b2internal var §>P§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§,!<§ = new Vector.<b2Body>();
               while(true)
               {
                  this.§`!4§ = new Vector.<b2Contact>();
                  loop2:
                  while(_loc2_ || this)
                  {
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           this.§0!a§ = new Vector.<b2Joint>();
                           if(!(_loc1_ && _loc1_))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §2@§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!(_loc9_ && param1))
         {
            this.§2`§ = param1;
            while(true)
            {
               this.§6_§ = param2;
               while(_loc8_)
               {
                  this.§>P§ = param3;
                  addr230:
                  if(_loc9_ && param2)
                  {
                     continue;
                  }
                  _loc7_ = int(this.§,!<§.length);
                  addr237:
                  if(_loc8_)
                  {
                     addr211:
                     if(_loc9_ && this)
                     {
                        loop7:
                        for(; !(_loc9_ && param2); §§goto(addr211))
                        {
                           this.§%A§ = param6;
                           while(!(_loc9_ && param3))
                           {
                              §§goto(addr230);
                              §§goto(addr237);
                           }
                           while(_loc8_ || this)
                           {
                              this.§+!>§ = param5;
                              continue loop7;
                              §§goto(addr223);
                           }
                           addr223:
                           while(true)
                           {
                              this.§6I§ = param4;
                              §§goto(addr254);
                           }
                           addr254:
                        }
                        while(!(_loc9_ && param1))
                        {
                           this.§ var§ = 0;
                           §§goto(addr266);
                           §§goto(addr242);
                        }
                        addr242:
                        while(_loc8_)
                        {
                           this.§ !Q§ = 0;
                           §§goto(addr281);
                        }
                        addr281:
                        while(true)
                        {
                           this.§+C§ = 0;
                           §§goto(addr293);
                        }
                        addr293:
                        addr300:
                     }
                     addr171:
                     §§push(_loc7_);
                     if(_loc8_ || param2)
                     {
                        addr181:
                        if(§§pop() >= param1)
                        {
                           addr186:
                           _loc7_ = int(this.§`!4§.length);
                           addr187:
                           addr182:
                           §§push(_loc7_);
                           if(!(_loc9_ && this))
                           {
                              addr128:
                              if(§§pop() >= param2)
                              {
                                 if(_loc8_ || this)
                                 {
                                    addr150:
                                    §§push(int(this.§0!a§.length));
                                    if(!_loc9_)
                                    {
                                       _loc7_ = §§pop();
                                       addr26:
                                       addr153:
                                       §§push(_loc7_);
                                       if(_loc8_)
                                       {
                                          if(_loc8_)
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(param3);
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc8_ || param2)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr193:
                                                                     §§goto(addr171);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr187);
                                                            }
                                                            addr115:
                                                            if(_loc8_)
                                                            {
                                                               addr63:
                                                               §§push(_loc7_);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              addr89:
                                                                              §§push(§§pop() + 1);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    addr94:
                                                                                    _loc7_ = int(§§pop());
                                                                                    addr95:
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§goto(addr26);
                                                                                          }
                                                                                          addr158:
                                                                                          _loc7_++;
                                                                                          addr156:
                                                                                          addr170:
                                                                                       }
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§goto(addr187);
                                                                                       }
                                                                                       §§goto(addr182);
                                                                                    }
                                                                                    §§goto(addr153);
                                                                                 }
                                                                                 addr192:
                                                                                 _loc7_ = int(§§pop() + 1);
                                                                                 addr190:
                                                                                 §§goto(addr193);
                                                                              }
                                                                              §§goto(addr186);
                                                                           }
                                                                           §§goto(addr171);
                                                                        }
                                                                        §§goto(addr156);
                                                                     }
                                                                     §§goto(addr158);
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr150);
                                                            }
                                                            §§goto(addr190);
                                                            §§push(_loc7_);
                                                            addr202:
                                                         }
                                                         §§goto(addr95);
                                                      }
                                                      this.§0!a§[_loc7_] = null;
                                                      §§goto(addr115);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr128);
                                             }
                                             §§goto(addr63);
                                          }
                                          §§goto(addr89);
                                       }
                                       §§goto(addr94);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr26);
                              }
                              this.§`!4§[_loc7_] = null;
                              §§goto(addr170);
                           }
                           §§goto(addr190);
                        }
                        this.§,!<§[_loc7_] = null;
                        §§goto(addr202);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr223);
               }
            }
         }
         §§goto(addr300);
      }
      
      public function §-!g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§+C§ = 0;
            while(true)
            {
               this.§ !Q§ = 0;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§ var§ = 0;
            if(!(_loc1_ && _loc1_))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §]j§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         if(_loc18_ || param1)
         {
            §§push(0);
            if(!_loc19_)
            {
               §§push(int(§§pop()));
            }
            _loc4_ = §§pop();
         }
         loop0:
         while(_loc4_ < this.§+C§)
         {
            _loc6_ = this.§,!<§[_loc4_];
            if(!(_loc19_ && param3))
            {
               if(_loc6_.§6!-§() == b2Body.b2_dynamicBody)
               {
                  §§push(_loc6_.§4!h§);
                  while(true)
                  {
                     §§push(_loc6_.§4!h§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().x);
                        while(true)
                        {
                           §§push(param1.§`M§);
                           loop4:
                           while(true)
                           {
                              §§push(param2.x);
                              loop5:
                              while(true)
                              {
                                 §§push(_loc6_.§=n§);
                                 if(!(_loc19_ && param2))
                                 {
                                    §§push(_loc6_.§4!&§);
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr349:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                    addr348:
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop11:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc6_.§4!h§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(_loc6_.§4!h§);
                                                   if(!(_loc18_ || this))
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().y);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!_loc18_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      §§push(param1.§`M§);
                                                      if(!(_loc19_ && param2))
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(param2.y);
                                                         if(_loc18_ || param1)
                                                         {
                                                            §§push(_loc6_.§=n§);
                                                            if(_loc18_)
                                                            {
                                                               §§push(_loc6_.§4!&§);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(_loc19_ && param3)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr348);
                                                               }
                                                            }
                                                            if(_loc19_ && param3)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         if(!(_loc18_ || param1))
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(!(_loc18_ || param2))
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      if(_loc19_ && this)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      while(true)
                                                      {
                                                         §§pop().y = §§pop();
                                                         addr320:
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            §§push(_loc6_.m_angularVelocity);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(param1.§`M§);
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  §§push(_loc6_.§1&§);
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     addr227:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        §§push(_loc6_.§`!c§);
                                                                     }
                                                                     §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc18_ || param3)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        continue loop22;
                                                                        §§goto(addr227);
                                                                     }
                                                                     addr181:
                                                                     §§pop().§2p§(§§pop());
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc19_ && param1))
                                                                        {
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              §§push(_loc6_.m_angularVelocity);
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(b2Math);
                                                                                 §§push(1);
                                                                                 §§push(param1.§`M§);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc6_.§[<§);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop().§3X§(§§pop() - §§pop(),0,1));
                                                                              }
                                                                              §§pop().m_angularVelocity = §§pop();
                                                                              addr136:
                                                                              while(_loc19_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc18_ || param3)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!(_loc19_ && param3))
                                                                                    {
                                                                                       addr89:
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    _loc4_ = §§pop();
                                                                                    if(_loc18_ || param2)
                                                                                    {
                                                                                       if(!(_loc18_ || param1))
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       addr105:
                                                                                       if(!(_loc19_ && param3))
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       addr327:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop17;
                                                                                          §§goto(addr105);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr136);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr89);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr228);
                                                                        }
                                                                     }
                                                                     addr228:
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         addr151:
                                                         §§push(b2Math);
                                                         §§push(1);
                                                         §§push(param1.§`M§);
                                                         if(_loc18_)
                                                         {
                                                            §§push(§§pop() * _loc6_.§=-§);
                                                         }
                                                         §§push(§§pop().§3X§(§§pop() - §§pop(),0,1));
                                                         if(_loc18_ || param3)
                                                         {
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr349);
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(_loc19_ && param3)
                     {
                        continue;
                     }
                     §§goto(addr151);
                  }
               }
               §§goto(addr327);
            }
            §§goto(addr320);
         }
         if(!(_loc19_ && this))
         {
            §§push(this.§%A§);
            if(_loc18_)
            {
               §§pop().§2@§(param1,this.§`!4§,this.§ !Q§,this.§6I§);
               addr379:
               §§push(this.§%A§);
            }
            var _loc8_:b2ContactSolver = §§pop();
            if(!(_loc19_ && param1))
            {
               _loc8_.InitVelocityConstraints(param1);
               if(!_loc19_)
               {
                  §§push(0);
                  if(!(_loc19_ && this))
                  {
                     §§push(int(§§pop()));
                     if(_loc18_ || this)
                     {
                        _loc4_ = §§pop();
                        if(!(_loc19_ && param2))
                        {
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!_loc19_)
                              {
                                 §§push(this.§ var§);
                                 if(!_loc19_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc19_)
                                       {
                                          §§push(0);
                                          if(_loc18_ || this)
                                          {
                                             §§push(int(§§pop()));
                                             if(!(_loc19_ && param3))
                                             {
                                                break;
                                             }
                                             loop128:
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc18_ || param2)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(!(_loc19_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(this.§ var§);
                                                            if(!_loc19_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     _loc8_.SolveVelocityConstraints();
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!(_loc19_ && this))
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(_loc18_ || param3)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(param1.§[Z§);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         addr603:
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(!(_loc19_ && param3))
                                                                                                         {
                                                                                                            addr611:
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(this.§ var§);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                           {
                                                                                                                              addr662:
                                                                                                                              _loc8_.§9r§();
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 addr667:
                                                                                                                                 §§push(0);
                                                                                                                                 if(!(_loc19_ && param2))
                                                                                                                                 {
                                                                                                                                    addr675:
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(!(_loc19_ && param3))
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       if(_loc18_ || param3)
                                                                                                                                       {
                                                                                                                                          loop55:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr1267:
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             if(_loc18_ || param3)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§+C§);
                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr1280:
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(!(_loc19_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr1288:
                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                               if(!(_loc19_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  _loc4_ = §§pop();
                                                                                                                                                                  if(_loc18_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                        break loop55;
                                                                                                                                                                     }
                                                                                                                                                                     addr1635:
                                                                                                                                                                     addr1304:
                                                                                                                                                                  }
                                                                                                                                                                  loop130:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     loop43:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(_loc18_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1562:
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc18_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc17_ = §§pop();
                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(!(_loc19_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1519:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc4_ = §§pop();
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc19_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1665:
                                                                                                                                                                                                                           loop136:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1648:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1649:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§0k§(_loc8_.§%!,§);
                                                                                                                                                                                                                                    addr1654:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(param3);
                                                                                                                                                                                                                                       if(!(_loc19_ && param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(Number.MAX_VALUE));
                                                                                                                                                                                                                                                loop51:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1596:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            loop44:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               addr1598:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                                                                                                                  if(_loc18_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop130;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1969:
                                                                                                                                                                                                                                                                     addr1969:
                                                                                                                                                                                                                                                                     addr1684:
                                                                                                                                                                                                                                                                     addr1969:
                                                                                                                                                                                                                                                                     loop45:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1635);
                                                                                                                                                                                                                                                                        addr1683:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc4_ = §§pop();
                                                                                                                                                                                                                                                                           continue loop45;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1969:
                                                                                                                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc6_ = this.§,!<§[_loc4_];
                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc6_.§6!-§());
                                                                                                                                                                                                                                                                           if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1943:
                                                                                                                                                                                                                                                                              if(§§pop() == b2Body.b2_staticBody)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1696:
                                                                                                                                                                                                                                                                                 addr1944:
                                                                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                                                                 if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                                    if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1716:
                                                                                                                                                                                                                                                                                          _loc4_ = int(§§pop());
                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1723:
                                                                                                                                                                                                                                                                                                   §§push(b2Math.§]!#§(_loc15_,_loc6_.§7!P§));
                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc19_ && param3))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1749:
                                                                                                                                                                                                                                                                                                               _loc15_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                               addr1750:
                                                                                                                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1752:
                                                                                                                                                                                                                                                                                                                  §§goto(addr1696);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1765:
                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc19_ && param3))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr1723);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1944);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1930:
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_.§]!D§);
                                                                                                                                                                                                                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(b2Body.§"!-§);
                                                                                                                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc18_ || param3)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1903:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1923:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1924:
                                                                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                                                                             addr1846:
                                                                                                                                                                                                                                                                                                                                             addr1925:
                                                                                                                                                                                                                                                                                                                                             §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                             §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1851:
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                if(!(_loc19_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1860:
                                                                                                                                                                                                                                                                                                                                                   §§push(Boolean(§§pop() > _loc17_));
                                                                                                                                                                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1863:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc19_ && param3))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1876:
                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr1877:
                                                                                                                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1810:
                                                                                                                                                                                                                                                                                                                                                               §§push(b2Math.§extends§(_loc6_.§4!h§,_loc6_.§4!h§));
                                                                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc19_ && param3))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1835:
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1837:
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    _loc6_.§7!P§ = 0;
                                                                                                                                                                                                                                                                                                                                                                                    addr1781:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1784:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          addr1787:
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc19_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1696);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             addr1929:
                                                                                                                                                                                                                                                                                                                                                                                             _loc15_ = Number(0);
                                                                                                                                                                                                                                                                                                                                                                                             addr1928:
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1930);
                                                                                                                                                                                                                                                                                                                                                                                             addr1956:
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1877);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1928);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1846);
                                                                                                                                                                                                                                                                                                                                                                                    addr1842:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1925);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc6_.§7!P§);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + param1.§`M§);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§pop().§7!P§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1765);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1860);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1876);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1860);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1851);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1953:
                                                                                                                                                                                                                                                                                                                                                            _loc6_.§7!P§ = 0;
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1956);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1835);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1923);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1924);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1929);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1860);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1863);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1924);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1952:
                                                                                                                                                                                                                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1953);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1930);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1951:
                                                                                                                                                                                                                                                                                                                              §§goto(addr1952);
                                                                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1943);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1950:
                                                                                                                                                                                                                                                                                                                        §§goto(addr1951);
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1950);
                                                                                                                                                                                                                                                                                                                     §§push(b2Body.§"!-§);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1837);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1842);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1810);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1781);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1784);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1749);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1957:
                                                                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1965:
                                                                                                                                                                                                                                                                                                   §§push(this.§+C§);
                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1969);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr2035:
                                                                                                                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc6_ = this.§,!<§[_loc4_];
                                                                                                                                                                                                                                                                                                      if(!(_loc19_ && param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc6_.SetAwake(false);
                                                                                                                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      loop122:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                                                                                                                         addr2033:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr2035);
                                                                                                                                                                                                                                                                                                            continue loop122;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr2032:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2036);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr2033);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1787);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1750);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1903);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1716);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(_loc6_.§]!D§);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1930);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1752);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop51;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr2036);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break loop44;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1596);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1979:
                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1982:
                                                                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr2033);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                                                                                                                            if(!(_loc19_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1993:
                                                                                                                                                                                                                                                               §§goto(addr2032);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr2036:
                                                                                                                                                                                                                                                            return;
                                                                                                                                                                                                                                                            addr1597:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1976:
                                                                                                                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1979);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2036);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1973:
                                                                                                                                                                                                                                                      §§goto(addr1976);
                                                                                                                                                                                                                                                      §§push(b2Settings.b2_timeToSleep);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1972:
                                                                                                                                                                                                                                                §§goto(addr1973);
                                                                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                                                                addr1630:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1979);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2036);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1664:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                             if(!(_loc19_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1674:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                                                                                                                   break loop24;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1674:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop136;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1982);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1665:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop43;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1957);
                                                                                                                                                                                                                        addr1531:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1654);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1979);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1519:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop55;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2033);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1514:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop24;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1982);
                                                                                                                                                                                                addr1579:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2036);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1630);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1598);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1973);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1976);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1597);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1562);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1519);
                                                                                                                                                            }
                                                                                                                                                            loop131:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§ var§);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr1463:
                                                                                                                                                                  loop25:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() >= §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc18_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           if(_loc18_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1494:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1497:
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                if(_loc19_ && param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1664);
                                                                                                                                                                                                addr1497:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1665);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1494:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1497);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1664);
                                                                                                                                                                              }
                                                                                                                                                                              addr1479:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1494);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1531);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        _loc7_ = this.§0!a§[_loc5_];
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                                                           loop26:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              loop27:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                                                                 loop28:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    loop29:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                       while(!(_loc19_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop31:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                loop32:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop33:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop31;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1413:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                                                                            loop34:
                                                                                                                                                                                                            for(; _loc18_ || param2; _loc5_ = §§pop(),if(_loc19_ && this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            },if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop33;
                                                                                                                                                                                                            },§§goto(addr1456))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1456:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                     if(_loc18_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + 1);
                                                                                                                                                                                                                        if(!(_loc18_ || param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop34;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop34;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop131;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1674);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop25;
                                                                                                                                                                                                                  addr1456:
                                                                                                                                                                                                                  addr1430:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop28;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop32;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1413);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1430);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1463:
                                                                                                                                                               }
                                                                                                                                                               addr1645:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1648);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1993);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc12_ = §§pop();
                                                                                                                                                                           if(_loc18_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr1348:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 loop127:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(true);
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1327:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop127;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1456);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1972);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop24;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1683);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1327:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1993);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1494);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1664);
                                                                                                                                                                              }
                                                                                                                                                                              addr1348:
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1479);
                                                                                                                                                                        §§goto(addr1664);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1494);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1665);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2036);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         _loc6_ = this.§,!<§[_loc4_];
                                                                                                                                                         if(_loc18_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_.§6!-§() != b2Body.b2_staticBody)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.§`M§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.§4!h§);
                                                                                                                                                                  loop58:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     loop59:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                              loop62:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§`M§);
                                                                                                                                                                                 loop63:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.§4!h§);
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    loop64:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       loop65:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          loop66:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                                                                             loop67:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                loop68:
                                                                                                                                                                                                while(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   if(!(_loc19_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      loop69:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * _loc10_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop70:
                                                                                                                                                                                                         while(_loc18_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                                                               loop87:
                                                                                                                                                                                                               while(!(_loc19_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  loop88:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                                                                     loop89:
                                                                                                                                                                                                                     while(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc19_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop63;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop68;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop87;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1008:
                                                                                                                                                                                                                        if(_loc18_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                           if(_loc18_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1025:
                                                                                                                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop64;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop92:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                       loop93:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                                                          loop94:
                                                                                                                                                                                                                                          while(!_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc19_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                loop95:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                   loop96:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().a);
                                                                                                                                                                                                                                                      loop97:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().a0 = §§pop();
                                                                                                                                                                                                                                                         loop98:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr908:
                                                                                                                                                                                                                                                               if(_loc18_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                  loop99:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                                                                                                                     loop100:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                        loop101:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                                                                                                                           loop102:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                                                                              loop103:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(param1.§`M§);
                                                                                                                                                                                                                                                                                 loop104:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc6_.§4!h§);
                                                                                                                                                                                                                                                                                    loop105:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                                                                                                                       loop106:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          loop107:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             loop108:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                loop109:
                                                                                                                                                                                                                                                                                                while(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                   loop110:
                                                                                                                                                                                                                                                                                                   while(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc19_ && param3)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop108;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop103;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(param1.§`M§);
                                                                                                                                                                                                                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc19_ && param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop107;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_.§4!h§);
                                                                                                                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop105;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                     if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop106;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop104;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                               loop111:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().a);
                                                                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop97;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(param1.§`M§);
                                                                                                                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                                                                                                                                                                           loop112:
                                                                                                                                                                                                                                                                                                                           while(_loc18_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              do
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 _loc6_.§"!_§();
                                                                                                                                                                                                                                                                                                                                 loop114:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc18_ || param3))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop89;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!(_loc19_ && param3))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr768:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1250:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                                                                                          if(_loc18_ || param3)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          break loop114;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop114;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1267);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop92;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop94;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop98;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop111;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop112;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(false);
                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                              continue loop55;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop109;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop96;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop95;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop110;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop93;
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop102;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop101;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop100;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop99;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop67;
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
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_.§4!h§);
                                                                                                                                                                                                                                                                     loop77:
                                                                                                                                                                                                                                                                     for(; !(_loc19_ && this); while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_.§4!h§);
                                                                                                                                                                                                                                                                        if(!(_loc18_ || param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop77;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1120);
                                                                                                                                                                                                                                                                     },§§goto(addr1188))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_.§4!h§);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(param1.§^!_§);
                                                                                                                                                                                                                                                                                 addr1186:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    addr1187:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1184:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1188:
                                                                                                                                                                                                                                                                           addr1120:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                                                                              continue loop77;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc6_.§4!h§);
                                                                                                                                                                                                                                                                           if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                                                                           if(_loc18_ || param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                                                                                 if(_loc18_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(param1.§^!_§);
                                                                                                                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1161:
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1164:
                                                                                                                                                                                                                                                                                             §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                             break loop89;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1186);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1187);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1184);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1161);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1188);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1164);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr908);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1231:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1035:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                  continue loop88;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1035:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop62;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_.§4!h§);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1220:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().Normalize());
                                                                                                                                                                                                                                                addr1223:
                                                                                                                                                                                                                                                while(!(_loc19_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   §§goto(addr1231);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop66;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1080:
                                                                                                                                                                                                                                          while(!_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop92;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1189);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1035);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop87;
                                                                                                                                                                                                                                    §§goto(addr1025);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1097:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop70;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                       §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                          if(_loc18_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1076:
                                                                                                                                                                                                                                             §§push(§§pop() * param1.§^!_§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                          §§goto(addr1080);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1076);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1080);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                    §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * param1.§^!_§);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1052:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr955);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1223);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1083:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param1.§`M§);
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop69;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop88;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop59;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1220);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1083);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop65;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop58;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc19_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1008);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1037);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1219);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1025);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1250);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr768);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1969);
                                                                                                                                                }
                                                                                                                                                addr1268:
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1.§@<§);
                                                                                                                                             if(_loc18_ || this)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1645);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1969);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1327);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1982);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1268);
                                                                                                                              }
                                                                                                                              §§goto(addr1649);
                                                                                                                           }
                                                                                                                           §§goto(addr1684);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loc7_ = this.§0!a§[_loc4_];
                                                                                                                           if(_loc19_ && param2)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           _loc7_.§9r§();
                                                                                                                           if(_loc19_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr645:
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr645);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1463);
                                                                                                                  }
                                                                                                                  §§goto(addr1982);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr662);
                                                                                                         }
                                                                                                         §§goto(addr1982);
                                                                                                      }
                                                                                                      §§goto(addr1514);
                                                                                                   }
                                                                                                   §§goto(addr1304);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      continue loop128;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr2033);
                                                                                             }
                                                                                             addr592:
                                                                                          }
                                                                                          §§goto(addr1463);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          §§goto(addr1683);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr1965);
                                                                                    addr1675:
                                                                                    addr585:
                                                                                 }
                                                                                 §§goto(addr667);
                                                                              }
                                                                              §§goto(addr603);
                                                                           }
                                                                           §§goto(addr675);
                                                                        }
                                                                        §§goto(addr611);
                                                                     }
                                                                     §§goto(addr1348);
                                                                  }
                                                                  §§goto(addr1665);
                                                               }
                                                               else
                                                               {
                                                                  _loc7_ = this.§0!a§[_loc5_];
                                                                  if(_loc19_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  _loc7_.SolveVelocityConstraints(param1);
                                                                  if(!(_loc18_ || param2))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(_loc5_);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(_loc18_)
                                                                     {
                                                                        addr536:
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                     continue;
                                                                  }
                                                                  §§goto(addr536);
                                                               }
                                                            }
                                                            §§goto(addr1969);
                                                         }
                                                         §§goto(addr1965);
                                                      }
                                                   }
                                                   §§goto(addr1579);
                                                }
                                                §§goto(addr1675);
                                             }
                                          }
                                          §§goto(addr1288);
                                       }
                                       §§goto(addr1280);
                                    }
                                    else
                                    {
                                       _loc7_ = this.§0!a§[_loc4_];
                                       if(_loc18_ || param3)
                                       {
                                          _loc7_.InitVelocityConstraints(param1);
                                          if(!_loc18_)
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(_loc4_);
                                       if(_loc18_ || this)
                                       {
                                          §§push(§§pop() + 1);
                                          if(!_loc19_)
                                          {
                                             addr452:
                                             §§push(int(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                          continue;
                                       }
                                       §§goto(addr452);
                                    }
                                 }
                                 §§goto(addr592);
                              }
                              break;
                           }
                           _loc4_ = §§pop();
                           if(!(_loc19_ && param1))
                           {
                              §§goto(addr585);
                           }
                           §§goto(addr1348);
                        }
                        §§goto(addr1327);
                     }
                     §§goto(addr1519);
                  }
                  §§goto(addr1674);
               }
               §§goto(addr1665);
            }
            §§goto(addr1654);
         }
         §§goto(addr379);
      }
      
      public function §`k§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:* = false;
         if(_loc14_ || _loc3_)
         {
            §§push(this.§%A§);
            if(_loc14_)
            {
               §§pop().§2@§(param1,this.§`!4§,this.§ !Q§,this.§6I§);
               addr56:
               §§push(this.§%A§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!(_loc13_ && _loc3_))
            {
               §§push(0);
               if(_loc14_ || _loc2_)
               {
                  §§push(int(§§pop()));
               }
               _loc2_ = §§pop();
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§ var§);
                  if(_loc14_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(0);
                           loop3:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop4:
                              while(_loc14_ || param1)
                              {
                                 _loc2_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc14_)
                                       {
                                          if(!(_loc13_ && this))
                                          {
                                             if(!_loc13_)
                                             {
                                                §§push(param1.§[Z§);
                                                if(!(_loc13_ && this))
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(0);
                                                            if(_loc14_ || this)
                                                            {
                                                               if(_loc13_ && this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr180);
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     addr174:
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               §§push(int(§§pop()));
                                                               if(!(_loc13_ && _loc2_))
                                                               {
                                                                  addr120:
                                                                  if(!(_loc14_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc14_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(!(_loc13_ && _loc2_))
                                                                     {
                                                                        addr137:
                                                                        if(false)
                                                                        {
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc13_ && _loc2_))
                                                                              {
                                                                                 §§push(this.§ var§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             if(!(_loc13_ && param1))
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             addr253:
                                                                                             while(_loc14_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                addr242:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             addr244:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                addr232:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc13_ && this)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(_loc3_);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         addr275:
                                                                                                         §§push(int(§§pop() + 1));
                                                                                                         break loop4;
                                                                                                      }
                                                                                                      §§push(§§pop() + 1);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               addr208:
                                                                                                               §§push(int(§§pop()));
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr850:
                                                                                                      if(§§pop() < this.§+C§)
                                                                                                      {
                                                                                                         _loc6_ = this.§,!<§[_loc2_];
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            if(_loc6_.§6!-§() == b2Body.b2_staticBody)
                                                                                                            {
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  addr311:
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 1);
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(int(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     if(!(_loc13_ && param1))
                                                                                                                     {
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           if(_loc14_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 addr340:
                                                                                                                                 _loc6_.§"!_§();
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc13_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          if(_loc14_ || this)
                                                                                                                                          {
                                                                                                                                             §§goto(addr311);
                                                                                                                                          }
                                                                                                                                          addr848:
                                                                                                                                          §§push(param1.§`M§);
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.§4!h§);
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                addr825:
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   addr829:
                                                                                                                                                   _loc8_ = §§pop() * §§pop();
                                                                                                                                                   addr830:
                                                                                                                                                   addr828:
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   if(_loc14_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr792:
                                                                                                                                                      §§push(§§pop() * _loc7_);
                                                                                                                                                      §§push(_loc8_ * _loc8_);
                                                                                                                                                      if(!_loc13_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc13_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr806:
                                                                                                                                                            if(§§pop() + §§pop() > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                            {
                                                                                                                                                               addr813:
                                                                                                                                                               _loc6_.§4!h§.Normalize();
                                                                                                                                                               addr780:
                                                                                                                                                               addr763:
                                                                                                                                                               addr761:
                                                                                                                                                               §§push(_loc6_.§4!h§);
                                                                                                                                                               §§push(_loc6_.§4!h§.x);
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  addr779:
                                                                                                                                                                  §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr778:
                                                                                                                                                                     §§push(§§pop() * param1.§^!_§);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               addr781:
                                                                                                                                                               addr810:
                                                                                                                                                               addr812:
                                                                                                                                                               §§push(_loc6_.§4!h§);
                                                                                                                                                               if(!(_loc13_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.§4!h§);
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§^!_§);
                                                                                                                                                                              if(_loc14_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr744:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc14_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr752:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       addr755:
                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr688:
                                                                                                                                                                                          §§push(param1.§`M§);
                                                                                                                                                                                          §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                          if(!(_loc13_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr698:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc14_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr708:
                                                                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                                                                   addr709:
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   if(_loc14_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc14_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                                                                  if(_loc14_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc13_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!(_loc13_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc14_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr637:
                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr641:
                                                                                                                                                                                                                                             §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                             if(_loc14_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc14_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr663:
                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr666:
                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                            if(_loc14_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr680:
                                                                                                                                                                                                                                                                  §§push(§§pop() * param1.§^!_§);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                               addr528:
                                                                                                                                                                                                                                                               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                                                                               addr525:
                                                                                                                                                                                                                                                               if(!_loc13_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr514:
                                                                                                                                                                                                                                                                  _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                                                                                                                                                                                                  addr513:
                                                                                                                                                                                                                                                                  addr511:
                                                                                                                                                                                                                                                                  if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr485:
                                                                                                                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                        if(_loc14_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr506:
                                                                                                                                                                                                                                                                           addr496:
                                                                                                                                                                                                                                                                           addr495:
                                                                                                                                                                                                                                                                           addr493:
                                                                                                                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                                                                                                                           §§push(_loc6_.m_sweep.c.x);
                                                                                                                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr504:
                                                                                                                                                                                                                                                                              §§push(§§pop() + param1.§`M§ * _loc6_.§4!h§.x);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                                                                           addr397:
                                                                                                                                                                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                           if(_loc14_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().c);
                                                                                                                                                                                                                                                                              if(_loc14_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                 if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                                                                       if(_loc14_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(param1.§`M§);
                                                                                                                                                                                                                                                                                             if(_loc14_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc6_.§4!h§);
                                                                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                         if(_loc14_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr466:
                                                                                                                                                                                                                                                                                                            §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                            addr467:
                                                                                                                                                                                                                                                                                                            if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc14_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().a);
                                                                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(param1.§`M§);
                                                                                                                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§pop().a = §§pop();
                                                                                                                                                                                                                                                                                                                              addr393:
                                                                                                                                                                                                                                                                                                                              §§goto(addr340);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr514);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr513);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr485);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr397);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr666);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr525);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr781);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr637);
                                                                                                                                                                                                                                                                                                            addr465:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr504);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr465);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr506);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr466);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr496);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr495);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr493);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr528);
                                                                                                                                                                                                                                                                           addr507:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr511);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr830);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr709);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr684:
                                                                                                                                                                                                                                                               §§goto(addr684);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr680);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                                                                         §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * param1.§^!_§);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                         §§goto(addr466);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr792);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr828);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr688);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr708);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr755);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr528);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr688);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr663);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr847:
                                                                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                                                                              §§goto(addr848);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr813);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr641);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr792);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr663);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr845:
                                                                                                                                                                                                               §§goto(addr847);
                                                                                                                                                                                                               §§push(Number(§§pop() * _loc6_.§4!h§.x));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr829);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr792);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr698);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr641);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr829);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr806);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr810);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr780);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr779);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr778);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr744);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr752);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr763);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr812);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr761);
                                                                                                                                                               addr814:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr688);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr825);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr806);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr848);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr845);
                                                                                                                                       }
                                                                                                                                       §§goto(addr814);
                                                                                                                                    }
                                                                                                                                    §§goto(addr514);
                                                                                                                                 }
                                                                                                                                 §§goto(addr467);
                                                                                                                              }
                                                                                                                              addr849:
                                                                                                                              §§goto(addr850);
                                                                                                                              §§push(_loc2_);
                                                                                                                           }
                                                                                                                           §§goto(addr528);
                                                                                                                        }
                                                                                                                        §§goto(addr507);
                                                                                                                     }
                                                                                                                     §§goto(addr393);
                                                                                                                  }
                                                                                                                  §§goto(addr340);
                                                                                                               }
                                                                                                               §§goto(addr848);
                                                                                                            }
                                                                                                            §§goto(addr845);
                                                                                                            §§push(param1.§`M§);
                                                                                                         }
                                                                                                         §§goto(addr829);
                                                                                                      }
                                                                                                      addr853:
                                                                                                      §§push(0.75);
                                                                                                      if(_loc14_ || param1)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc5_:* = §§pop();
                                                                                                      if(!(_loc13_ && this))
                                                                                                      {
                                                                                                         addr1192:
                                                                                                         _loc2_ = int(0);
                                                                                                      }
                                                                                                      addr875:
                                                                                                      addr1193:
                                                                                                      §§push(_loc2_);
                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                      {
                                                                                                         if(!(_loc13_ && this))
                                                                                                         {
                                                                                                            if(_loc14_ || param1)
                                                                                                            {
                                                                                                               §§push(param1.§@<§);
                                                                                                               if(_loc14_ || _loc2_)
                                                                                                               {
                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                  {
                                                                                                                     if(_loc14_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              addr929:
                                                                                                                              this.§0k§(_loc4_.§%!,§);
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    addr980:
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr929);
                                                                                                                                    }
                                                                                                                                    if(!(_loc13_ && this))
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr1076:
                                                                                                                                          §§push(_loc3_ + 1);
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             addr1080:
                                                                                                                                             _loc3_ = int(§§pop());
                                                                                                                                             if(_loc14_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc13_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr1014:
                                                                                                                                                   if(_loc3_ >= this.§ var§)
                                                                                                                                                   {
                                                                                                                                                      addr1019:
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      if(_loc14_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr1028:
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         if(_loc14_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc14_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!(_loc13_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1053:
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           addr1056:
                                                                                                                                                                           if(!(_loc13_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc14_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr1071:
                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc14_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr971:
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr978:
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr980);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + 1);
                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr992:
                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                            if(_loc14_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc13_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc2_ = §§pop();
                                                                                                                                                                                                                     addr1009:
                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr875);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1171:
                                                                                                                                                                                                                        §§push(int(0));
                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc3_ = §§pop();
                                                                                                                                                                                                                           §§goto(addr1014);
                                                                                                                                                                                                                           addr1175:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1192);
                                                                                                                                                                                                                        addr1180:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1019);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1171);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1080);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1014);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr992);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1192);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr992);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1107:
                                                                                                                                                                                                if(_loc14_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                                                                   §§goto(addr980);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1143:
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                §§push(Boolean(_loc12_));
                                                                                                                                                                                                if(_loc14_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1179:
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1105:
                                                                                                                                                                                                         §§goto(addr1107);
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc11_ = Boolean(§§pop());
                                                                                                                                                                                                      §§goto(addr1180);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1167:
                                                                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                   addr1168:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1141:
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1143);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1105);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1107);
                                                                                                                                                                                                addr1144:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1019);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1028);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1056);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr971);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1175);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1179);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr971);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr978);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1141);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1053);
                                                                                                                                                            }
                                                                                                                                                            addr1187:
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                         §§goto(addr1179);
                                                                                                                                                         §§push(true);
                                                                                                                                                         addr1189:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr971);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1167);
                                                                                                                                                   §§push(Boolean(this.§0!a§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                                                                                }
                                                                                                                                                §§goto(addr1189);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1144);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1171);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1193);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1168);
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§goto(addr1009);
                                                                                                                           }
                                                                                                                           §§goto(addr1080);
                                                                                                                        }
                                                                                                                        §§goto(addr1071);
                                                                                                                     }
                                                                                                                     §§goto(addr929);
                                                                                                                  }
                                                                                                                  §§goto(addr1187);
                                                                                                                  §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                                               }
                                                                                                               §§goto(addr1014);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1076);
                                                                                                      }
                                                                                                      §§goto(addr992);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             §§goto(addr244);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr853);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§0!a§[_loc3_].SolveVelocityConstraints(param1);
                                                                                    }
                                                                                    §§goto(addr232);
                                                                                 }
                                                                                 continue loop2;
                                                                                 addr150:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr180:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 addr181:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc13_ && _loc2_))
                                                                                    {
                                                                                       if(_loc14_ || _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr204);
                                                                                    }
                                                                                 }
                                                                                 _loc2_ = §§pop();
                                                                                 continue loop6;
                                                                              }
                                                                              §§goto(addr209);
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr849);
                                                                     }
                                                                     §§goto(addr853);
                                                                  }
                                                                  §§goto(addr275);
                                                               }
                                                               §§goto(addr850);
                                                               §§goto(addr242);
                                                            }
                                                            §§goto(addr850);
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                      else
                                                      {
                                                         _loc4_.SolveVelocityConstraints();
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                   §§goto(addr150);
                                                }
                                                §§goto(addr850);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr120);
                                    }
                                    continue loop3;
                                 }
                              }
                              _loc2_ = §§pop();
                              continue loop0;
                           }
                        }
                     }
                     else
                     {
                        this.§0!a§[_loc2_].InitVelocityConstraints(param1);
                     }
                     §§goto(addr288);
                  }
                  §§goto(addr850);
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §0k§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!(_loc6_ && _loc3_))
         {
            if(this.§+!>§ == null)
            {
               if(_loc7_)
               {
                  return;
               }
            }
         }
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ < this.§ !Q§)
         {
            _loc3_ = this.§`!4§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(!(_loc6_ && this))
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc5_ = §§pop();
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop5:
                           while(!(_loc6_ && _loc3_))
                           {
                              if(§§pop() >= _loc4_.§39§)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§+!>§.PostSolve(_loc3_,§"3§);
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(_loc2_);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(!_loc6_)
                                             {
                                                addr72:
                                                if(!_loc7_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(int(§§pop()));
                                             }
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             if(_loc7_ || _loc2_)
                                             {
                                                _loc2_ = §§pop();
                                                if(!(_loc7_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc7_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr191:
                                                   while(true)
                                                   {
                                                      §§push(§"3§);
                                                      if(_loc6_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      §§pop().§]!<§[_loc5_] = _loc4_.§]!8§[_loc5_].tangentImpulse;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc6_)
                                                {
                                                   §§push(int(§§pop()));
                                                   break loop5;
                                                }
                                                break loop5;
                                             }
                                          }
                                          §§goto(addr72);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                          addr148:
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              else
                              {
                                 §§push(§"3§);
                              }
                              §§goto(addr183);
                           }
                           continue loop1;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr191);
         }
      }
      
      public function §0!Y§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
            param1.§"+§ = this.§+C§;
         }
         var _loc2_:* = this.§+C§++;
         this.§,!<§[_loc2_] = param1;
      }
      
      public function §^]§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§ !Q§++;
         this.§`!4§[_loc2_] = param1;
      }
      
      public function §5p§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§ var§++;
         this.§0!a§[_loc2_] = param1;
      }
   }
}
