package §#I§
{
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Sweep;
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §2!'§.b2JointEdge;
   import §3b§.b2EdgeShape;
   import §3b§.b2MassData;
   import §3b§.b2Shape;
   import §4]§.b2Contact;
   import §4]§.b2ContactEdge;
   import §>!Z§.§<P§;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   import §`L§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §@!>§:b2Transform;
      
      b2internal static var §0V§:uint = 1;
      
      b2internal static var §5!_§:uint = 2;
      
      b2internal static var §6T§:uint = 4;
      
      b2internal static var §;!@§:uint = 8;
      
      b2internal static var §]3§:uint = 16;
      
      b2internal static var §0!_§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@!>§ = new b2Transform();
            loop0:
            while(true)
            {
               §0V§ = 1;
               loop1:
               while(true)
               {
                  §5!_§ = 2;
                  while(true)
                  {
                     §6T§ = 4;
                     loop3:
                     for(; _loc2_; if(_loc1_ && _loc1_)
                     {
                        continue;
                     })
                     {
                        §;!@§ = 8;
                        while(true)
                        {
                           §]3§ = 16;
                           while(!_loc1_)
                           {
                              continue loop3;
                              while(_loc2_ || b2Body)
                              {
                                 b2_staticBody = 0;
                                 continue loop0;
                              }
                           }
                        }
                     }
                     continue loop1;
                     addr39:
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     b2_dynamicBody = 2;
                     addr46:
                     if(!_loc2_)
                     {
                        while(_loc2_)
                        {
                           §§goto(addr39);
                           §§goto(addr46);
                        }
                        continue loop0;
                        addr37:
                     }
                     if(!_loc1_)
                     {
                        return;
                     }
                     §§goto(addr73);
                  }
               }
            }
         }
         while(true)
         {
            §0!_§ = 32;
            §§goto(addr73);
         }
      }
      
      b2internal var §[B§:uint;
      
      b2internal var §3r§:int;
      
      b2internal var §-!_§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §%!<§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §76§:b2Vec2;
      
      b2internal var §5n§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §+!3§:b2Body;
      
      b2internal var §=!8§:b2Body;
      
      b2internal var §>"#§:b2Fixture;
      
      b2internal var §9!;§:int;
      
      b2internal var §'z§:b2ControllerEdge;
      
      b2internal var §8H§:int;
      
      b2internal var §8!I§:b2JointEdge;
      
      b2internal var §0!?§:b2ContactEdge;
      
      b2internal var §"X§:Number;
      
      b2internal var §3!q§:Number;
      
      b2internal var §4!A§:Number;
      
      b2internal var §2!1§:Number;
      
      b2internal var §]5§:Number;
      
      b2internal var §];§:Number;
      
      b2internal var §[!7§:Number;
      
      b2internal var §+0§:Number;
      
      private var §>g§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.m_xf = new b2Transform();
            while(true)
            {
               this.m_sweep = new b2Sweep();
               while(true)
               {
                  this.§%!<§ = new b2Vec2();
                  while(true)
                  {
                     this.§76§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        if(_loc6_)
                        {
                           this.§[B§ = 0;
                           while(true)
                           {
                              §§push(param1.§2!C§);
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§[B§ |= b2internal::;!@;
                                       addr200:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr194:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§%w§);
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        §§goto(addr247);
                     }
                  }
                  if(_loc7_ && this)
                  {
                     continue;
                  }
                  §§goto(addr122);
               }
            }
         }
         §§goto(addr39);
      }
      
      private function §7!-§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§ !P§().y,param2.§ !P§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§'§(_loc5_,param2.§ !P§());
         _loc6_ = b2Math.§%M§(_loc6_,param2.§'p§());
         _loc6_ = b2Math.§'§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§`v§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§`v§(param1.§ !P§(),param2.§ !P§())).Normalize();
         var _loc8_:* = b2Math.§#D§(param1.§ !P§(),param2.§'p§()) > 0;
         if(_loc9_)
         {
            param1.§<"!§(param2,_loc6_,_loc7_,_loc8_);
         }
         do
         {
            param2.§5!o§(param1,_loc6_,_loc7_,_loc8_);
         }
         while(!(_loc9_ || param3));
         
         return _loc4_;
      }
      
      public function §&R§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§<P§ = null;
         if(!_loc7_)
         {
            if(this.m_world.§@%§() == true)
            {
               if(!_loc7_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(!_loc7_)
            {
               _loc2_.§1!Y§(this,this.m_xf,param1);
               if(_loc6_)
               {
                  addr44:
                  if(this.§[B§ & b2internal::0!_)
                  {
                     if(!_loc7_)
                     {
                        §§push(this.m_world);
                        if(_loc6_ || this)
                        {
                           _loc3_ = §§pop().§5!>§.§,>§;
                           if(_loc6_ || this)
                           {
                              _loc2_.§[E§(_loc3_,this.m_xf);
                              _loc2_.§=!8§ = this.§>"#§;
                              addr76:
                              if(_loc6_ || _loc3_)
                              {
                                 this.§>"#§ = _loc2_;
                                 if(!_loc7_)
                                 {
                                    var _loc4_:*;
                                    §§push((_loc4_ = this).§9!;§);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!_loc7_)
                                    {
                                       _loc4_.§9!;§ = _loc5_;
                                    }
                                    if(_loc6_ || this)
                                    {
                                       _loc2_.m_body = this;
                                    }
                                    return _loc2_;
                                    addr166:
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    addr130:
                                    loop1:
                                    while(true)
                                    {
                                       §§push(this.m_world);
                                       addr133:
                                       while(true)
                                       {
                                          §§push(this.m_world.§[B§);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() | b2World.§&r§);
                                          }
                                          §§pop().§[B§ = §§pop();
                                          if(_loc7_ && this)
                                          {
                                             continue loop0;
                                          }
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             break loop1;
                                          }
                                          addr172:
                                          loop2:
                                          while(true)
                                          {
                                             this.§'!d§();
                                             continue loop0;
                                             addr185:
                                             while(true)
                                             {
                                                if(_loc2_.§`!k§ > 0)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 addr181:
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr76);
               }
               §§goto(addr181);
            }
            §§goto(addr44);
         }
         addr28:
         return null;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(!_loc5_)
         {
            _loc3_.shape = param1;
            do
            {
               _loc3_.density = param2;
            }
            while(_loc5_ && param1);
            
         }
         return this.§&R§(_loc3_);
      }
      
      public function §,!_§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§<P§ = null;
         if(_loc12_)
         {
            if(this.m_world.§@%§() == true)
            {
               if(!(_loc13_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§>"#§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§=!8§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            while(true)
            {
               if(!_loc3_)
               {
                  this.§>"#§ = param1.§=!8§;
                  if(_loc12_ || _loc3_)
                  {
                  }
                  break loop0;
               }
               if(_loc12_ || _loc3_)
               {
                  _loc3_.§=!8§ = param1.§=!8§;
               }
               while(true)
               {
                  addr74:
                  while(true)
                  {
                  }
               }
               addr107:
               while(true)
               {
                  _loc4_ = true;
                  if(_loc12_ || param1)
                  {
                     if(!(_loc13_ && _loc3_))
                     {
                        if(_loc13_)
                        {
                           break;
                        }
                        if(true)
                        {
                           break loop0;
                        }
                        continue;
                     }
                     §§goto(addr107);
                  }
                  break loop0;
               }
            }
         }
         var _loc5_:b2ContactEdge = this.§0!?§;
         if(_loc12_)
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§8!m§;
               _loc5_ = _loc5_.§`!w§;
               _loc7_ = _loc6_.§`!a§();
               _loc8_ = _loc6_.§2!s§();
               if(!_loc13_)
               {
                  §§push(param1 == _loc7_);
                  if(_loc12_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc13_)
                        {
                           addr164:
                           §§pop();
                           addr178:
                           if(_loc12_ || _loc3_)
                           {
                              §§push(param1 == _loc8_);
                           }
                           this.m_world.§5!>§.§=_§(_loc6_);
                           continue;
                        }
                     }
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(!_loc12_)
                     {
                        continue;
                     }
                     §§goto(addr178);
                  }
               }
               §§goto(addr164);
            }
            if(_loc12_)
            {
               if(this.§[B§ & b2internal::0!_)
               {
                  if(_loc12_)
                  {
                     _loc9_ = this.m_world.§5!>§.§,>§;
                     if(!(_loc13_ && this))
                     {
                        param1.§#i§(_loc9_);
                        addr210:
                        param1.§=_§();
                        if(!(_loc13_ && param1))
                        {
                           §§goto(addr219);
                        }
                        §§goto(addr229);
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr271);
               }
               §§goto(addr210);
            }
            addr219:
            param1.m_body = null;
            if(_loc12_)
            {
               param1.§=!8§ = null;
               if(!_loc13_)
               {
                  addr229:
                  var _loc10_:*;
                  §§push((_loc10_ = this).§9!;§);
                  if(_loc12_ || this)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc11_:* = §§pop();
                  if(!(_loc13_ && _loc3_))
                  {
                     _loc10_.§9!;§ = _loc11_;
                  }
                  if(_loc12_ || _loc2_)
                  {
                     addr271:
                     this.§'!d§();
                  }
               }
            }
            return;
         }
         §§goto(addr229);
      }
      
      public function §2#§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2Fixture = null;
         if(_loc8_)
         {
            if(this.m_world.§@%§() != true)
            {
               loop0:
               while(true)
               {
                  §§push(this.m_xf);
                  if(_loc8_)
                  {
                     §§push(§§pop().R);
                     if(!_loc9_)
                     {
                        §§pop().Set(param2);
                        while(true)
                        {
                           if(_loc8_ || param1)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        addr73:
                        §§push(§§pop().R);
                     }
                     var _loc4_:b2Mat22 = §§pop();
                     var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                     if(!(_loc9_ && _loc3_))
                     {
                        §§push(this.m_sweep);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().c);
                           loop3:
                           while(true)
                           {
                              §§push(_loc4_.col1);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc5_.x);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc4_.col2);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc5_.y);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc9_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.m_sweep);
                                                         loop13:
                                                         while(_loc8_)
                                                         {
                                                            §§push(§§pop().c);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.col1);
                                                               if(!_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop().y);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.x);
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     if(!(_loc8_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.col2);
                                                                        if(_loc9_ && param2)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_.y);
                                                                           if(!_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                           loop28:
                                                                           while(!(_loc9_ && param2))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 if(_loc9_ && param1)
                                                                                 {
                                                                                    break loop12;
                                                                                 }
                                                                                 loop30:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_sweep);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       if(!(_loc9_ && param2))
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr136:
                                                                                          §§push(this.m_sweep);
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   addr158:
                                                                                                   §§push(this.m_xf);
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop().position);
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc9_ && param1)
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         addr178:
                                                                                                         if(_loc9_ && param2)
                                                                                                         {
                                                                                                            while(!_loc9_)
                                                                                                            {
                                                                                                               if(!(_loc8_ || this))
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               §§goto(addr178);
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                            addr297:
                                                                                                         }
                                                                                                         addr196:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc8_ || param1)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.m_sweep);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr94:
                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 addr112:
                                                                                                                                 if(!(_loc9_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.m_sweep);
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 addr312:
                                                                                                                                 addr312:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.m_sweep);
                                                                                                                                    §§goto(addr112);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break loop12;
                                                                                                                           }
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           addr218:
                                                                                                                           while(!_loc9_)
                                                                                                                           {
                                                                                                                              §§push(this.m_sweep);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 addr223:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    addr224:
                                                                                                                                    while(!_loc9_)
                                                                                                                                    {
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    continue loop16;
                                                                                                                                 }
                                                                                                                                 §§goto(addr136);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop14;
                                                                                                                           §§goto(addr94);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr340:
                                                                                                                  §§pop().a0 = this.m_sweep.a = param2;
                                                                                                                  break loop12;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            while(_loc8_)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                            addr307:
                                                                                                            §§goto(addr312);
                                                                                                         }
                                                                                                         §§goto(addr224);
                                                                                                         §§goto(addr307);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().position);
                                                                                                         §§goto(addr158);
                                                                                                      }
                                                                                                      addr235:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr196);
                                                                                             }
                                                                                             §§goto(addr223);
                                                                                          }
                                                                                          §§goto(addr222);
                                                                                       }
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                    §§goto(addr340);
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr297);
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop2;
                                                      }
                                                      var _loc6_:§<P§ = this.m_world.§5!>§.§,>§;
                                                      _loc3_ = this.§>"#§;
                                                      addr384:
                                                      if(_loc3_)
                                                      {
                                                         _loc3_.§0!H§(_loc6_,this.m_xf,this.m_xf);
                                                         if(_loc8_)
                                                         {
                                                            _loc3_ = _loc3_.§=!8§;
                                                            §§goto(addr384);
                                                         }
                                                         §§goto(addr397);
                                                      }
                                                      if(_loc8_ || param2)
                                                      {
                                                         this.m_world.§5!>§.§-!V§();
                                                      }
                                                      addr397:
                                                      return;
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
                     §§goto(addr312);
                  }
                  §§goto(addr73);
               }
            }
         }
      }
      
      public function §+!x§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2#§(param1.position,param1.GetAngle());
         }
      }
      
      public function §%J§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §22§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2#§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §?!=§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§2#§(this.GetPosition(),param1);
         }
      }
      
      public function §58§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §6!#§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§3r§ == b2_staticBody)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr48);
               }
            }
            addr48:
            §§goto(addr60);
         }
         addr60:
         while(true)
         {
            this.§%!<§.SetV(param1);
            if(!(_loc3_ && _loc3_))
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§%!<§;
      }
      
      public function §&e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§3r§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.m_angularVelocity = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr48:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc3_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §'K§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §+!m§() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(!_loc2_)
         {
            _loc1_.type = this.§ 5§();
            while(true)
            {
               _loc1_.§]#§ = (this.§[B§ & b2internal::6T) == b2internal::6T;
               addr72:
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               _loc1_.position = this.GetPosition();
               do
               {
                  _loc1_.§]!=§ = this.GetUserData();
               }
               while(_loc2_ && this);
               
               addr89:
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     addr45:
                     if(!(_loc3_ || _loc1_))
                     {
                        loop7:
                        for(; !_loc2_; §§goto(addr45))
                        {
                           _loc1_.§#"$§ = this.§];§;
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 _loc1_.§;!"§.SetV(this.GetLinearVelocity());
                                 while(_loc3_ || _loc1_)
                                 {
                                    §§goto(addr72);
                                    §§goto(addr89);
                                 }
                                 while(!_loc2_)
                                 {
                                    _loc1_.§-!A§ = (this.§[B§ & b2internal::5!_) == b2internal::5!_;
                                    continue loop7;
                                    §§goto(addr65);
                                 }
                                 addr65:
                                 while(!(_loc2_ && this))
                                 {
                                    _loc1_.§-!^§ = this.m_angularVelocity;
                                 }
                                 while(true)
                                 {
                                    _loc1_.§"!K§ = this.§[!7§;
                                    §§goto(addr160);
                                 }
                                 addr160:
                              }
                              while(true)
                              {
                                 _loc1_.§%w§ = (this.§[B§ & b2internal::]3) == b2internal::]3;
                                 break loop7;
                              }
                           }
                           while(true)
                           {
                              _loc1_.angle = this.GetAngle();
                              §§goto(addr173);
                           }
                        }
                        while(true)
                        {
                           _loc1_.§2!C§ = (this.§[B§ & b2internal::;!@) == b2internal::;!@;
                           §§goto(addr126);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr95);
               }
               §§goto(addr65);
            }
         }
         §§goto(addr183);
      }
      
      public function §;!U§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§3r§ != b2_dynamicBody)
            {
               if(_loc3_ || param2)
               {
                  return;
               }
               while(true)
               {
                  addr166:
                  while(_loc3_ || this)
                  {
                     this.SetAwake(true);
                     loop3:
                     while(true)
                     {
                        addr140:
                        while(true)
                        {
                           §§push(this.§76§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§76§);
                              addr145:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr146:
                                 while(true)
                                 {
                                    §§push(param1.x);
                                    addr148:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr149:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     §§push(this);
                     §§push(this.§5n§);
                     if(_loc3_)
                     {
                        §§push(param2.x);
                        if(!(_loc4_ && this))
                        {
                           §§push(this.m_sweep.c.x);
                           if(_loc3_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc3_)
                              {
                                 §§push(param1.y);
                                 if(!_loc4_)
                                 {
                                    addr51:
                                    §§push(§§pop() * §§pop());
                                    if(_loc3_ || param1)
                                    {
                                       §§push(param2.y);
                                       if(!_loc4_)
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(_loc3_ || param1)
                                          {
                                             addr90:
                                             §§push(§§pop() - §§pop());
                                             if(!_loc4_)
                                             {
                                                addr77:
                                                §§push(param1.x);
                                             }
                                             §§pop().§5n§ = §§pop() + (§§pop() - §§pop());
                                             if(_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr176);
                                                }
                                                §§goto(addr97);
                                             }
                                             §§goto(addr125);
                                          }
                                          §§goto(addr90);
                                          §§push(§§pop() * §§pop());
                                       }
                                       §§goto(addr77);
                                    }
                                 }
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr51);
                        }
                     }
                     §§goto(addr90);
                  }
               }
               addr189:
            }
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  §§goto(addr166);
               }
               §§goto(addr140);
               §§goto(addr189);
            }
         }
         §§goto(addr160);
      }
      
      public function §6!R§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§3r§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr80:
                        while(!_loc3_)
                        {
                           if(_loc3_ && _loc3_)
                           {
                              §§goto(addr94);
                           }
                           while(true)
                           {
                           }
                        }
                        continue loop0;
                     }
                     addr77:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§5n§);
                     if(!(_loc3_ && param1))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§5n§ = §§pop();
                     if(_loc2_)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr80);
                  }
                  return;
               }
            }
            addr94:
            return;
         }
         §§goto(addr89);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(this.§3r§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr226:
                        while(true)
                        {
                        }
                     }
                     addr223:
                  }
                  while(true)
                  {
                     §§push(this.§%!<§);
                     while(true)
                     {
                        §§push(this.§%!<§);
                        addr188:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc4_ || param1)
                           {
                              §§push(this.§3!q§);
                              while(true)
                              {
                                 §§push(param1.x);
                                 addr210:
                                 addr166:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr211:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                    }
                                 }
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 §§push(param1.y);
                                 if(_loc4_)
                                 {
                                    addr179:
                                    §§pop().y = §§pop() + §§pop() * §§pop();
                                    addr178:
                                    loop11:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.m_angularVelocity);
                                             if(!(_loc4_ || this))
                                             {
                                                continue loop11;
                                             }
                                             §§push(this.§2!1§);
                                             if(!(_loc3_ && param2))
                                             {
                                                §§push(param2.x);
                                                if(_loc4_ || param2)
                                                {
                                                   §§push(this.m_sweep.c.x);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(param1.y);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc4_ || param1)
                                                            {
                                                               addr84:
                                                               §§push(param2.y);
                                                               if(!_loc3_)
                                                               {
                                                                  addr88:
                                                                  §§push(this.m_sweep.c.y);
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr100:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr97:
                                                                        §§push(param1.x);
                                                                     }
                                                                     §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                     continue loop11;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                            §§goto(addr100);
                                                         }
                                                         §§goto(addr88);
                                                      }
                                                      §§goto(addr100);
                                                   }
                                                   §§goto(addr97);
                                                }
                                                §§goto(addr84);
                                             }
                                             §§goto(addr100);
                                          }
                                          return;
                                          addr130:
                                          addr182:
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr226);
                                 }
                                 else
                                 {
                                    §§goto(addr210);
                                 }
                                 addr212:
                              }
                           }
                           §§goto(addr212);
                        }
                        §§push(this.§%!<§);
                        if(!(_loc4_ || this))
                        {
                           continue;
                        }
                        §§push(this.§%!<§);
                        if(!_loc3_)
                        {
                           §§push(§§pop().y);
                           if(!(_loc3_ && this))
                           {
                              if(!_loc3_)
                              {
                                 §§push(this.§3!q§);
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       §§goto(addr166);
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr188);
                     }
                  }
               }
            }
            §§goto(addr231);
         }
         §§goto(addr182);
      }
      
      public function §'!p§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.§'K§());
         if(!(_loc17_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§58§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§4!H§(this.§+!m§());
         var _loc8_:b2Fixture = _loc5_.§>"#§;
         while(true)
         {
            if(!_loc8_)
            {
               if(!(_loc17_ && param1))
               {
                  break;
               }
               addr200:
               var _loc9_:b2Vec2 = _loc5_.§58§();
               var _loc10_:b2Vec2 = _loc6_.§58§();
               var _loc11_:b2Vec2 = b2Math.§`v§(_loc2_,b2Math.§<G§(_loc3_,b2Math.§%M§(_loc9_,_loc4_)));
               var _loc12_:b2Vec2 = b2Math.§`v§(_loc2_,b2Math.§<G§(_loc3_,b2Math.§%M§(_loc10_,_loc4_)));
               if(!_loc17_)
               {
                  _loc5_.SetLinearVelocity(_loc11_);
                  while(true)
                  {
                     _loc6_.SetLinearVelocity(_loc12_);
                     while(!(_loc17_ && this))
                     {
                        _loc5_.§&e§(_loc3_);
                        while(_loc16_)
                        {
                           _loc6_.§&e§(_loc3_);
                           loop4:
                           while(!(_loc17_ && this))
                           {
                              _loc5_.§%y§();
                              while(true)
                              {
                                 _loc6_.§%y§();
                                 if(!(_loc17_ && _loc2_))
                                 {
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                              }
                              return _loc6_;
                           }
                        }
                     }
                  }
               }
               §§goto(addr256);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§=!8§;
                  continue;
               }
               if(_loc17_ && this)
               {
                  break;
               }
               _loc13_ = _loc8_.§=!8§;
               if(!_loc17_)
               {
                  if(_loc7_)
                  {
                     if(_loc16_ || _loc3_)
                     {
                        _loc7_.§=!8§ = _loc13_;
                        if(!(_loc17_ && _loc3_))
                        {
                           addr95:
                        }
                        addr101:
                        var _loc14_:*;
                        §§push((_loc14_ = _loc5_).§9!;§);
                        if(_loc16_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc15_:* = §§pop();
                        if(!_loc17_)
                        {
                           _loc14_.§9!;§ = _loc15_;
                        }
                        if(_loc16_ || _loc3_)
                        {
                           _loc8_.§=!8§ = _loc6_.§>"#§;
                           if(_loc16_ || _loc3_)
                           {
                              _loc6_.§>"#§ = _loc8_;
                              if(!_loc17_)
                              {
                                 addr149:
                                 §§push((_loc14_ = _loc6_).§9!;§);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc15_ = §§pop();
                                 if(!_loc17_)
                                 {
                                    _loc14_.§9!;§ = _loc15_;
                                 }
                                 if(!(_loc17_ && this))
                                 {
                                    addr171:
                                    _loc8_.m_body = _loc6_;
                                 }
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr171);
                     }
                  }
                  else
                  {
                     _loc5_.§>"#§ = _loc13_;
                     if(_loc16_)
                     {
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr149);
               }
               §§goto(addr95);
            }
         }
         _loc5_.§'!d§();
         if(_loc16_)
         {
            _loc6_.§'!d§();
         }
         §§goto(addr200);
      }
      
      public function §1D§(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§>"#§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§=!8§;
            if(!(_loc14_ || _loc3_))
            {
               continue;
            }
            var _loc12_:*;
            §§push((_loc12_ = param1).§9!;§);
            if(!_loc15_)
            {
               §§push(§§pop() - 1);
            }
            var _loc13_:* = §§pop();
            if(!_loc15_)
            {
               _loc12_.§9!;§ = _loc13_;
            }
            if(_loc15_)
            {
               continue;
            }
            _loc2_.§=!8§ = this.§>"#§;
            if(!_loc15_)
            {
               this.§>"#§ = _loc2_;
               if(_loc14_)
               {
                  addr73:
                  §§push((_loc12_ = this).§9!;§);
                  if(!_loc15_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc13_ = §§pop();
                  if(!_loc15_)
                  {
                     _loc12_.§9!;§ = _loc13_;
                  }
                  if(_loc15_)
                  {
                     continue;
                  }
               }
               _loc2_.m_body = _loc4_;
               continue;
            }
            §§goto(addr73);
         }
         if(_loc14_ || this)
         {
            _loc3_.§9!;§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§58§();
         var _loc6_:b2Vec2 = _loc4_.§58§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.§'K§());
         if(!(_loc15_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§'K§());
         if(_loc14_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!_loc15_)
         {
            _loc3_.§'!d§();
            do
            {
               this.§%y§();
            }
            while(_loc15_ && _loc3_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§"X§;
      }
      
      public function § `§() : Number
      {
         return this.§4!A§;
      }
      
      public function §&K§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            param1.§&q§ = this.§"X§;
            while(true)
            {
               param1.§6_§ = this.§4!A§;
               while(_loc3_ || this)
               {
                  param1.center.SetV(this.m_sweep.localCenter);
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  return;
                  addr63:
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §'!N§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§@%§());
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§@%§());
               loop1:
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        while(true)
                        {
                           addr223:
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           loop15:
                           while(true)
                           {
                              this.§3!q§ = 1 / this.§"X§;
                              addr186:
                              loop16:
                              while(true)
                              {
                                 §§push(param1.§6_§);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(0);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§§pop() > §§pop());
                                       loop17:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                loop22:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr73:
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(param1.§6_§);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(this.§"X§);
                                                               if(_loc3_ || param1)
                                                               {
                                                                  §§push(param1.center.x);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(param1.center);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              addr121:
                                                                              §§push(param1.center.y);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr128:
                                                                                 §§push(§§pop() + §§pop() * param1.center.y);
                                                                              }
                                                                              §§goto(addr128);
                                                                           }
                                                                           addr131:
                                                                           §§pop().§4!A§ = §§pop() - §§pop() * §§pop();
                                                                           addr130:
                                                                           while(!(_loc4_ && _loc3_))
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              addr269:
                                                                              this.§2!1§ = 1 / this.§4!A§;
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                           }
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§[B§ & b2internal::]3);
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       §§push(§§pop() == 0);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr170:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop19;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(§§pop() == b2_dynamicBody)
                                                                                       {
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§3!q§ = 0;
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§4!A§ = 0;
                                                                                                addr258:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§2!1§ = 0;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§"X§ = param1.§&q§;
                                                                                                      break loop22;
                                                                                                      addr192:
                                                                                                      while(_loc3_ || this)
                                                                                                      {
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                            {
                                                                                                               this.§"X§ = 1;
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                   }
                                                                                                   break loop19;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       §§goto(addr269);
                                                                                       addr267:
                                                                                    }
                                                                                 }
                                                                                 continue loop1;
                                                                                 addr39:
                                                                              }
                                                                              §§goto(addr192);
                                                                           }
                                                                           while(_loc3_ || _loc3_)
                                                                           {
                                                                              §§goto(addr223);
                                                                           }
                                                                           §§goto(addr258);
                                                                           addr216:
                                                                        }
                                                                        §§goto(addr128);
                                                                     }
                                                                  }
                                                                  §§goto(addr121);
                                                               }
                                                               §§goto(addr130);
                                                            }
                                                            §§goto(addr131);
                                                         }
                                                         addr80:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr216);
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§"X§);
                                                      break loop16;
                                                   }
                                                   break;
                                                   §§goto(addr73);
                                                }
                                                continue loop0;
                                             }
                                             var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(this.m_sweep);
                                                loop25:
                                                while(true)
                                                {
                                                   §§pop().localCenter.SetV(param1.center);
                                                   while(true)
                                                   {
                                                      §§push(this.m_sweep);
                                                      loop27:
                                                      while(true)
                                                      {
                                                         §§pop().c0.SetV(b2Math.§%!r§(this.m_xf,this.m_sweep.localCenter));
                                                         addr489:
                                                         while(true)
                                                         {
                                                            §§push(this.m_sweep);
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               continue loop27;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               continue loop25;
                                                            }
                                                            §§pop().c.SetV(this.m_sweep.c0);
                                                            loop29:
                                                            while(true)
                                                            {
                                                               §§push(this.§%!<§);
                                                               while(true)
                                                               {
                                                                  §§push(this.§%!<§);
                                                                  addr404:
                                                                  addr448:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this.m_angularVelocity);
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§push(this.m_sweep);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().c);
                                                                              addr419:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 addr420:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.y);
                                                                                    addr422:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr423:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          addr424:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr418:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        addr425:
                                                                     }
                                                                     addr426:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        continue loop29;
                                                                     }
                                                                  }
                                                                  §§push(this.§%!<§);
                                                                  if(!(_loc3_ || param1))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(this.§%!<§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(this.m_angularVelocity);
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push(this.m_sweep);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop().c);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc2_.x);
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr384:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      addr393:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr426);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr420);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr424);
                                                                                          }
                                                                                          §§goto(addr384);
                                                                                       }
                                                                                       §§goto(addr422);
                                                                                    }
                                                                                    §§goto(addr423);
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr419);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr418);
                                                                           }
                                                                           §§goto(addr419);
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr404);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr489);
                                             addr69:
                                          }
                                          §§goto(addr170);
                                       }
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          continue loop15;
                                       }
                                       §§goto(addr192);
                                    }
                                    addr191:
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr191);
                                 §§goto(addr186);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr267);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §'!d§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2MassData = null;
         if(_loc5_)
         {
            this.§"X§ = 0;
            while(true)
            {
               this.§3!q§ = 0;
               loop1:
               while(true)
               {
                  this.§4!A§ = 0;
                  while(true)
                  {
                     this.§2!1§ = 0;
                     addr103:
                     while(true)
                     {
                        this.m_sweep.localCenter.§+J§();
                        continue loop1;
                     }
                     addr58:
                     if(_loc5_ || _loc3_)
                     {
                        return;
                     }
                  }
               }
               addr68:
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
               if(false)
               {
                  while(true)
                  {
                     §§push(this.§3r§);
                     loop7:
                     while(true)
                     {
                        §§push(b2_staticBody);
                        loop8:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           loop9:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§pop();
                                    addr85:
                                    while(true)
                                    {
                                       §§push(this.§3r§);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(b2_kinematicBody);
                                       if(_loc6_ && _loc2_)
                                       {
                                          continue loop8;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(!_loc5_)
                                       {
                                          continue loop10;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop9;
                                       }
                                    }
                                    continue loop7;
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc5_ || _loc1_)
                                       {
                                          §§goto(addr51);
                                       }
                                       else
                                       {
                                          §§goto(addr85);
                                       }
                                    }
                                    else
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       §§goto(addr68);
                                    }
                                 }
                              }
                              §§goto(addr103);
                           }
                        }
                     }
                  }
                  addr77:
               }
               var _loc1_:b2Vec2 = b2Vec2.§5U§(0,0);
               var _loc2_:b2Fixture = this.§>"#§;
               addr244:
               if(_loc2_)
               {
                  §§push(_loc2_.§`!k§);
                  if(_loc5_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc6_)
                           {
                              addr240:
                              _loc2_ = _loc2_.§=!8§;
                              §§goto(addr244);
                           }
                           this.§2!1§ = 0;
                           addr302:
                           if(_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    §§push(_loc1_);
                                    §§push(_loc1_.y);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() * this.§3!q§);
                                    }
                                    §§pop().y = §§pop();
                                    addr425:
                                    addr464:
                                    §§push(this.§4!A§ > 0);
                                    if(!_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          addr434:
                                          §§pop();
                                          §§push((this.§[B§ & b2internal::]3) == 0);
                                          if(_loc6_ && _loc2_)
                                          {
                                          }
                                          §§goto(addr434);
                                          addr435:
                                       }
                                       if(§§pop())
                                       {
                                          addr374:
                                          §§push(this);
                                          §§push(this.§4!A§);
                                          if(!_loc6_)
                                          {
                                             §§push(this.§"X§);
                                             if(_loc5_)
                                             {
                                                §§push(_loc1_.x);
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc1_.x);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         addr412:
                                                         addr413:
                                                         addr414:
                                                         §§push(_loc1_.y);
                                                         if(!(_loc6_ && _loc1_))
                                                         {
                                                            addr408:
                                                            §§push(§§pop() * _loc1_.y);
                                                         }
                                                         §§pop().§4!A§ = §§pop() - §§pop() * (§§pop() + §§pop());
                                                         addr415:
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§4!A§);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop() * this.§]5§);
                                                               }
                                                               §§pop().§4!A§ = §§pop();
                                                               b2Settings.b2Assert(this.§4!A§ > 0);
                                                               addr330:
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        this.§2!1§ = 1 / this.§4!A§;
                                                                        addr310:
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr415);
                                                                        }
                                                                        addr475:
                                                                        var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr656:
                                                                           this.m_sweep.localCenter.SetV(_loc1_);
                                                                           addr642:
                                                                           this.m_sweep.c0.SetV(b2Math.§%!r§(this.m_xf,this.m_sweep.localCenter));
                                                                           addr651:
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§pop().c.SetV(this.m_sweep.c0);
                                                                                    addr636:
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr602:
                                                                                       this.§%!<§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
                                                                                       addr603:
                                                                                       addr599:
                                                                                       addr598:
                                                                                       addr596:
                                                                                       addr600:
                                                                                       addr595:
                                                                                       addr594:
                                                                                       addr592:
                                                                                       addr601:
                                                                                       addr590:
                                                                                       addr589:
                                                                                       §§push(this.§%!<§);
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.§%!<§);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   §§push(this.m_angularVelocity);
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(this.m_sweep);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop().c);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(_loc3_.x);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!(_loc6_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr561:
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr564:
                                                                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr636);
                                                                                                                                          }
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       §§goto(addr603);
                                                                                                                                    }
                                                                                                                                    §§goto(addr602);
                                                                                                                                 }
                                                                                                                                 §§goto(addr599);
                                                                                                                              }
                                                                                                                              §§goto(addr564);
                                                                                                                           }
                                                                                                                           §§goto(addr598);
                                                                                                                        }
                                                                                                                        §§goto(addr596);
                                                                                                                     }
                                                                                                                     §§goto(addr600);
                                                                                                                  }
                                                                                                                  §§goto(addr561);
                                                                                                               }
                                                                                                               §§goto(addr595);
                                                                                                            }
                                                                                                            §§goto(addr594);
                                                                                                         }
                                                                                                         §§goto(addr592);
                                                                                                      }
                                                                                                      §§goto(addr601);
                                                                                                   }
                                                                                                   §§goto(addr564);
                                                                                                }
                                                                                                §§goto(addr590);
                                                                                             }
                                                                                             §§goto(addr564);
                                                                                          }
                                                                                          §§goto(addr589);
                                                                                       }
                                                                                       addr587:
                                                                                       §§goto(addr587);
                                                                                    }
                                                                                    §§goto(addr651);
                                                                                 }
                                                                                 §§goto(addr656);
                                                                              }
                                                                              §§goto(addr642);
                                                                              addr653:
                                                                           }
                                                                           addr659:
                                                                           §§goto(addr659);
                                                                        }
                                                                        §§goto(addr653);
                                                                        addr294:
                                                                     }
                                                                     addr440:
                                                                     if(_loc5_ || _loc1_)
                                                                     {
                                                                        §§goto(addr425);
                                                                     }
                                                                     §§goto(addr464);
                                                                  }
                                                                  §§goto(addr374);
                                                               }
                                                               addr357:
                                                               §§goto(addr357);
                                                            }
                                                            this.§3!q§ = 1;
                                                            §§goto(addr440);
                                                            addr453:
                                                         }
                                                         §§goto(addr435);
                                                      }
                                                      §§goto(addr412);
                                                   }
                                                   §§goto(addr408);
                                                }
                                                §§goto(addr412);
                                             }
                                             §§goto(addr413);
                                          }
                                          §§goto(addr414);
                                       }
                                       this.§4!A§ = 0;
                                       addr300:
                                       if(_loc5_)
                                       {
                                          §§goto(addr302);
                                       }
                                       §§goto(addr330);
                                    }
                                    §§goto(addr434);
                                    addr474:
                                 }
                                 if(false)
                                 {
                                    §§goto(addr294);
                                 }
                                 §§goto(addr475);
                              }
                              §§goto(addr310);
                           }
                           §§goto(addr300);
                        }
                        _loc4_ = _loc2_.§&K§();
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(this);
                           §§push(this.§"X§);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + _loc4_.§&q§);
                           }
                           §§pop().§"X§ = §§pop();
                           §§push(_loc1_);
                           §§push(_loc1_.x);
                           if(_loc5_)
                           {
                              §§push(_loc4_.center.x);
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(§§pop() * _loc4_.§&q§);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().x = §§pop();
                           addr181:
                           §§push(_loc1_);
                           §§push(_loc1_.y);
                           if(_loc5_ || _loc1_)
                           {
                              §§push(_loc4_.center.y);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(§§pop() * _loc4_.§&q§);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().y = §§pop();
                           addr239:
                           addr229:
                        }
                        §§push(this);
                        §§push(this.§4!A§);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() + _loc4_.§6_§);
                        }
                        §§pop().§4!A§ = §§pop();
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              if(!(_loc6_ && this))
                              {
                                 if(false)
                                 {
                                    §§goto(addr181);
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr239);
                           }
                           §§goto(addr229);
                        }
                        addr207:
                        §§goto(addr207);
                     }
                     addr260:
                     if(§§pop() > §§pop())
                     {
                        if(_loc5_ || _loc1_)
                        {
                           addr268:
                           this.§3!q§ = 1 / this.§"X§;
                           if(!_loc6_)
                           {
                              §§push(_loc1_);
                              §§push(_loc1_.x);
                              if(_loc5_)
                              {
                                 §§push(§§pop() * this.§3!q§);
                              }
                              §§pop().x = §§pop();
                              §§goto(addr474);
                           }
                           §§goto(addr302);
                        }
                        §§goto(addr434);
                     }
                     else
                     {
                        this.§"X§ = 1;
                     }
                     §§goto(addr453);
                  }
                  §§goto(addr425);
               }
               if(_loc5_)
               {
                  §§push(this.§"X§);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        §§goto(addr260);
                     }
                  }
                  §§goto(addr425);
               }
               §§goto(addr268);
            }
         }
         while(true)
         {
            §§goto(addr77);
         }
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc5_ || _loc3_)
         {
            §§push(param1.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  addr40:
                  §§push(_loc2_.col2.x);
                  if(!_loc4_)
                  {
                     §§push(param1.y);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr58:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc5_)
                           {
                              §§push(param1.x);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr90:
                                    §§push(_loc2_.col2.y);
                                    if(_loc4_ && _loc3_)
                                    {
                                    }
                                    §§goto(addr104);
                                 }
                                 addr104:
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                 §§goto(addr103);
                              }
                              addr103:
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.x);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + this.m_xf.position.x);
                                 }
                                 §§pop().x = §§pop();
                              }
                              do
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.y);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + this.m_xf.position.y);
                                 }
                                 §§pop().y = §§pop();
                              }
                              while(!_loc5_);
                              
                              return _loc3_;
                              §§push(§§pop() * param1.y);
                           }
                           §§goto(addr104);
                        }
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr58);
            }
            §§goto(addr90);
         }
         §§goto(addr40);
      }
      
      public function §2^§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[!%§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5T§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0!&§(this.m_xf.R,param1);
      }
      
      public function §&8§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§%!<§.x);
         if(_loc3_)
         {
            §§push(this.m_angularVelocity);
            if(_loc3_)
            {
               §§push(param1.y);
               if(!(_loc2_ && param1))
               {
                  §§push(this.m_sweep.c.y);
                  if(!_loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_)
                     {
                        §§goto(addr55);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr92);
               }
               addr55:
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  addr59:
                  §§push(§§pop() - §§pop());
                  §§push(this.§%!<§.y);
                  if(_loc2_ && _loc3_)
                  {
                  }
               }
               §§goto(addr99);
            }
            addr99:
            §§push(this.m_angularVelocity);
            if(_loc3_ || this)
            {
               addr88:
               §§push(param1.x);
               if(!_loc2_)
               {
                  addr92:
                  §§push(§§pop() - this.m_sweep.c.x);
               }
               §§push(§§pop() * §§pop());
            }
            return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
         }
         §§goto(addr59);
      }
      
      public function §0L§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_ || this)
         {
            §§push(param1.x);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  addr39:
                  §§push(_loc2_.col2.x);
                  if(!(_loc5_ && this))
                  {
                     §§push(param1.y);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && _loc2_))
                        {
                           addr67:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_ || param1)
                           {
                              §§push(param1.x);
                              if(_loc4_ || param1)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                    addr113:
                                    addr89:
                                    §§push(_loc2_.col2.y);
                                    if(!(_loc5_ && this))
                                    {
                                       addr99:
                                       §§push(§§pop() * param1.y);
                                    }
                                    var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc3_.x);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(§§pop() + this.m_xf.position.x);
                                       }
                                       §§pop().x = §§pop();
                                    }
                                    do
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc3_.y);
                                       if(_loc4_ || this)
                                       {
                                          §§push(§§pop() + this.m_xf.position.y);
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    while(!_loc4_);
                                    
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(this.§%!<§.x);
                                    if(_loc4_)
                                    {
                                       §§push(this.m_angularVelocity);
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(_loc3_.y);
                                          if(!_loc5_)
                                          {
                                             §§push(this.m_sweep.c.y);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      addr162:
                                                      §§push(§§pop() - §§pop());
                                                      §§push(this.§%!<§.y);
                                                      if(_loc4_)
                                                      {
                                                         addr167:
                                                         §§push(this.m_angularVelocity);
                                                         if(!_loc5_)
                                                         {
                                                            addr181:
                                                            §§push(_loc3_.x);
                                                            if(!_loc5_)
                                                            {
                                                               addr175:
                                                               §§push(§§pop() - this.m_sweep.c.x);
                                                            }
                                                            §§push(§§pop() + §§pop() * §§pop());
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                   }
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                }
                                                §§goto(addr181);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr113);
                              }
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr113);
               }
               §§goto(addr67);
            }
            §§goto(addr113);
         }
         §§goto(addr39);
      }
      
      public function §2!o§() : Number
      {
         return this.§];§;
      }
      
      public function §7Z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§];§ = param1;
         }
      }
      
      public function §3!9§() : Number
      {
         return this.§[!7§;
      }
      
      public function §,!T§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[!7§ = param1;
         }
      }
      
      public function §@!$§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§3r§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr133:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        this.§3r§ = param1;
                        while(!(_loc4_ && param1))
                        {
                           this.§'!d§();
                           while(_loc3_ || _loc3_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr108:
                  }
                  return;
               }
            }
         }
         §§goto(addr30);
      }
      
      public function § 5§() : uint
      {
         return this.§3r§;
      }
      
      public function §[V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::;!@;
               if(!(_loc3_ && param1))
               {
                  if(_loc3_)
                  {
                     addr55:
                     this.§[B§ |= b2internal::;!@;
                     addr61:
                  }
                  return;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr55);
      }
      
      public function §5"#§() : Boolean
      {
         return (this.§[B§ & b2internal::;!@) == b2internal::;!@;
      }
      
      public function §]1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::6T;
               for(; !(_loc2_ && _loc2_); this.SetAwake(true),if(_loc2_)
               {
                  continue;
               },§§goto(addr20))
               {
                  if(_loc3_ || _loc2_)
                  {
                     continue;
                  }
               }
               addr20:
               return;
               addr84:
            }
            this.§[B§ |= b2internal::6T;
         }
         §§goto(addr84);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::5!_;
               loop0:
               while(!(_loc2_ && param1))
               {
                  this.§+0§ = 0;
                  loop1:
                  for(; !(_loc2_ && _loc2_); if(!(_loc2_ && _loc3_))
                  {
                     addr25:
                     return;
                  })
                  {
                     this.§%!<§.§+J§();
                     loop2:
                     while(true)
                     {
                        this.m_angularVelocity = 0;
                        loop3:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 this.§76§.§+J§();
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       break loop3;
                                    }
                                    addr66:
                                    while(true)
                                    {
                                       this.§5n§ = 0;
                                       if(!(_loc2_ && param1))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr25);
                              }
                              else
                              {
                                 addr133:
                              }
                              this.§[B§ |= b2internal::5!_;
                              break loop0;
                           }
                           continue loop2;
                        }
                        addr130:
                        §§goto(addr25);
                     }
                  }
               }
               this.§+0§ = 0;
               §§goto(addr130);
            }
            §§goto(addr133);
         }
         §§goto(addr66);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§[B§ & b2internal::5!_) == b2internal::5!_;
      }
      
      public function §#!z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::]3;
               loop0:
               while(true)
               {
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        continue;
                     }
                  }
                  addr82:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
            }
            while(true)
            {
               this.§[B§ |= b2internal::]3;
            }
         }
         §§goto(addr82);
      }
      
      public function §,_§() : Boolean
      {
         return (this.§[B§ & b2internal::]3) == b2internal::]3;
      }
      
      public function §4!3§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§<P§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!(_loc7_ && _loc3_))
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() == this.§3!C§())
               {
                  if(_loc6_ || param1)
                  {
                     return;
                  }
               }
               §§push(param1);
            }
            if(§§pop())
            {
               if(_loc6_)
               {
                  this.§[B§ |= b2internal::0!_;
                  addr66:
                  _loc2_ = this.m_world.§5!>§.§,>§;
                  _loc3_ = this.§>"#§;
                  while(_loc3_)
                  {
                     _loc3_.§[E§(_loc2_,this.m_xf);
                     if(!_loc6_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§=!8§;
                  }
               }
               §§goto(addr66);
            }
            else
            {
               this.§[B§ &= ~b2internal::0!_;
               _loc2_ = this.m_world.§5!>§.§,>§;
               _loc3_ = this.§>"#§;
               if(_loc6_)
               {
                  while(_loc3_)
                  {
                     _loc3_.§#i§(_loc2_);
                     if(!(_loc6_ || _loc3_))
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§=!8§;
                  }
               }
               _loc4_ = this.§0!?§;
               if(!_loc7_)
               {
                  while(_loc4_)
                  {
                     _loc5_ = _loc4_;
                     _loc4_ = _loc4_.§`!w§;
                     if(!(_loc7_ && this))
                     {
                        this.m_world.§5!>§.§=_§(_loc5_.§8!m§);
                     }
                  }
                  if(_loc7_ && _loc2_)
                  {
                  }
                  §§goto(addr189);
               }
               this.§0!?§ = null;
            }
            addr189:
            return;
         }
         §§goto(addr66);
      }
      
      public function §3!C§() : Boolean
      {
         return (this.§[B§ & b2internal::0!_) == b2internal::0!_;
      }
      
      public function §3!j§() : Boolean
      {
         return (this.§[B§ & b2internal::6T) == b2internal::6T;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§>"#§;
      }
      
      public function §86§() : b2JointEdge
      {
         return this.§8!I§;
      }
      
      public function §`!S§() : b2ControllerEdge
      {
         return this.§'z§;
      }
      
      public function §>!3§() : b2ContactEdge
      {
         return this.§0!?§;
      }
      
      public function §?!^§() : b2Body
      {
         return this.§=!8§;
      }
      
      public function GetUserData() : *
      {
         return this.§>g§;
      }
      
      public function §%V§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§>g§ = param1;
         }
      }
      
      public function §var §() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §%y§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §@!>§;
         if(_loc7_)
         {
            §§push(_loc1_.R);
            if(_loc7_ || this)
            {
               §§pop().Set(this.m_sweep.a0);
               addr38:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(_loc7_ || _loc2_)
            {
               §§push(_loc1_.position);
               if(_loc7_)
               {
                  §§push(this.m_sweep);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop().c0);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(_loc2_.col1);
                           if(_loc7_)
                           {
                              §§push(§§pop().x);
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(_loc3_.y);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc7_ || _loc1_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc7_ || _loc1_)
                                                         {
                                                            addr170:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(_loc7_ || _loc1_)
                                                            {
                                                               addr180:
                                                               §§push(_loc2_.col1.y);
                                                               if(_loc7_ || this)
                                                               {
                                                                  addr188:
                                                                  §§push(_loc3_.x);
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     addr197:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr200:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(!(_loc6_ && _loc1_))
                                                                        {
                                                                           addr213:
                                                                           §§push(§§pop() - (§§pop() + §§pop() * _loc3_.y));
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                               §§goto(addr200);
                                                            }
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      §§pop().y = §§pop();
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr200);
                                                }
                                             }
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr213);
                           }
                        }
                        §§goto(addr180);
                     }
                  }
               }
               §§goto(addr170);
            }
            addr226:
            var _loc5_:§<P§ = this.m_world.§5!>§.§,>§;
            _loc4_ = this.§>"#§;
            while(_loc4_)
            {
               _loc4_.§0!H§(_loc5_,_loc1_,this.m_xf);
               if(!_loc7_)
               {
                  break;
               }
               _loc4_ = _loc4_.§=!8§;
            }
            return;
         }
         §§goto(addr38);
      }
      
      b2internal function §@!1§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.m_xf);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop().R);
               if(!_loc3_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr37:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(!(_loc3_ && _loc2_))
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr199:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr201:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr202:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr203:
                              loop4:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr205:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(_loc2_.x);
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr161:
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             addr169:
                                             §§push(§§pop() - (§§pop() + §§pop()));
                                             if(_loc4_ || _loc1_)
                                             {
                                                §§pop().y = §§pop();
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   return;
                                                   addr185:
                                                }
                                                continue loop0;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    addr216:
                                    while(true)
                                    {
                                       §§push(_loc1_.col2);
                                       addr218:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr219:
                                          while(true)
                                          {
                                             §§push(_loc2_.y);
                                             addr221:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr222:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr223:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr224:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop0;
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
                     }
                  }
               }
               §§goto(addr185);
            }
         }
         §§goto(addr37);
      }
      
      b2internal function §'!F§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§3r§);
            if(_loc3_ || _loc2_)
            {
               §§push(b2_dynamicBody);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              addr50:
                              §§pop();
                              if(_loc3_)
                              {
                                 addr56:
                                 §§push(param1.§3r§ == b2_dynamicBody);
                                 if(_loc3_)
                                 {
                                    addr69:
                                    §§push(!§§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr77:
                                       if(§§pop())
                                       {
                                          if(_loc4_ && this)
                                          {
                                             addr87:
                                             var _loc2_:b2JointEdge = this.§8!I§;
                                             for(; _loc2_; _loc2_ = _loc2_.§`!w§)
                                             {
                                                if(_loc2_.§<!M§ == param1)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(_loc2_.§@"!§.§7u§);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(§§pop() != false)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(false);
                                                         if(_loc3_ || this)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                }
                                             }
                                             addr146:
                                             return §§pop();
                                             §§push(true);
                                          }
                                       }
                                       §§goto(addr87);
                                    }
                                 }
                                 §§goto(addr86);
                              }
                              addr86:
                              return §§pop();
                              §§push(false);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr56);
         }
         §§goto(addr87);
      }
      
      b2internal function §5!4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.m_sweep);
            while(true)
            {
               §§push(param1);
               addr85:
               while(true)
               {
                  §§pop().§5!4§(§§pop());
                  addr86:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        §§goto(addr81);
                     }
                  }
               }
            }
         }
         addr81:
         while(true)
         {
            §§push(this.m_sweep);
            if(_loc3_)
            {
               continue loop0;
            }
            continue loop3;
         }
         addr41:
      }
   }
}
