package § D§
{
   import §&!-§.*;
   import §7a§.*;
   import §8>§.*;
   import §;u§.*;
   import §[!N§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §'!1§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'!1§ = new b2ContactImpulse();
         }
      }
      
      private var §>#§;
      
      private var §[i§:b2ContactListener;
      
      private var §2!R§:b2ContactSolver;
      
      b2internal var §=!j§:Vector.<b2Body>;
      
      b2internal var §>I§:Vector.<b2Contact>;
      
      b2internal var §<!m§:Vector.<b2Joint>;
      
      b2internal var §1!;§:int;
      
      b2internal var §+!R§:int;
      
      b2internal var §#4§:int;
      
      private var §[t§:int;
      
      b2internal var §,!r§:int;
      
      b2internal var §8W§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§=!j§ = new Vector.<b2Body>();
               while(true)
               {
                  this.§>I§ = new Vector.<b2Contact>();
                  continue loop0;
                  addr42:
                  if(_loc1_ || this)
                  {
                     return;
                     addr59:
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §7R§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            this.§[t§ = param1;
            loop0:
            while(true)
            {
               this.§,!r§ = param2;
               loop1:
               while(true)
               {
                  this.§8W§ = param3;
                  while(true)
                  {
                     this.§1!;§ = 0;
                     loop3:
                     while(_loc8_)
                     {
                        if(_loc9_)
                        {
                           continue loop1;
                        }
                        this.§#4§ = 0;
                        while(true)
                        {
                           this.§+!R§ = 0;
                           loop5:
                           while(true)
                           {
                              this.§>#§ = param4;
                              loop6:
                              while(!_loc9_)
                              {
                                 this.§[i§ = param5;
                                 while(_loc8_)
                                 {
                                    this.§2!R§ = param6;
                                    loop8:
                                    while(!(_loc9_ && param3))
                                    {
                                       continue loop5;
                                       while(true)
                                       {
                                          _loc7_ = int(this.§=!j§.length);
                                          if(_loc9_ && param2)
                                          {
                                             continue loop8;
                                          }
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          §§goto(addr217);
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(!(_loc9_ && param2))
                                          {
                                             §§push(param1);
                                             loop11:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   this.§=!j§[_loc7_] = null;
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(int(this.§>I§.length));
                                                }
                                                loop17:
                                                while(true)
                                                {
                                                   if(_loc9_ && param1)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(int(this.§<!m§.length));
                                                         loop19:
                                                         while(!(_loc9_ && param2))
                                                         {
                                                            _loc7_ = §§pop();
                                                            loop20:
                                                            while(true)
                                                            {
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!(_loc8_ || this))
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(param3);
                                                                     if(!(_loc9_ && param3))
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc9_ && param3)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             _loc7_++;
                                                                                             break;
                                                                                          }
                                                                                          break loop21;
                                                                                       }
                                                                                       break loop17;
                                                                                    }
                                                                                    addr137:
                                                                                    if(!(_loc8_ || param3))
                                                                                    {
                                                                                       break loop11;
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              addr84:
                                                                              _loc7_++;
                                                                           }
                                                                           addr111:
                                                                           if(_loc9_ && param3)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr158:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr128:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              addr87:
                                                                              while(true)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              §§goto(addr128);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§<!m§[_loc7_] = null;
                                                                        }
                                                                        while(_loc8_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§goto(addr84);
                                                                           }
                                                                           §§goto(addr111);
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  §§goto(addr87);
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                         addr157:
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            §§goto(addr158);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.§>I§[_loc7_] = null;
                                                   }
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr153);
                                             }
                                             _loc7_++;
                                             continue;
                                          }
                                          §§goto(addr157);
                                       }
                                    }
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           if(!(_loc8_ || this))
                           {
                              continue;
                           }
                           §§goto(addr212);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr212);
      }
      
      public function §1!E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§1!;§ = 0;
            do
            {
               this.§#4§ = 0;
               do
               {
                  this.§+!R§ = 0;
               }
               while(!(_loc1_ || this));
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §[!T§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         if(_loc19_)
         {
            _loc4_ = 0;
         }
         while(_loc4_ < this.§1!;§)
         {
            if((_loc6_ = this.§=!j§[_loc4_]).§0!@§() != b2Body.b2_dynamicBody)
            {
               if(!(_loc18_ && this))
               {
                  while(true)
                  {
                     _loc4_++;
                     if(_loc19_)
                     {
                        if(true)
                        {
                           break;
                        }
                        loop14:
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.m_angularVelocity);
                           if(!(_loc18_ && param1))
                           {
                              §§push(b2Math);
                              §§push(1);
                              §§push(param1.§6c§);
                              if(_loc19_)
                              {
                                 §§push(§§pop() * _loc6_.§&! §);
                              }
                              §§push(§§pop() * §§pop().§5L§(§§pop() - §§pop(),0,1));
                           }
                           §§pop().m_angularVelocity = §§pop();
                           addr231:
                           while(true)
                           {
                              continue loop14;
                           }
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
                           addr264:
                           loop8:
                           while(true)
                           {
                              §§push(_loc6_.§9!§);
                              if(_loc19_)
                              {
                                 while(true)
                                 {
                                    §§push(b2Math);
                                    §§push(1);
                                    §§push(param1.§6c§);
                                    if(!(_loc18_ && param2))
                                    {
                                       §§push(§§pop() * _loc6_.§ u§);
                                    }
                                    §§push(§§pop().§5L§(§§pop() - §§pop(),0,1));
                                    if(_loc19_ || param3)
                                    {
                                       §§pop().§;a§(§§pop());
                                       while(_loc18_)
                                       {
                                       }
                                       §§goto(addr231);
                                       addr229:
                                    }
                                    else
                                    {
                                       addr311:
                                       while(true)
                                       {
                                          §§pop().y = §§pop();
                                       }
                                       addr311:
                                    }
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc6_.m_angularVelocity);
                                       if(!_loc18_)
                                       {
                                          §§push(param1.§6c§);
                                          if(!(_loc18_ && this))
                                          {
                                             §§push(_loc6_.§^!B§);
                                             if(!(_loc18_ && param3))
                                             {
                                                addr263:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc18_)
                                                {
                                                   addr261:
                                                   §§push(§§pop() * _loc6_.§`!R§);
                                                }
                                                §§pop().m_angularVelocity = §§pop() + §§pop();
                                                continue loop8;
                                             }
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr263);
                                    }
                                 }
                                 addr203:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_.§9!§);
                                    addr269:
                                    while(true)
                                    {
                                       §§push(§§pop().y);
                                       if(_loc19_ || param2)
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§6c§);
                                             if(!(_loc18_ && this))
                                             {
                                                §§push(param2.y);
                                                if(!(_loc18_ && param2))
                                                {
                                                   §§push(_loc6_.§1!X§);
                                                   if(!(_loc18_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.§2!§);
                                                         addr306:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            addr307:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                         }
                                                      }
                                                      addr304:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   addr308:
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                }
                                                addr309:
                                             }
                                             addr310:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr277:
                                       }
                                    }
                                    continue loop8;
                                 }
                                 addr267:
                              }
                              §§goto(addr311);
                           }
                        }
                        §§goto(addr229);
                     }
                  }
                  continue;
               }
               §§goto(addr231);
            }
            else
            {
               §§push(_loc6_.§9!§);
               if(!(_loc18_ && this))
               {
                  §§push(_loc6_.§9!§);
                  if(!(_loc18_ && this))
                  {
                     §§push(§§pop().x);
                     if(!_loc18_)
                     {
                        §§push(param1.§6c§);
                        if(!_loc18_)
                        {
                           §§push(param2.x);
                           if(!_loc18_)
                           {
                              §§push(_loc6_.§1!X§);
                              if(!(_loc18_ && param2))
                              {
                                 §§push(_loc6_.§2!§);
                                 if(!(_loc18_ && param3))
                                 {
                                    §§push(§§pop().x);
                                    if(_loc19_ || param2)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc19_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc18_ && param3))
                                          {
                                             addr136:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc18_ && param3))
                                             {
                                                addr144:
                                                §§push(§§pop() + §§pop());
                                                if(_loc19_ || param3)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!(_loc18_ && param2))
                                                   {
                                                      §§goto(addr267);
                                                      §§push(_loc6_.§9!§);
                                                   }
                                                   §§goto(addr264);
                                                }
                                                §§goto(addr277);
                                             }
                                             §§goto(addr310);
                                          }
                                          §§goto(addr309);
                                       }
                                       §§goto(addr304);
                                    }
                                    §§goto(addr307);
                                 }
                                 §§goto(addr306);
                              }
                              §§goto(addr308);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr311);
                  }
                  §§goto(addr269);
               }
            }
            §§goto(addr203);
         }
         if(!_loc18_)
         {
            §§push(this.§2!R§);
            if(_loc19_)
            {
               §§pop().§7R§(param1,this.§>I§,this.§#4§,this.§>#§);
               addr331:
               §§push(this.§2!R§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(_loc19_ || this)
            {
               §§push(0);
               if(_loc19_)
               {
                  _loc4_ = §§pop();
                  if(!(_loc18_ && param3))
                  {
                     loop19:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc19_)
                        {
                           §§push(this.§+!R§);
                           if(!(_loc18_ && param2))
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§<!m§[_loc4_]).InitVelocityConstraints(param1);
                                 if(!(_loc18_ && param3))
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(_loc19_)
                              {
                                 §§push(0);
                                 if(!_loc18_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc19_ || param1)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc19_)
                                          {
                                             loop45:
                                             while(true)
                                             {
                                                §§push(param1.§@!Y§);
                                                if(_loc19_ || param2)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         §§push(0);
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(!_loc18_)
                                                            {
                                                               addr486:
                                                               loop145:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     addr507:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§+!R§);
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           break loop45;
                                                                        }
                                                                        break;
                                                                     }
                                                                     loop144:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr1664:
                                                                              §§push(0);
                                                                              if(_loc19_)
                                                                              {
                                                                                 break loop19;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§1!;§);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc19_ || param1)
                                                                                       {
                                                                                          §§goto(addr1677);
                                                                                       }
                                                                                       §§goto(addr1687);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push((_loc6_ = this.§=!j§[_loc4_]).§0!@§());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(b2Body.b2_staticBody);
                                                                                          if(!(_loc18_ && param2))
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   loop102:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_++;
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            if(_loc19_ || param1)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               loop103:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(b2Math.§^!n§(_loc15_,_loc6_.§ !"§));
                                                                                                                  if(_loc19_ || param3)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  if(_loc19_ || param3)
                                                                                                                  {
                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                     {
                                                                                                                        _loc15_ = §§pop();
                                                                                                                        loop117:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    break loop117;
                                                                                                                                 }
                                                                                                                                 addr1528:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 loop118:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(b2Math.§1!P§(_loc6_.§9!§,_loc6_.§9!§));
                                                                                                                                    addr1572:
                                                                                                                                    loop113:
                                                                                                                                    while(_loc19_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       if(!(_loc18_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             loop108:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      _loc6_.§ !"§ = 0;
                                                                                                                                                      addr1597:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               continue loop113;
                                                                                                                                                            }
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            while(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                  addr1655:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr1630:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.§ !<§);
                                                                                                                                                                        addr1632:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(b2Body.§=7§);
                                                                                                                                                                           addr1634:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() & §§pop());
                                                                                                                                                                              addr1635:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 addr1636:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       while(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             break loop108;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop108;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   continue loop118;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1640);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1640:
                                                                                                                                                                                       continue loop103;
                                                                                                                                                                                       addr1615:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1641);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            break loop117;
                                                                                                                                                            addr1561:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1561);
                                                                                                                                                      }
                                                                                                                                                      addr1597:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1597);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   §§push(_loc6_.§ !"§);
                                                                                                                                                   if(_loc19_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + param1.§6c§);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§ !"§ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_ && this)
                                                                                                                                                      {
                                                                                                                                                         break loop108;
                                                                                                                                                      }
                                                                                                                                                      continue loop103;
                                                                                                                                                   }
                                                                                                                                                   addr1546:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1655);
                                                                                                                                                §§goto(addr1641);
                                                                                                                                             }
                                                                                                                                             loop120:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.m_angularVelocity);
                                                                                                                                                addr1601:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.m_angularVelocity);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      break loop113;
                                                                                                                                                   }
                                                                                                                                                   addr1607:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                      if(_loc19_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1615);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop120;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr1644:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1625);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1607);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1607);
                                                                                                                                       §§goto(addr1572);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1628:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1546);
                                                                                                                        }
                                                                                                                        continue loop102;
                                                                                                                        addr1524:
                                                                                                                     }
                                                                                                                     §§goto(addr1601);
                                                                                                                  }
                                                                                                                  §§goto(addr1561);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1597);
                                                                                                         }
                                                                                                         §§goto(addr1564);
                                                                                                      }
                                                                                                      §§goto(addr1524);
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr1644);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc6_.§ !<§);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   addr1446:
                                                                                                   §§push(b2Body.§=7§);
                                                                                                   if(!(_loc18_ && param3))
                                                                                                   {
                                                                                                      addr1455:
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(_loc19_ || this)
                                                                                                               {
                                                                                                                  _loc6_.§ !"§ = 0;
                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(_loc19_ || param2)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     §§goto(addr1654);
                                                                                                                  }
                                                                                                                  §§goto(addr1628);
                                                                                                               }
                                                                                                               §§goto(addr1528);
                                                                                                            }
                                                                                                            §§goto(addr1630);
                                                                                                         }
                                                                                                         §§goto(addr1636);
                                                                                                      }
                                                                                                      §§goto(addr1635);
                                                                                                   }
                                                                                                   §§goto(addr1634);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1632);
                                                                                          }
                                                                                          §§goto(addr1455);
                                                                                       }
                                                                                       §§goto(addr1446);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1725);
                                                                              }
                                                                              addr1664:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc19_)
                                                                              {
                                                                                 break loop145;
                                                                              }
                                                                              break loop21;
                                                                           }
                                                                           addr1393:
                                                                           addr1114:
                                                                        }
                                                                        else
                                                                        {
                                                                           if((_loc6_ = this.§=!j§[_loc4_]).§0!@§() == b2Body.b2_staticBody)
                                                                           {
                                                                              if(_loc19_ || param3)
                                                                              {
                                                                                 loop99:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_++;
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr595:
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             loop79:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc6_.§ n§();
                                                                                                addr602:
                                                                                                loop80:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      if(_loc19_ || param3)
                                                                                                      {
                                                                                                         if(_loc19_ || this)
                                                                                                         {
                                                                                                            continue loop99;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_.m_angularVelocity);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc19_ || param1)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              §§push(b2Settings.b2_maxRotation);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * param1.§7i§);
                                                                                                                              }
                                                                                                                              §§pop().m_angularVelocity = §§pop();
                                                                                                                              loop50:
                                                                                                                              while(_loc19_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                       loop61:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                          addr803:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                             loop63:
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
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            continue loop50;
                                                                                                                                                         }
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                            loop67:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                               addr754:
                                                                                                                                                               addr677:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                  addr756:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                     addr757:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param1.§6c§);
                                                                                                                                                                           if(!(_loc18_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.§9!§);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 addr772:
                                                                                                                                                                                 addr718:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc6_.§9!§);
                                                                                                                                                                                 if(!(_loc19_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr774:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr739:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          break loop79;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr773:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       addr773:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       break loop80;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr774:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr772);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr773);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr773);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr774);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop61;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                  addr749:
                                                                                                                                                                  continue loop67;
                                                                                                                                                                  if(_loc19_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop63;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr774);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc6_.§9!§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().Normalize();
                                                                                                                                                            break loop50;
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
                                                                                                                                 §§push(_loc6_.§9!§);
                                                                                                                                 loop52:
                                                                                                                                 for(; _loc19_ || param2; §§push(_loc6_.§9!§),if(!(_loc19_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 },§§goto(addr975))
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.§9!§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(b2Settings.b2_maxTranslation);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1.§7i§);
                                                                                                                                             addr1044:
                                                                                                                                             addr1003:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr1045:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             if(_loc18_ && param2)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(param1.§7i§);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1015:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc19_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr1023:
                                                                                                                                                   §§pop().y = §§pop() * §§pop();
                                                                                                                                                   §§goto(addr1024);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1045);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr1044);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1045);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr1046:
                                                                                                                                       loop57:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          addr1047:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc19_ || this))
                                                                                                                                             {
                                                                                                                                                break loop57;
                                                                                                                                             }
                                                                                                                                             continue loop52;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr975:
                                                                                                                                       §§goto(addr1087);
                                                                                                                                       §§push(_loc6_.§9!§);
                                                                                                                                       if(_loc18_ && param3)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(b2Settings.b2_maxTranslation);
                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                             {
                                                                                                                                                §§goto(addr1003);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1015);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1046);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1023);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1077);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(!(_loc18_ && param3))
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              §§push(b2Settings.b2_maxRotation);
                                                                                                                              if(_loc19_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(_loc19_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * param1.§7i§);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§pop().m_angularVelocity = §§pop();
                                                                                                                              §§goto(addr957);
                                                                                                                           }
                                                                                                                           §§goto(addr1047);
                                                                                                                           addr928:
                                                                                                                        }
                                                                                                                        §§goto(addr1058);
                                                                                                                     }
                                                                                                                     §§goto(addr1071);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1085);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr659);
                                                                                                }
                                                                                                while(_loc19_ || this)
                                                                                                {
                                                                                                   §§goto(addr677);
                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                }
                                                                                                §§goto(addr928);
                                                                                                §§goto(addr595);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(_loc19_ || param2)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§1!;§);
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         continue loop144;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(!(_loc18_ && this))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    addr1279:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc19_ || param1)
                                                                                                                                       {
                                                                                                                                          addr1287:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc13_);
                                                                                                                                          }
                                                                                                                                          addr1287:
                                                                                                                                       }
                                                                                                                                       addr1363:
                                                                                                                                       loop28:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          loop29:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr1326:
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  _loc17_ = §§pop();
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop28;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc19_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1393);
                                                                                                                                                                           addr1415:
                                                                                                                                                                           _loc4_++;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        if(_loc19_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           _loc4_ = §§pop();
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1300:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1656);
                                                                                                                                                                              }
                                                                                                                                                                              addr1300:
                                                                                                                                                                           }
                                                                                                                                                                           break loop29;
                                                                                                                                                                        }
                                                                                                                                                                        break loop21;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                  continue loop28;
                                                                                                                                                               }
                                                                                                                                                               addr1362:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1677);
                                                                                                                                                         }
                                                                                                                                                         while(!(_loc18_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1362);
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            if(!(_loc18_ && param3))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1354);
                                                                                                                                                                     }
                                                                                                                                                                     addr1353:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1677);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1391:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1677);
                                                                                                                                                         }
                                                                                                                                                         addr1354:
                                                                                                                                                         addr1383:
                                                                                                                                                      }
                                                                                                                                                      addr1677:
                                                                                                                                                      §§goto(addr1679);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1353);
                                                                                                                                                }
                                                                                                                                                addr1679:
                                                                                                                                                §§goto(addr1676);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1326);
                                                                                                                                          }
                                                                                                                                          addr1676:
                                                                                                                                          if(_loc15_ >= b2Settings.b2_timeToSleep)
                                                                                                                                          {
                                                                                                                                             if(!(_loc18_ && param3))
                                                                                                                                             {
                                                                                                                                                addr1687:
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                {
                                                                                                                                                   break loop21;
                                                                                                                                                }
                                                                                                                                                loop143:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§1!;§);
                                                                                                                                                   addr1725:
                                                                                                                                                   while(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      (_loc6_ = this.§=!j§[_loc4_]).SetAwake(false);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         _loc4_++;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop143;
                                                                                                                                                      }
                                                                                                                                                      continue loop143;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr1723:
                                                                                                                                             }
                                                                                                                                             addr1708:
                                                                                                                                             §§goto(addr1722);
                                                                                                                                          }
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr1279:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    addr1368:
                                                                                                                                    if(!(_loc19_ || this))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1383);
                                                                                                                                                }
                                                                                                                                                addr1380:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr1403:
                                                                                                                                                this.§[!4§(_loc8_.§!F§);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(param3);
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1368);
                                                                                                                                                   addr1410:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1687);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1414);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1415);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr1414:
                                                                                                                                             §§goto(addr1687);
                                                                                                                                             addr1413:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1391);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1677);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1412:
                                                                                                                              }
                                                                                                                              §§goto(addr1413);
                                                                                                                           }
                                                                                                                           addr1270:
                                                                                                                        }
                                                                                                                        §§goto(addr1279);
                                                                                                                     }
                                                                                                                     addr1262:
                                                                                                                  }
                                                                                                                  §§goto(addr1375);
                                                                                                               }
                                                                                                               addr1254:
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push((_loc7_ = this.§<!m§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(!(_loc18_ && param2))
                                                                                                            {
                                                                                                               _loc14_ = §§pop();
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     loop34:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr1237:
                                                                                                                           loop41:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr1238:
                                                                                                                              loop39:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop40:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!(_loc18_ && param2))
                                                                                                                                    {
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(_loc19_ || this)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr1219:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1218:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ && param2))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                continue loop39;
                                                                                                                                             }
                                                                                                                                             continue loop40;
                                                                                                                                          }
                                                                                                                                          continue loop41;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1219);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1237:
                                                                                                                        }
                                                                                                                        §§goto(addr1218);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1237);
                                                                                                               }
                                                                                                               §§goto(addr1238);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1237);
                                                                                                         §§goto(addr1687);
                                                                                                      }
                                                                                                      §§goto(addr1708);
                                                                                                   }
                                                                                                   addr1096:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr1664);
                                                                                             addr1088:
                                                                                          }
                                                                                       }
                                                                                       while(!(_loc18_ && this))
                                                                                       {
                                                                                          §§goto(addr749);
                                                                                       }
                                                                                       §§goto(addr803);
                                                                                    }
                                                                                    §§goto(addr602);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(param1.§6c§);
                                                                              if(!(_loc18_ && param3))
                                                                              {
                                                                                 §§push(_loc6_.§9!§);
                                                                                 if(_loc19_ || param3)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc19_ || param3)
                                                                                          {
                                                                                             addr587:
                                                                                             _loc9_ = §§pop();
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§goto(addr1081);
                                                                                                §§push(param1.§6c§);
                                                                                             }
                                                                                             §§goto(addr818);
                                                                                          }
                                                                                          §§goto(addr879);
                                                                                       }
                                                                                       §§goto(addr1081);
                                                                                    }
                                                                                    §§goto(addr1071);
                                                                                 }
                                                                                 §§goto(addr1083);
                                                                              }
                                                                              §§goto(addr587);
                                                                           }
                                                                           §§goto(addr818);
                                                                        }
                                                                        §§goto(addr1664);
                                                                     }
                                                                     addr507:
                                                                     addr1105:
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(param1.§"!2§);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§goto(addr1400);
                                                                  }
                                                                  §§goto(addr1725);
                                                               }
                                                               addr499:
                                                               addr1396:
                                                            }
                                                            §§goto(addr1287);
                                                         }
                                                         §§goto(addr507);
                                                      }
                                                      §§goto(addr1363);
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(_loc19_ || param1)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc19_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(this.§+!R§);
                                                                  if(!_loc18_)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        (_loc7_ = this.§<!m§[_loc5_]).SolveVelocityConstraints(param1);
                                                                        if(!(_loc18_ && param2))
                                                                        {
                                                                           _loc5_++;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     if(_loc19_)
                                                                     {
                                                                        _loc8_.SolveVelocityConstraints();
                                                                        if(_loc19_)
                                                                        {
                                                                           _loc4_++;
                                                                           if(!_loc18_)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           §§goto(addr486);
                                                                        }
                                                                        §§goto(addr1254);
                                                                     }
                                                                     _loc8_.§;d§();
                                                                     if(!(_loc18_ && param3))
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc18_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(_loc19_)
                                                                           {
                                                                              §§goto(addr1088);
                                                                           }
                                                                           §§goto(addr1127);
                                                                        }
                                                                        §§goto(addr1242);
                                                                     }
                                                                     §§goto(addr1161);
                                                                  }
                                                                  §§goto(addr1105);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr1096);
                                                         }
                                                         §§goto(addr1146);
                                                      }
                                                   }
                                                   §§goto(addr507);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      §§goto(addr519);
                                                   }
                                                   §§goto(addr1687);
                                                }
                                                else
                                                {
                                                   (_loc7_ = this.§<!m§[_loc4_]).§;d§();
                                                   if(!_loc18_)
                                                   {
                                                      _loc4_++;
                                                   }
                                                   §§goto(addr499);
                                                }
                                             }
                                             addr458:
                                          }
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(!_loc18_)
                                       {
                                          §§goto(addr1708);
                                       }
                                       §§goto(addr1677);
                                    }
                                    §§goto(addr1380);
                                 }
                                 §§goto(addr458);
                              }
                              §§goto(addr1300);
                           }
                           §§goto(addr1725);
                        }
                        break;
                     }
                     _loc4_ = §§pop();
                     if(!_loc18_)
                     {
                        §§goto(addr1114);
                     }
                     §§goto(addr1300);
                  }
                  §§goto(addr1708);
               }
               §§goto(addr1119);
            }
            §§goto(addr1708);
         }
         §§goto(addr331);
      }
      
      public function §"0§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         var _loc11_:Boolean = false;
         var _loc12_:* = false;
         if(_loc14_)
         {
            §§push(this.§2!R§);
            if(!(_loc13_ && this))
            {
               §§pop().§7R§(param1,this.§>I§,this.§#4§,this.§>#§);
               addr55:
               §§push(this.§2!R§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(_loc14_)
            {
               _loc2_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc13_)
               {
                  §§push(this.§+!R§);
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        this.§<!m§[_loc2_].InitVelocityConstraints(param1);
                        break;
                     }
                     while(true)
                     {
                        §§push(0);
                     }
                  }
                  _loc2_++;
                  continue;
                  addr218:
                  addr202:
               }
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
                        if(_loc14_ || param1)
                        {
                           if(_loc14_ || _loc3_)
                           {
                              §§push(param1.§@!Y§);
                              if(_loc14_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc14_ || param1)
                                    {
                                       if(_loc14_ || this)
                                       {
                                          §§push(0);
                                          if(!_loc13_)
                                          {
                                             addr100:
                                             _loc2_ = §§pop();
                                             if(_loc14_ || param1)
                                             {
                                                addr108:
                                                if(!(_loc13_ && _loc2_))
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      break;
                                                   }
                                                   if(false)
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         addr121:
                                                         while(true)
                                                         {
                                                            if(!(_loc13_ && param1))
                                                            {
                                                               §§push(this.§+!R§);
                                                               if(!_loc13_)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              _loc2_++;
                                                                              addr140:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc13_ && _loc2_))
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                              addr140:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 addr174:
                                                                                 while(!(_loc13_ && _loc2_))
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              addr195:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc14_ || _loc3_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§goto(addr218);
                                                                           }
                                                                        }
                                                                        §§goto(addr140);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr164:
                                                                        this.§<!m§[_loc3_].SolveVelocityConstraints(param1);
                                                                        while(true)
                                                                        {
                                                                           _loc3_++;
                                                                           if(_loc13_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc13_ && param1))
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr164);
                                                                        }
                                                                        addr765:
                                                                        §§push(0.75);
                                                                        if(_loc14_ || _loc3_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc5_:* = §§pop();
                                                                        if(_loc14_ || _loc3_)
                                                                        {
                                                                           addr1034:
                                                                           _loc2_ = 0;
                                                                           addr787:
                                                                           addr1035:
                                                                           §§push(_loc2_);
                                                                           if(_loc14_ || this)
                                                                           {
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(param1.§"!2§);
                                                                                 if(!(_loc13_ && this))
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc14_ || _loc3_)
                                                                                       {
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             if(_loc14_ || _loc2_)
                                                                                             {
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   addr827:
                                                                                                   this.§[!4§(_loc4_.§!F§);
                                                                                                   addr826:
                                                                                                   if(_loc14_ || this)
                                                                                                   {
                                                                                                      if(!(_loc13_ && param1))
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            if(!(_loc14_ || _loc3_))
                                                                                                            {
                                                                                                               addr1008:
                                                                                                               §§push(_loc11_);
                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                               {
                                                                                                                  addr978:
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     addr981:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr982:
                                                                                                                        §§pop();
                                                                                                                        addr959:
                                                                                                                        addr958:
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           addr957:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        _loc11_ = §§pop();
                                                                                                                        addr983:
                                                                                                                        if(_loc14_ || _loc3_)
                                                                                                                        {
                                                                                                                           _loc3_++;
                                                                                                                           addr947:
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 addr893:
                                                                                                                                 if(_loc3_ >= this.§+!R§)
                                                                                                                                 {
                                                                                                                                    addr898:
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc13_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc13_ && this))
                                                                                                                                                {
                                                                                                                                                   addr925:
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   if(_loc14_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr936:
                                                                                                                                                            if(!(_loc13_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc14_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr867:
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     if(_loc14_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc14_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc13_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr888:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr890:
                                                                                                                                                                                 §§goto(addr826);
                                                                                                                                                                              }
                                                                                                                                                                              _loc2_++;
                                                                                                                                                                              §§goto(addr787);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr978);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr925);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr936);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr959);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr867);
                                                                                                                                                               addr944:
                                                                                                                                                            }
                                                                                                                                                            addr1031:
                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                            addr1022:
                                                                                                                                                            _loc11_ = true;
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc14_ || this)
                                                                                                                                                            {
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               §§goto(addr893);
                                                                                                                                                               addr1019:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1034);
                                                                                                                                                            addr1032:
                                                                                                                                                            addr1023:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr888);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr981);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr982);
                                                                                                                                                }
                                                                                                                                                addr1005:
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                   §§goto(addr1008);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1031);
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                             }
                                                                                                                                             §§goto(addr958);
                                                                                                                                          }
                                                                                                                                          §§goto(addr936);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1032);
                                                                                                                                    }
                                                                                                                                    §§goto(addr983);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1005);
                                                                                                                                 §§push(Boolean(this.§<!m§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                                                              }
                                                                                                                              §§goto(addr1035);
                                                                                                                           }
                                                                                                                           §§goto(addr982);
                                                                                                                        }
                                                                                                                        §§goto(addr1023);
                                                                                                                     }
                                                                                                                     §§goto(addr957);
                                                                                                                  }
                                                                                                                  §§goto(addr1022);
                                                                                                               }
                                                                                                               §§goto(addr982);
                                                                                                            }
                                                                                                            return;
                                                                                                         }
                                                                                                         §§goto(addr947);
                                                                                                      }
                                                                                                      §§goto(addr898);
                                                                                                   }
                                                                                                   §§goto(addr890);
                                                                                                }
                                                                                                §§goto(addr1019);
                                                                                             }
                                                                                             §§goto(addr944);
                                                                                          }
                                                                                          §§goto(addr888);
                                                                                       }
                                                                                       §§goto(addr826);
                                                                                    }
                                                                                    §§goto(addr1005);
                                                                                    §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                 }
                                                                                 §§goto(addr893);
                                                                              }
                                                                              §§goto(addr1031);
                                                                           }
                                                                           §§goto(addr893);
                                                                        }
                                                                        §§goto(addr827);
                                                                        addr171:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr202);
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                               else
                                                               {
                                                                  addr764:
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if((_loc6_ = this.§=!j§[_loc2_]).§0!@§() == b2Body.b2_staticBody)
                                                                     {
                                                                        if(_loc14_ || param1)
                                                                        {
                                                                           addr280:
                                                                           _loc2_++;
                                                                           if(_loc14_ || this)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 addr290:
                                                                                 _loc6_.§ n§();
                                                                              }
                                                                              addr761:
                                                                              §§goto(addr764);
                                                                              §§push(_loc2_);
                                                                              §§push(this.§1!;§);
                                                                           }
                                                                           if(!(_loc13_ && _loc2_))
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 if(_loc14_ || this)
                                                                                 {
                                                                                    §§goto(addr280);
                                                                                 }
                                                                                 addr624:
                                                                                 §§push(_loc6_.m_angularVelocity);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr629:
                                                                                    §§push(0);
                                                                                    if(_loc14_ || param1)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          addr637:
                                                                                          if(_loc14_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             §§push(b2Settings.b2_maxRotation);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr652:
                                                                                                   §§push(§§pop() * param1.§7i§);
                                                                                                }
                                                                                                §§pop().m_angularVelocity = §§pop();
                                                                                                addr478:
                                                                                                _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                addr475:
                                                                                                addr656:
                                                                                                if(!(_loc13_ && _loc3_))
                                                                                                {
                                                                                                   addr457:
                                                                                                   _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                                   addr456:
                                                                                                   addr454:
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      if(_loc14_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc14_ || param1)
                                                                                                         {
                                                                                                            addr449:
                                                                                                            _loc6_.m_sweep.c.x += param1.§6c§ * _loc6_.§9!§.x;
                                                                                                            addr450:
                                                                                                            addr442:
                                                                                                            addr447:
                                                                                                            addr446:
                                                                                                            addr444:
                                                                                                            addr448:
                                                                                                            addr441:
                                                                                                            addr440:
                                                                                                            addr438:
                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                            if(!(_loc13_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().c);
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(_loc14_ || this)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!(_loc13_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(param1.§6c§);
                                                                                                                                 if(_loc14_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc14_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.§9!§);
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                addr420:
                                                                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      addr431:
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                         if(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                            if(!_loc13_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().a);
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc13_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr337:
                                                                                                                                                                     §§push(param1.§6c§);
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().a = §§pop() + §§pop();
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc14_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc13_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr290);
                                                                                                                                                                              }
                                                                                                                                                                              addr740:
                                                                                                                                                                              addr760:
                                                                                                                                                                              if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                              {
                                                                                                                                                                                 addr748:
                                                                                                                                                                                 _loc6_.§9!§.Normalize();
                                                                                                                                                                                 addr733:
                                                                                                                                                                                 addr719:
                                                                                                                                                                                 addr717:
                                                                                                                                                                                 §§push(_loc6_.§9!§);
                                                                                                                                                                                 §§push(_loc6_.§9!§.x);
                                                                                                                                                                                 if(_loc14_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr729:
                                                                                                                                                                                    §§push(§§pop() * (b2Settings.b2_maxTranslation * param1.§7i§));
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 §§push(_loc6_.§9!§);
                                                                                                                                                                                 if(_loc14_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc14_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_.§9!§);
                                                                                                                                                                                       if(_loc14_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1.§7i§);
                                                                                                                                                                                                      if(!(_loc13_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr709:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr712:
                                                                                                                                                                                                            §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                            §§push(param1.§6c§);
                                                                                                                                                                                                            if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc13_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc14_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr564:
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              if(_loc14_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr572:
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr590:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr598:
                                                                                                                                                                                                                                                   if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc14_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                                                         if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr624);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr475);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr740);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr629);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr759:
                                                                                                                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                                                                                                                      addr758:
                                                                                                                                                                                                                                                      §§goto(addr760);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr740);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr624);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr629);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr740);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr629);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr624);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr740);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr598);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr740);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr590);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr740);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr572);
                                                                                                                                                                                                            addr713:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr729);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr709);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr733);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr712);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr719);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr748);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr717);
                                                                                                                                                                                 addr734:
                                                                                                                                                                                 addr749:
                                                                                                                                                                                 addr746:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr712);
                                                                                                                                                                           }
                                                                                                                                                                           addr518:
                                                                                                                                                                           if(_loc14_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr475);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr637);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr475);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr450);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr457);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr337);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr456);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr450);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr457);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr442);
                                                                                                                                                }
                                                                                                                                                §§goto(addr449);
                                                                                                                                             }
                                                                                                                                             §§goto(addr447);
                                                                                                                                          }
                                                                                                                                          §§goto(addr446);
                                                                                                                                       }
                                                                                                                                       §§goto(addr444);
                                                                                                                                    }
                                                                                                                                    §§goto(addr448);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr420);
                                                                                                                           }
                                                                                                                           §§goto(addr441);
                                                                                                                        }
                                                                                                                        §§goto(addr440);
                                                                                                                     }
                                                                                                                     §§goto(addr438);
                                                                                                                  }
                                                                                                                  §§goto(addr478);
                                                                                                               }
                                                                                                               §§goto(addr454);
                                                                                                            }
                                                                                                            addr437:
                                                                                                            §§goto(addr437);
                                                                                                         }
                                                                                                         §§goto(addr734);
                                                                                                      }
                                                                                                      §§goto(addr713);
                                                                                                   }
                                                                                                   §§goto(addr656);
                                                                                                }
                                                                                                §§goto(addr749);
                                                                                             }
                                                                                             §§goto(addr652);
                                                                                          }
                                                                                          §§goto(addr746);
                                                                                       }
                                                                                       §§push(_loc6_);
                                                                                       §§push(b2Settings.b2_maxRotation);
                                                                                       if(!(_loc13_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop() * param1.§7i§);
                                                                                       }
                                                                                       §§pop().m_angularVelocity = §§pop();
                                                                                       §§goto(addr518);
                                                                                    }
                                                                                    addr757:
                                                                                    §§goto(addr758);
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 §§goto(addr759);
                                                                              }
                                                                              §§goto(addr431);
                                                                           }
                                                                           §§goto(addr337);
                                                                        }
                                                                        §§goto(addr712);
                                                                     }
                                                                     §§push(param1.§6c§);
                                                                     if(_loc14_ || _loc3_)
                                                                     {
                                                                        §§push(_loc6_.§9!§);
                                                                        if(!(_loc13_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc14_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc13_)
                                                                              {
                                                                                 addr267:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc14_ || _loc3_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(param1.§6c§);
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          addr756:
                                                                                          §§goto(addr757);
                                                                                          §§push(_loc6_.§9!§.y);
                                                                                       }
                                                                                       §§goto(addr759);
                                                                                    }
                                                                                    §§goto(addr748);
                                                                                 }
                                                                                 §§goto(addr759);
                                                                              }
                                                                              §§goto(addr564);
                                                                           }
                                                                           §§goto(addr740);
                                                                        }
                                                                        §§goto(addr756);
                                                                     }
                                                                     §§goto(addr267);
                                                                  }
                                                                  §§goto(addr765);
                                                               }
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr761);
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr765);
                                          }
                                          §§goto(addr761);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr108);
                                 }
                                 else
                                 {
                                    _loc4_.SolveVelocityConstraints();
                                 }
                                 §§goto(addr195);
                              }
                              §§goto(addr764);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr100);
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §[!4§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc7_)
         {
            if(this.§[i§ == null)
            {
               if(!_loc6_)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < this.§#4§)
            {
               _loc3_ = this.§>I§[_loc2_];
               _loc4_ = param1[_loc2_];
               if(!(_loc6_ && this))
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     _loc5_ = §§pop();
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
                           if(§§pop() >= _loc4_.§6Y§)
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 this.§[i§.PostSolve(_loc3_,§'!1§);
                              }
                              loop4:
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 addr146:
                                 while(!(_loc7_ || _loc2_))
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§'!1§);
                                       if(_loc7_ || param1)
                                       {
                                          break;
                                       }
                                       addr151:
                                       while(true)
                                       {
                                          §§pop().§3!<§[_loc5_] = _loc4_.§@a§[_loc5_].normalImpulse;
                                          continue loop6;
                                       }
                                    }
                                    §§pop().§6=§[_loc5_] = _loc4_.§@a§[_loc5_].tangentImpulse;
                                 }
                                 while(true)
                                 {
                                    _loc5_++;
                                    break loop4;
                                 }
                              }
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           else
                           {
                              §§push(§'!1§);
                           }
                           §§goto(addr151);
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr146);
            }
            return;
         }
         addr33:
      }
      
      public function §#H§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            param1.§0!b§ = this.§1!;§;
         }
         var _loc2_:* = this.§1!;§++;
         this.§=!j§[_loc2_] = param1;
      }
      
      public function §<'§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§#4§++;
         this.§>I§[_loc2_] = param1;
      }
      
      public function §5[§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§+!R§++;
         this.§<!m§[_loc2_] = param1;
      }
   }
}
