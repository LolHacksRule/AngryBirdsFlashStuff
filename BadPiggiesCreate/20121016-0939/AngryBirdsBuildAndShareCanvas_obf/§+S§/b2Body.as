package §+S§
{
   import § !V§.b2JointEdge;
   import §"!9§.b2EdgeShape;
   import §"!9§.b2MassData;
   import §"!9§.b2Shape;
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Sweep;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!o§.§#!M§;
   import §;T§.b2Contact;
   import §;T§.b2ContactEdge;
   import §=!z§.b2ControllerEdge;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §8?§:b2Transform;
      
      b2internal static var §`Y§:uint = 1;
      
      b2internal static var §<"7§:uint = 2;
      
      b2internal static var §8"8§:uint = 4;
      
      b2internal static var §'!Z§:uint = 8;
      
      b2internal static var §!!,§:uint = 16;
      
      b2internal static var §@""§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §8?§ = new b2Transform();
         }
         while(true)
         {
            §`Y§ = 1;
            loop1:
            while(true)
            {
               §<"7§ = 2;
               loop2:
               while(true)
               {
                  §8"8§ = 4;
                  loop3:
                  do
                  {
                     §'!Z§ = 8;
                     while(true)
                     {
                        §!!,§ = 16;
                        do
                        {
                           §@""§ = 32;
                           continue loop1;
                        }
                        while(_loc1_ && _loc1_);
                        
                        continue loop3;
                        addr63:
                        if(!(_loc2_ || b2Body))
                        {
                           continue;
                        }
                        b2_dynamicBody = 2;
                        addr80:
                        if(_loc1_)
                        {
                           addr56:
                           while(_loc2_ || _loc2_)
                           {
                              §§goto(addr63);
                              §§goto(addr80);
                           }
                           continue loop1;
                           addr56:
                        }
                        if(!_loc2_)
                        {
                           continue loop2;
                        }
                        §§goto(addr37);
                     }
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  return;
               }
            }
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            b2_kinematicBody = 1;
            §§goto(addr56);
         }
      }
      
      b2internal var §`"8§:uint;
      
      b2internal var §="1§:int;
      
      b2internal var §7<§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §,b§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §2!d§:b2Vec2;
      
      b2internal var §?6§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §7b§:b2Body;
      
      b2internal var §>""§:b2Body;
      
      b2internal var §&f§:b2Fixture;
      
      b2internal var §+w§:int;
      
      b2internal var §!n§:b2ControllerEdge;
      
      b2internal var §;"<§:int;
      
      b2internal var §-y§:b2JointEdge;
      
      b2internal var §]8§:b2ContactEdge;
      
      b2internal var §@e§:Number;
      
      b2internal var §;k§:Number;
      
      b2internal var §2;§:Number;
      
      b2internal var §6x§:Number;
      
      b2internal var §;!e§:Number;
      
      b2internal var §%!o§:Number;
      
      b2internal var §7!_§:Number;
      
      b2internal var §[^§:Number;
      
      private var §6g§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.m_xf = new b2Transform();
            while(true)
            {
               this.m_sweep = new b2Sweep();
               while(true)
               {
                  this.§,b§ = new b2Vec2();
                  while(true)
                  {
                     this.§2!d§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§`"8§ = 0;
                           while(true)
                           {
                              §§push(param1.§@!§);
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§4_§);
                                       loop10:
                                       for(; !_loc7_; while(!(_loc7_ && param2))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                this.§`"8§ |= b2internal::8"8;
                                                loop15:
                                                while(true)
                                                {
                                                   addr148:
                                                   while(true)
                                                   {
                                                      §§push(param1.§54§);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               this.§`"8§ |= b2internal::<"7;
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr189);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop17;
                                                         }
                                                      }
                                                      §§goto(addr195);
                                                      continue loop15;
                                                   }
                                                }
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr148);
                                       })
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                this.§`"8§ |= b2internal::!!,;
                                                addr195:
                                                while(!_loc7_)
                                                {
                                                }
                                                continue loop4;
                                             }
                                             addr189:
                                          }
                                          while(true)
                                          {
                                             §§push(param1.§'!H§);
                                             continue loop10;
                                          }
                                       }
                                       continue loop6;
                                    }
                                    addr183:
                                 }
                                 §§goto(addr202);
                              }
                              while(!(_loc7_ && param1))
                              {
                                 §§goto(addr183);
                                 §§goto(addr86);
                              }
                           }
                        }
                     }
                     while(!(_loc7_ && param1))
                     {
                        while(true)
                        {
                           §§push(this.m_xf);
                           if(!_loc7_)
                           {
                              §§goto(addr69);
                           }
                           break;
                        }
                        §§goto(addr265);
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      private function §-![§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§9i§().y,param2.§9i§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§@;§(_loc5_,param2.§9i§());
         _loc6_ = b2Math.§'!%§(_loc6_,param2.§"I§());
         _loc6_ = b2Math.§@;§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§=0§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§=0§(param1.§9i§(),param2.§9i§())).Normalize();
         var _loc8_:* = b2Math.§@!y§(param1.§9i§(),param2.§"I§()) > 0;
         if(!_loc10_)
         {
            param1.§+!P§(param2,_loc6_,_loc7_,_loc8_);
            do
            {
               param2.§<x§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(_loc10_);
            
         }
         return _loc4_;
      }
      
      public function §!!V§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§#!M§ = null;
         if(!(_loc6_ && param1))
         {
            if(this.m_world.§=W§() == true)
            {
               if(!_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Fixture = new b2Fixture();
         if(_loc7_)
         {
            _loc2_.§-!x§(this,this.m_xf,param1);
            if(_loc7_ || this)
            {
               if(this.§`"8§ & b2internal::@"")
               {
                  if(!_loc6_)
                  {
                     addr62:
                     §§push(this.m_world);
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc3_ = §§pop().§&!L§.§9n§;
                        if(_loc7_)
                        {
                           _loc2_.§>!#§(_loc3_,this.m_xf);
                           addr92:
                           _loc2_.§>""§ = this.§&f§;
                           if(_loc7_)
                           {
                              addr98:
                              this.§&f§ = _loc2_;
                              if(!(_loc6_ && _loc2_))
                              {
                                 var _loc4_:*;
                                 §§push((_loc4_ = this).§+w§);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!(_loc6_ && this))
                                 {
                                    _loc4_.§+w§ = _loc5_;
                                 }
                                 if(!_loc6_)
                                 {
                                    _loc2_.m_body = this;
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc2_.§-&§ > 0)
                                       {
                                          addr163:
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             while(true)
                                             {
                                                this.§3!L§();
                                                addr182:
                                                while(true)
                                                {
                                                }
                                                §§goto(addr163);
                                             }
                                             addr180:
                                          }
                                          §§goto(addr182);
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.m_world);
                                          addr144:
                                          while(true)
                                          {
                                             §§push(this.m_world.§`"8§);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() | b2World.§;!4§);
                                             }
                                             §§pop().§`"8§ = §§pop();
                                             if(!_loc7_)
                                             {
                                                break loop2;
                                             }
                                             if(!_loc6_)
                                             {
                                                return _loc2_;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    addr135:
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr98);
               }
               §§goto(addr92);
            }
            §§goto(addr62);
         }
         §§goto(addr98);
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(_loc5_ || this)
         {
            _loc3_.shape = param1;
            do
            {
               _loc3_.density = param2;
            }
            while(!(_loc5_ || _loc3_));
            
         }
         return this.§!!V§(_loc3_);
      }
      
      public function §[8§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§#!M§ = null;
         if(!(_loc12_ && this))
         {
            if(this.m_world.§=W§() == true)
            {
               if(_loc13_)
               {
                  §§goto(addr43);
               }
            }
            var _loc2_:b2Fixture = this.§&f§;
            var _loc3_:b2Fixture = null;
            var _loc4_:Boolean = false;
            loop0:
            for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§>""§)
            {
               if(_loc2_ != param1)
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  if(!_loc3_)
                  {
                     this.§&f§ = param1.§>""§;
                     loop2:
                     while(true)
                     {
                        if(_loc12_)
                        {
                           while(true)
                           {
                              _loc3_.§>""§ = param1.§>""§;
                              addr93:
                              while(true)
                              {
                                 addr72:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr89:
                        }
                        while(true)
                        {
                           _loc4_ = true;
                           if(!_loc13_)
                           {
                              break loop0;
                           }
                           continue loop2;
                           §§goto(addr72);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr89);
               }
            }
            var _loc5_:b2ContactEdge = this.§]8§;
            if(_loc13_ || this)
            {
               while(_loc5_)
               {
                  _loc6_ = _loc5_.§3w§;
                  _loc5_ = _loc5_.§9!V§;
                  _loc7_ = _loc6_.§=!'§();
                  _loc8_ = _loc6_.§&O§();
                  if(_loc12_)
                  {
                     continue;
                  }
                  §§push(param1 == _loc7_);
                  if(!(_loc12_ && param1))
                  {
                     if(!§§pop())
                     {
                        if(_loc13_)
                        {
                           addr160:
                           §§pop();
                           if(_loc13_)
                           {
                              addr166:
                              if(param1 != _loc8_)
                              {
                                 continue;
                              }
                              if(_loc12_)
                              {
                                 continue;
                              }
                           }
                           this.m_world.§&!L§.§;&§(_loc6_);
                           continue;
                        }
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr160);
               }
               if(!_loc12_)
               {
                  if(this.§`"8§ & b2internal::@"")
                  {
                     if(!_loc12_)
                     {
                        _loc9_ = this.m_world.§&!L§.§9n§;
                        if(_loc13_ || param1)
                        {
                           param1.§`4§(_loc9_);
                           §§goto(addr201);
                        }
                        addr201:
                        param1.§;&§();
                        if(_loc12_)
                        {
                        }
                        §§goto(addr247);
                     }
                     param1.m_body = null;
                     if(!_loc12_)
                     {
                        addr210:
                        param1.§>""§ = null;
                        if(!(_loc12_ && param1))
                        {
                           var _loc10_:*;
                           §§push((_loc10_ = this).§+w§);
                           if(_loc13_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc11_:* = §§pop();
                           if(!_loc12_)
                           {
                              _loc10_.§+w§ = _loc11_;
                           }
                           if(!_loc12_)
                           {
                              addr247:
                              this.§3!L§();
                              return;
                           }
                        }
                     }
                  }
               }
               §§goto(addr201);
            }
            §§goto(addr210);
         }
         addr43:
      }
      
      public function §,!C§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(_loc9_)
         {
            if(this.m_world.§=W§() == true)
            {
               if(_loc9_ || param2)
               {
                  return;
               }
               addr76:
               while(true)
               {
               }
               addr76:
            }
            loop0:
            while(true)
            {
               §§push(this.m_xf);
               loop1:
               while(true)
               {
                  §§push(§§pop().R);
                  if(!(_loc8_ && param2))
                  {
                     §§pop().Set(param2);
                     while(true)
                     {
                        if(_loc9_)
                        {
                           §§push(this.m_xf);
                           if(!(_loc9_ || param1))
                           {
                              break;
                           }
                           if(!(_loc8_ && this))
                           {
                              §§pop().position.SetV(param1);
                              if(_loc9_)
                              {
                                 if(true)
                                 {
                                    §§push(this.m_xf);
                                 }
                                 continue loop0;
                                 break;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        §§goto(addr76);
                     }
                     §§push(§§pop().R);
                     break;
                  }
                  break;
               }
               var _loc4_:b2Mat22 = §§pop();
               var _loc5_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc9_)
               {
                  §§push(this.m_sweep);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop().c);
                     loop4:
                     while(true)
                     {
                        §§push(_loc4_.col1);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(!(_loc8_ && _loc3_))
                           {
                              §§push(_loc5_.x);
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr294:
                                 if(!(_loc9_ || this))
                                 {
                                    continue;
                                 }
                                 addr302:
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    §§pop().y = §§pop();
                                    addr303:
                                    while(true)
                                    {
                                       §§push(this.m_sweep);
                                       if(_loc8_)
                                       {
                                          §§pop().a0 = this.m_sweep.a = param2;
                                          var _loc6_:§#!M§ = this.m_world.§&!L§.§9n§;
                                          _loc3_ = this.§&f§;
                                       }
                                       else
                                       {
                                          addr331:
                                          addr340:
                                       }
                                       continue loop3;
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!_loc8_)
                                             {
                                                this.m_world.§&!L§.§+"-§();
                                                break;
                                             }
                                             break;
                                          }
                                          _loc3_.§";§(_loc6_,this.m_xf,this.m_xf);
                                          if(!(_loc9_ || _loc3_))
                                          {
                                             break;
                                          }
                                          _loc3_ = _loc3_.§>""§;
                                       }
                                       return;
                                    }
                                    continue loop3;
                                 }
                                 addr302:
                              }
                           }
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
                                             loop13:
                                             while(true)
                                             {
                                                §§push(this.m_sweep);
                                                while(true)
                                                {
                                                   §§push(§§pop().c);
                                                   addr258:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.col1);
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().y);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(_loc5_.x);
                                                         while(_loc9_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc9_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_.col2);
                                                                  if(_loc8_ && this)
                                                                  {
                                                                     break;
                                                                     addr287:
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.y);
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                        addr292:
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     while(!_loc8_)
                                                                     {
                                                                        §§goto(addr294);
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop8;
                                                               addr277:
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         continue loop11;
                                                         addr272:
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                   continue loop5;
                                                   addr116:
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      addr123:
                                                      §§push(§§pop().c);
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            §§push(this.m_sweep);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop().c);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(_loc9_)
                                                                  {
                                                                     addr143:
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        §§push(this.m_xf);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§§pop().position);
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(!(_loc8_ && param2))
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr175:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(this.m_sweep);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§pop().c0.SetV(this.m_sweep.c);
                                                                                                if(!(_loc8_ && param1))
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.m_sweep);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr116);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr331);
                                                                                                         addr111:
                                                                                                      }
                                                                                                      §§goto(addr331);
                                                                                                      §§push(this.m_sweep);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_ || param2)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr111);
                                                                                                      }
                                                                                                      §§goto(addr303);
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                   addr244:
                                                                                                }
                                                                                                §§goto(addr340);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                       while(_loc9_ || this)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          §§push(this.m_xf);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().position);
                                                                                             addr227:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr228:
                                                                                                while(!(_loc8_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param2))
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         §§goto(addr244);
                                                                                                      }
                                                                                                      break;
                                                                                                      §§goto(addr143);
                                                                                                   }
                                                                                                   §§goto(addr302);
                                                                                                }
                                                                                                §§goto(addr292);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop12;
                                                                                       addr215:
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                                 §§goto(addr287);
                                                                              }
                                                                              §§goto(addr228);
                                                                           }
                                                                           §§goto(addr227);
                                                                        }
                                                                        §§goto(addr226);
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  §§goto(addr175);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr215);
                                                               }
                                                               addr214:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr214);
                                                            }
                                                            addr213:
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      while(_loc9_)
                                                      {
                                                         §§goto(addr213);
                                                         §§push(this.m_sweep);
                                                         §§goto(addr123);
                                                      }
                                                      continue loop4;
                                                      addr209:
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
               §§goto(addr331);
            }
         }
         §§goto(addr76);
      }
      
      public function §0">§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!C§(param1.position,param1.GetAngle());
         }
      }
      
      public function §?^§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §>!W§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!C§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §-!7§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!C§(this.GetPosition(),param1);
         }
      }
      
      public function §=!q§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §,!z§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§="1§ == b2_staticBody)
            {
               if(_loc3_ || this)
               {
                  return;
               }
               addr64:
               while(true)
               {
               }
               addr64:
            }
            while(true)
            {
               this.§,b§.SetV(param1);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§,b§;
      }
      
      public function §`!`§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§="1§ == b2_staticBody)
            {
               if(!(_loc2_ && this))
               {
                  §§goto(addr72);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr39);
                  }
               }
            }
            addr39:
            while(true)
            {
               this.m_angularVelocity = param1;
               if(_loc3_ || param1)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr72:
      }
      
      public function §7"<§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §`O§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc2_)
         {
            _loc1_.type = this.§+!O§();
            loop0:
            while(true)
            {
               _loc1_.§'!H§ = (this.§`"8§ & b2internal::8"8) == b2internal::8"8;
               loop1:
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  loop2:
                  while(true)
                  {
                     _loc1_.§[!u§ = this.§7!_§;
                     loop3:
                     while(true)
                     {
                        _loc1_.§@n§ = this.m_angularVelocity;
                        while(_loc2_)
                        {
                           _loc1_.§4_§ = (this.§`"8§ & b2internal::!!,) == b2internal::!!,;
                           loop5:
                           while(true)
                           {
                              _loc1_.§@!§ = (this.§`"8§ & b2internal::'!Z) == b2internal::'!Z;
                              while(true)
                              {
                                 _loc1_.§54§ = (this.§`"8§ & b2internal::<"7) == b2internal::<"7;
                                 addr132:
                                 while(true)
                                 {
                                    _loc1_.§[!E§ = this.§%!o§;
                                    continue loop2;
                                 }
                                 addr76:
                                 if(!(_loc3_ && this))
                                 {
                                    _loc1_.§1P§ = this.GetUserData();
                                    addr83:
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       addr69:
                                       while(_loc2_ || _loc1_)
                                       {
                                          §§goto(addr76);
                                          §§goto(addr83);
                                       }
                                       while(!_loc3_)
                                       {
                                          continue loop3;
                                          §§goto(addr69);
                                       }
                                       addr69:
                                       §§goto(addr132);
                                       addr100:
                                    }
                                    addr40:
                                    if(_loc2_ || _loc1_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           if(_loc2_ || this)
                           {
                              if(!_loc3_)
                              {
                                 return _loc1_;
                                 addr63:
                              }
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.position = this.GetPosition();
            §§goto(addr69);
         }
         §§goto(addr63);
      }
      
      public function §6Q§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§="1§ != b2_dynamicBody)
            {
               if(_loc4_)
               {
                  return;
               }
               while(true)
               {
               }
               addr205:
            }
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  if(_loc4_)
                  {
                     this.SetAwake(true);
                  }
                  while(!_loc3_)
                  {
                     loop10:
                     for(; _loc4_ || param1; §§pop().§?6§ = §§pop(),if(_loc4_ || _loc3_)
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           loop9:
                           while(true)
                           {
                              §§push(this.§2!d§);
                              if(_loc4_)
                              {
                                 §§push(this.§2!d§);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(§§pop().y);
                                    if(!_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(param1.y);
                                             if(_loc4_)
                                             {
                                                addr155:
                                                §§pop().y = §§pop() + §§pop();
                                                continue loop10;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(param1.x);
                                             }
                                             addr170:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop9;
                                       }
                                    }
                                    §§goto(addr155);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr169:
                                 }
                                 §§goto(addr170);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop9;
                                 }
                                 addr167:
                              }
                              §§goto(addr169);
                           }
                        }
                        return;
                        addr128:
                     })
                     {
                        §§push(this);
                        §§push(this.§?6§);
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        §§push(param2.x);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this.m_sweep.c.x);
                           if(_loc4_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc3_ && param1))
                              {
                                 addr58:
                                 §§push(param1.y);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc3_ && param1))
                                    {
                                       addr75:
                                       §§push(param2.y);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(_loc4_ || param2)
                                          {
                                             addr111:
                                             §§push(§§pop() - §§pop());
                                             if(!_loc3_)
                                             {
                                                addr108:
                                                §§push(param1.x);
                                             }
                                             §§push(§§pop() + (§§pop() - §§pop()));
                                             continue;
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr75);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr58);
                     }
                  }
                  continue;
               }
               while(true)
               {
                  §§goto(addr167);
               }
            }
         }
         §§goto(addr128);
      }
      
      public function §4K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§="1§ != b2_dynamicBody)
            {
               if(!_loc3_)
               {
                  return;
               }
               while(true)
               {
               }
               addr90:
            }
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  if(!(_loc3_ && this))
                  {
                     this.SetAwake(true);
                  }
                  loop1:
                  while(_loc2_ || _loc3_)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§?6§);
                        if(_loc2_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§?6§ = §§pop();
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
                  continue;
               }
               §§goto(addr28);
            }
         }
         §§goto(addr90);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(this.§="1§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(!(_loc3_ && this))
                     {
                        this.SetAwake(true);
                        addr236:
                        while(true)
                        {
                        }
                        addr236:
                     }
                     §§goto(addr236);
                  }
                  while(true)
                  {
                     §§push(this.§,b§);
                     loop2:
                     while(true)
                     {
                        §§push(this.§,b§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop4:
                           while(true)
                           {
                              §§push(this.§;k§);
                              loop5:
                              while(true)
                              {
                                 §§push(param1.x);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop8:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          while(true)
                                          {
                                             §§push(this.§,b§);
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                break;
                                             }
                                             §§push(this.§,b§);
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop().y);
                                             if(_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop8;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(this.§;k§);
                                                if(!_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(param1.y);
                                                   if(!_loc4_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().y = §§pop();
                                             do
                                             {
                                                §§push(this);
                                                §§push(this.m_angularVelocity);
                                                if(!(_loc4_ || param2))
                                                {
                                                   continue;
                                                }
                                                §§push(this.§6x§);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(param2.x);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this.m_sweep.c.x);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(param1.y);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc3_ && param2)
                                                               {
                                                               }
                                                               addr126:
                                                               §§push(§§pop() + §§pop() * §§pop());
                                                               continue;
                                                            }
                                                            addr122:
                                                            §§goto(addr126);
                                                            §§push(§§pop() - §§pop() * param1.x);
                                                         }
                                                         §§push(param2.y);
                                                         if(_loc4_ || param2)
                                                         {
                                                            §§push(this.m_sweep.c.y);
                                                            if(_loc4_ || this)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc4_ || this)
                                                               {
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr122);
                                                   }
                                                }
                                                §§goto(addr126);
                                             }
                                             while(§§pop().m_angularVelocity = §§pop(), _loc3_);
                                             
                                             if(!(_loc4_ || this))
                                             {
                                                continue;
                                             }
                                             if(_loc4_)
                                             {
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                if(!_loc3_)
                                                {
                                                   return;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr236);
                                             }
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
            }
            return;
         }
         §§goto(addr236);
      }
      
      public function §6!6§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.§7"<§());
         if(!_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§=!q§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§6!E§(this.§`O§());
         var _loc8_:b2Fixture = _loc5_.§&f§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc17_)
               {
                  break;
               }
               §§goto(addr196);
            }
            if(!param1(_loc8_))
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§>""§;
               continue;
            }
            if(!(_loc17_ || param1))
            {
               break;
            }
            _loc13_ = _loc8_.§>""§;
            if(_loc17_)
            {
               if(_loc7_)
               {
                  if(!_loc16_)
                  {
                     _loc7_.§>""§ = _loc13_;
                     if(_loc16_ && this)
                     {
                     }
                     addr97:
                     var _loc14_:*;
                     §§push((_loc14_ = _loc5_).§+w§);
                     if(_loc17_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc15_:* = §§pop();
                     if(!_loc16_)
                     {
                        _loc14_.§+w§ = _loc15_;
                     }
                     if(_loc17_ || _loc3_)
                     {
                        _loc8_.§>""§ = _loc6_.§&f§;
                        if(_loc16_)
                        {
                        }
                        addr145:
                        §§push((_loc14_ = _loc6_).§+w§);
                        if(_loc17_ || param1)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc15_ = §§pop();
                        if(!_loc16_)
                        {
                           _loc14_.§+w§ = _loc15_;
                        }
                        if(_loc17_ || param1)
                        {
                           addr172:
                           _loc8_.m_body = _loc6_;
                        }
                        _loc8_ = _loc13_;
                        continue;
                     }
                     §§goto(addr172);
                  }
                  _loc6_.§&f§ = _loc8_;
                  if(_loc17_ || _loc2_)
                  {
                  }
                  §§goto(addr145);
               }
               else
               {
                  _loc5_.§&f§ = _loc13_;
                  if(!(_loc16_ && _loc3_))
                  {
                     §§goto(addr97);
                  }
               }
               §§goto(addr145);
            }
            §§goto(addr172);
         }
         _loc5_.§3!L§();
         if(!_loc16_)
         {
            _loc6_.§3!L§();
         }
         addr196:
         var _loc9_:b2Vec2 = _loc5_.§=!q§();
         var _loc10_:b2Vec2 = _loc6_.§=!q§();
         var _loc11_:b2Vec2 = b2Math.§=0§(_loc2_,b2Math.§4n§(_loc3_,b2Math.§'!%§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§=0§(_loc2_,b2Math.§4n§(_loc3_,b2Math.§'!%§(_loc10_,_loc4_)));
         if(!_loc16_)
         {
            _loc5_.SetLinearVelocity(_loc11_);
            loop1:
            while(true)
            {
               _loc6_.SetLinearVelocity(_loc12_);
               addr283:
               while(true)
               {
                  _loc5_.§`!`§(_loc3_);
                  addr266:
                  while(_loc17_)
                  {
                  }
                  continue loop1;
               }
            }
         }
         loop4:
         while(true)
         {
            _loc6_.§`!`§(_loc3_);
            while(_loc17_)
            {
               _loc5_.§1"4§();
               while(_loc17_ || _loc2_)
               {
                  _loc6_.§1"4§();
                  if(!_loc17_)
                  {
                     continue;
                  }
                  if(_loc17_)
                  {
                     break loop4;
                  }
                  §§goto(addr266);
               }
            }
            §§goto(addr283);
         }
         return _loc6_;
      }
      
      public function §5!`§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&f§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§>""§;
            if(_loc15_ || _loc2_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§+w§);
               if(_loc15_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!(_loc14_ && param1))
               {
                  _loc12_.§+w§ = _loc13_;
               }
               if(!(_loc14_ && _loc2_))
               {
                  _loc2_.§>""§ = this.§&f§;
                  if(!(_loc15_ || _loc3_))
                  {
                     continue;
                  }
                  this.§&f§ = _loc2_;
                  if(!(_loc14_ && param1))
                  {
                     addr94:
                     §§push((_loc12_ = this).§+w§);
                     if(!_loc14_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc13_ = §§pop();
                     if(!(_loc14_ && param1))
                     {
                        _loc12_.§+w§ = _loc13_;
                     }
                     if(_loc14_)
                     {
                        continue;
                     }
                  }
               }
               _loc2_.m_body = _loc4_;
               continue;
            }
            §§goto(addr94);
         }
         if(_loc15_)
         {
            _loc3_.§+w§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§=!q§();
         var _loc6_:b2Vec2 = _loc4_.§=!q§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.§7"<§());
         if(_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§7"<§());
         if(_loc15_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!(_loc14_ && _loc3_))
         {
            _loc3_.§3!L§();
         }
         do
         {
            this.§1"4§();
         }
         while(!_loc15_);
         
      }
      
      public function GetMass() : Number
      {
         return this.§@e§;
      }
      
      public function §"!3§() : Number
      {
         return this.§2;§;
      }
      
      public function §9!B§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.§5d§ = this.§@e§;
            while(true)
            {
               param1.I = this.§2;§;
               while(!(_loc2_ && param1))
               {
                  param1.center.SetV(this.m_sweep.localCenter);
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §&t§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§=W§());
            if(_loc4_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
         }
         loop0:
         while(true)
         {
            §§push(this.m_world.§=W§());
            loop1:
            while(true)
            {
               §§push(true);
               loop2:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§="1§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() == b2_dynamicBody)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§;k§ = 0;
                                 loop6:
                                 while(true)
                                 {
                                    this.§2;§ = 0;
                                    loop7:
                                    while(true)
                                    {
                                       this.§6x§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          this.§@e§ = param1.§5d§;
                                          loop9:
                                          while(!_loc3_)
                                          {
                                             §§push(this.§@e§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr202:
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         this.§@e§ = 1;
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                      addr213:
                                                   }
                                                   while(true)
                                                   {
                                                      this.§;k§ = 1 / this.§@e§;
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr213);
                                                         addr86:
                                                         if(!(_loc4_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(this);
                                                         §§push(param1.I);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§push(this.§@e§);
                                                            if(_loc4_)
                                                            {
                                                               §§push(param1.center.x);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(param1.center);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr144:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           addr136:
                                                                           §§push(param1.center.y);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop() * param1.center.y);
                                                                           }
                                                                        }
                                                                        §§pop().§2;§ = §§pop() - §§pop() * §§pop();
                                                                        while(_loc4_)
                                                                        {
                                                                           if(_loc3_ && _loc3_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           addr260:
                                                                           this.§6x§ = 1 / this.§2;§;
                                                                           if(_loc3_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr34:
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§`"8§ & b2internal::!!,);
                                                                                    if(_loc3_ && this)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr59:
                                                                                    §§push(§§pop() == 0);
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       addr68:
                                                                                       if(!(_loc4_ || param1))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc3_ && this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   §§goto(addr59);
                                                                                                }
                                                                                                addr175:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   while(!(_loc3_ && _loc2_))
                                                                                                   {
                                                                                                      §§goto(addr86);
                                                                                                      §§goto(addr34);
                                                                                                   }
                                                                                                }
                                                                                                addr272:
                                                                                                var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr448:
                                                                                                   this.m_sweep.localCenter.SetV(param1.center);
                                                                                                   this.m_sweep.c0.SetV(b2Math.§>!C§(this.m_xf,this.m_sweep.localCenter));
                                                                                                   addr452:
                                                                                                   addr445:
                                                                                                   §§push(this.m_sweep);
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§pop().c.SetV(this.m_sweep.c0);
                                                                                                         addr422:
                                                                                                         §§push(this.§,b§);
                                                                                                         §§push(this.§,b§.x);
                                                                                                         §§push(this.m_angularVelocity);
                                                                                                         §§push(this.m_sweep.c.y);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr400:
                                                                                                            addr399:
                                                                                                            addr390:
                                                                                                            addr401:
                                                                                                            §§push(§§pop() - _loc2_.y);
                                                                                                            if(_loc4_ || _loc2_)
                                                                                                            {
                                                                                                               addr398:
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                                            addr402:
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(this.§,b§);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(this.§,b§);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.m_angularVelocity);
                                                                                                                           if(_loc4_ || param1)
                                                                                                                           {
                                                                                                                              §§push(this.m_sweep);
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(!(_loc3_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(_loc4_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_.x);
                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                addr348:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr354:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc3_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc4_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr452);
                                                                                                                                                               }
                                                                                                                                                               return;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr422);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr402);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr422);
                                                                                                                                                }
                                                                                                                                                §§goto(addr400);
                                                                                                                                             }
                                                                                                                                             §§goto(addr399);
                                                                                                                                          }
                                                                                                                                          §§goto(addr348);
                                                                                                                                       }
                                                                                                                                       §§goto(addr390);
                                                                                                                                    }
                                                                                                                                    §§goto(addr348);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr422);
                                                                                                                           }
                                                                                                                           §§goto(addr348);
                                                                                                                        }
                                                                                                                        §§goto(addr401);
                                                                                                                     }
                                                                                                                     §§goto(addr354);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr422);
                                                                                                            }
                                                                                                            §§goto(addr445);
                                                                                                         }
                                                                                                         §§goto(addr398);
                                                                                                      }
                                                                                                      §§goto(addr448);
                                                                                                   }
                                                                                                   addr426:
                                                                                                   §§goto(addr426);
                                                                                                }
                                                                                                §§goto(addr422);
                                                                                                addr77:
                                                                                             }
                                                                                             while(_loc4_)
                                                                                             {
                                                                                                if(_loc3_ && this)
                                                                                                {
                                                                                                   return;
                                                                                                }
                                                                                                addr252:
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop5;
                                                                                             §§goto(addr68);
                                                                                          }
                                                                                          continue loop2;
                                                                                          addr166:
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr77);
                                                                                    }
                                                                                    §§goto(addr175);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr272);
                                                                           }
                                                                           §§goto(addr79);
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     §§goto(addr144);
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr136);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr144);
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr252);
                        }
                     }
                  }
                  §§goto(addr260);
               }
            }
         }
      }
      
      public function §3!L§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(!_loc5_)
         {
            this.§@e§ = 0;
            while(true)
            {
               this.§;k§ = 0;
            }
            addr133:
         }
         loop1:
         while(true)
         {
            this.§2;§ = 0;
            while(true)
            {
               this.§6x§ = 0;
               while(!(_loc5_ && _loc3_))
               {
                  this.m_sweep.localCenter.§@!s§();
                  continue loop1;
                  if(!(_loc5_ && this))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!(_loc5_ && param1))
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && param1))
               {
                  §§push(_loc2_.col2.x);
                  if(_loc4_)
                  {
                     §§push(param1.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && param1))
                        {
                           addr62:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!_loc5_)
                           {
                              §§push(param1.x);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_)
                                 {
                                 }
                                 §§goto(addr103);
                              }
                              addr99:
                              addr103:
                              var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.x);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§pop() + this.m_xf.position.x);
                                 }
                                 §§pop().x = §§pop();
                                 do
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.y);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(!_loc4_);
                                 
                              }
                              return _loc3_;
                              §§push(§§pop() + §§pop() * param1.y);
                           }
                           §§goto(addr103);
                        }
                        §§push(_loc2_.col2.y);
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr103);
         }
         §§goto(addr62);
      }
      
      public function §<!v§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0b§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§+D§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%!C§(this.m_xf.R,param1);
      }
      
      public function §0"0§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§,b§.x);
         if(_loc3_)
         {
            §§push(this.m_angularVelocity);
            if(_loc3_ || _loc3_)
            {
               §§push(param1.y);
               if(!_loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_ || this)
                     {
                        §§goto(addr65);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr107);
               }
               addr65:
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && param1))
               {
                  addr74:
                  §§push(§§pop() - §§pop());
                  §§push(this.§,b§.y);
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr114);
            }
            addr114:
            §§push(this.m_angularVelocity);
            if(_loc3_ || this)
            {
               addr88:
               §§push(param1.x);
               if(!(_loc2_ && _loc3_))
               {
                  addr107:
                  §§push(§§pop() - this.m_sweep.c.x);
               }
               §§push(§§pop() * §§pop());
            }
            return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
         }
         §§goto(addr74);
      }
      
      public function §7!l§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc5_)
         {
            §§push(param1.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(_loc2_.col2.x);
                  if(!(_loc4_ && this))
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
                           if(_loc5_ || this)
                           {
                              §§push(param1.x);
                              if(_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                    addr75:
                                    §§push(_loc2_.col2.y);
                                    if(!_loc4_)
                                    {
                                       addr80:
                                       §§push(§§pop() * param1.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
                                    do
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc3_.y);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(§§pop() + this.m_xf.position.y);
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    while(!(_loc5_ || _loc3_));
                                    
                                 }
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(this.§,b§.x);
                                 if(_loc5_)
                                 {
                                    §§push(this.m_angularVelocity);
                                    if(_loc5_)
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc5_)
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr142:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(this.§,b§.y);
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.m_angularVelocity);
                                                      if(_loc5_)
                                                      {
                                                         §§push(_loc3_.x);
                                                         if(_loc5_)
                                                         {
                                                            addr161:
                                                            §§push(§§pop() + §§pop() * (§§pop() - this.m_sweep.c.x));
                                                         }
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                }
                                                return new §§pop().b2Vec2(§§pop(),§§pop());
                                             }
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                 }
                                 §§goto(addr142);
                              }
                           }
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr75);
               }
            }
         }
         §§goto(addr58);
      }
      
      public function § h§() : Number
      {
         return this.§%!o§;
      }
      
      public function §9p§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§%!o§ = param1;
         }
      }
      
      public function §<!Z§() : Number
      {
         return this.§7!_§;
      }
      
      public function §6!+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§7!_§ = param1;
         }
      }
      
      public function §7"$§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§="1§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr118:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        this.§="1§ = param1;
                        loop3:
                        while(!(_loc4_ && _loc3_))
                        {
                           while(true)
                           {
                              this.§3!L§();
                              addr95:
                              while(!(_loc4_ && this))
                              {
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                     }
                     addr103:
                  }
                  return;
               }
            }
         }
         §§goto(addr114);
      }
      
      public function §+!O§() : uint
      {
         return this.§="1§;
      }
      
      public function § !E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§`"8§ &= ~b2internal::'!Z;
               if(_loc2_)
               {
                  addr45:
               }
               else
               {
                  addr66:
               }
               return;
            }
            if(!_loc3_)
            {
               this.§`"8§ |= b2internal::'!Z;
            }
            §§goto(addr66);
         }
         §§goto(addr45);
      }
      
      public function §3#§() : Boolean
      {
         return (this.§`"8§ & b2internal::'!Z) == b2internal::'!Z;
      }
      
      public function §1B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!param1)
            {
               this.§`"8§ &= ~b2internal::8"8;
               loop0:
               while(_loc3_ || _loc3_)
               {
                  if(_loc2_)
                  {
                     this.§`"8§ |= b2internal::8"8;
                  }
                  else
                  {
                     addr83:
                  }
                  while(true)
                  {
                     this.SetAwake(true);
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
               }
               §§goto(addr25);
            }
            §§goto(addr83);
         }
         §§goto(addr70);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!param1)
            {
               this.§`"8§ &= ~b2internal::<"7;
               loop0:
               while(true)
               {
                  this.§[^§ = 0;
                  loop1:
                  while(!_loc2_)
                  {
                     this.§,b§.§@!s§();
                     loop2:
                     while(true)
                     {
                        this.m_angularVelocity = 0;
                        loop3:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              this.§`"8§ |= b2internal::<"7;
                           }
                           else
                           {
                              addr133:
                           }
                           this.§2!d§.§@!s§();
                           while(true)
                           {
                              if(!(_loc2_ && param1))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                              addr85:
                              this.§?6§ = 0;
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr120);
                     }
                  }
                  this.§[^§ = 0;
                  addr120:
                  return;
               }
            }
            §§goto(addr133);
         }
         §§goto(addr54);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§`"8§ & b2internal::<"7) == b2internal::<"7;
      }
      
      public function §@M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§`"8§ &= ~b2internal::!!,;
               while(true)
               {
                  if(_loc3_)
                  {
                     loop1:
                     while(true)
                     {
                        this.§3!L§();
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(_loc3_ || this)
                        {
                           return;
                        }
                        addr78:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  §§goto(addr78);
               }
            }
            while(true)
            {
               this.§`"8§ |= b2internal::!!,;
            }
         }
         §§goto(addr78);
      }
      
      public function §4!p§() : Boolean
      {
         return (this.§`"8§ & b2internal::!!,) == b2internal::!!,;
      }
      
      public function §2!%§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§#!M§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc7_ && param1))
            {
               if(§§pop() == this.§9!9§())
               {
                  if(!(_loc7_ && param1))
                  {
                     return;
                  }
               }
               §§push(param1);
            }
            if(§§pop())
            {
               if(_loc6_ || param1)
               {
                  this.§`"8§ |= b2internal::@"";
                  addr71:
                  _loc2_ = this.m_world.§&!L§.§9n§;
                  _loc3_ = this.§&f§;
                  while(_loc3_)
                  {
                     _loc3_.§>!#§(_loc2_,this.m_xf);
                     if(!(_loc6_ || this))
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§>""§;
                  }
               }
               §§goto(addr71);
            }
            else
            {
               this.§`"8§ &= ~b2internal::@"";
               _loc2_ = this.m_world.§&!L§.§9n§;
               _loc3_ = this.§&f§;
               if(_loc6_)
               {
                  loop0:
                  while(_loc3_)
                  {
                     _loc3_.§`4§(_loc2_);
                     if(_loc7_ && _loc3_)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc3_ = _loc3_.§>""§;
                        continue loop0;
                     }
                  }
                  _loc4_ = this.§]8§;
                  if(_loc6_ || param1)
                  {
                     while(_loc4_)
                     {
                        _loc5_ = _loc4_;
                        _loc4_ = _loc4_.§9!V§;
                        if(!(_loc7_ && _loc3_))
                        {
                           this.m_world.§&!L§.§;&§(_loc5_.§3w§);
                        }
                     }
                     if(_loc7_)
                     {
                     }
                     §§goto(addr199);
                  }
                  this.§]8§ = null;
                  §§goto(addr199);
               }
               §§goto(addr143);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function §9!9§() : Boolean
      {
         return (this.§`"8§ & b2internal::@"") == b2internal::@"";
      }
      
      public function §>!m§() : Boolean
      {
         return (this.§`"8§ & b2internal::8"8) == b2internal::8"8;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§&f§;
      }
      
      public function §>!`§() : b2JointEdge
      {
         return this.§-y§;
      }
      
      public function §#1§() : b2ControllerEdge
      {
         return this.§!n§;
      }
      
      public function §4!T§() : b2ContactEdge
      {
         return this.§]8§;
      }
      
      public function §'!q§() : b2Body
      {
         return this.§>""§;
      }
      
      public function GetUserData() : *
      {
         return this.§6g§;
      }
      
      public function §?"5§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6g§ = param1;
         }
      }
      
      public function §>[§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §1"4§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §8?§;
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc1_.R);
            if(_loc6_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr37:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc1_.position);
               if(_loc6_ || this)
               {
                  §§push(this.m_sweep);
                  if(!_loc7_)
                  {
                     §§push(§§pop().c0);
                     if(!(_loc7_ && this))
                     {
                        §§push(§§pop().x);
                        if(_loc6_)
                        {
                           §§push(_loc2_.col1);
                           if(!_loc7_)
                           {
                              §§push(§§pop().x);
                              if(!_loc7_)
                              {
                                 §§push(_loc3_.x);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc7_)
                                          {
                                             addr113:
                                             §§push(_loc3_.y);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc6_ || this)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            addr139:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               addr149:
                                                               §§push(_loc2_.col1.y);
                                                               if(_loc6_ || _loc1_)
                                                               {
                                                                  §§push(_loc3_.x);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr166:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           addr177:
                                                                           §§push(§§pop() - (§§pop() + §§pop() * _loc3_.y));
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                      §§pop().y = §§pop();
                                                      §§goto(addr180);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr166);
                           }
                        }
                        §§goto(addr149);
                     }
                  }
               }
               §§goto(addr139);
            }
            addr180:
            var _loc5_:§#!M§ = this.m_world.§&!L§.§9n§;
            _loc4_ = this.§&f§;
            while(_loc4_)
            {
               _loc4_.§";§(_loc5_,_loc1_,this.m_xf);
               if(_loc7_ && _loc3_)
               {
                  break;
               }
               _loc4_ = _loc4_.§>""§;
            }
            return;
         }
         §§goto(addr37);
      }
      
      b2internal function §#!k§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.m_xf);
            if(!_loc3_)
            {
               §§push(§§pop().R);
               if(!(_loc3_ && _loc3_))
               {
                  §§pop().Set(this.m_sweep.a);
                  addr42:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(!(_loc3_ && _loc1_))
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr194:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr196:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr197:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr198:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr200:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr201:
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             addr223:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr149:
                                                §§push(_loc1_.col2);
                                                if(_loc3_ && _loc1_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc4_ || this)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(_loc2_.y);
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            addr187:
                                                            §§pop().y = §§pop() - (§§pop() + §§pop() * §§pop());
                                                            addr185:
                                                            if(!_loc3_)
                                                            {
                                                               return;
                                                               addr190:
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.y);
                                                         }
                                                         addr224:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr228:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr229:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr185);
                                             }
                                             addr123:
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             §§push(_loc2_.x);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc4_ || _loc1_)
                                                {
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§goto(addr149);
                                                }
                                             }
                                             §§goto(addr185);
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr190);
            }
         }
         §§goto(addr42);
      }
      
      b2internal function § each§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§="1§);
            if(!_loc4_)
            {
               §§push(b2_dynamicBody);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr50:
                              §§pop();
                              if(_loc3_)
                              {
                                 addr56:
                                 addr55:
                                 §§push(param1.§="1§ == b2_dynamicBody);
                                 if(_loc4_ && _loc3_)
                                 {
                                 }
                                 §§goto(addr86);
                              }
                              addr87:
                              var _loc2_:b2JointEdge = this.§-y§;
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc2_.§!!m§ == param1)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(_loc2_.§?!'§.§1!-§);
                                          if(_loc3_ || param1)
                                          {
                                             if(§§pop() != false)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             addr141:
                                             return true;
                                             addr140:
                                          }
                                          §§goto(addr121);
                                       }
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr140);
                              }
                              §§push(false);
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr121:
                                 return §§pop();
                              }
                              §§goto(addr141);
                           }
                           §§push(!§§pop());
                           if(_loc3_ || _loc2_)
                           {
                           }
                           §§goto(addr86);
                        }
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§push(false);
                           }
                           else
                           {
                              §§goto(addr87);
                           }
                        }
                        §§goto(addr87);
                     }
                     addr86:
                     return §§pop();
                  }
                  §§goto(addr50);
               }
               §§goto(addr56);
            }
            §§goto(addr55);
         }
         §§goto(addr50);
      }
      
      b2internal function §-9§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.m_sweep);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§pop().§-9§(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        loop4:
                        while(true)
                        {
                           §§push(this.m_sweep);
                           if(!(_loc3_ || _loc2_))
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              §§push(this.m_sweep.a0);
                              if(_loc3_ || _loc2_)
                              {
                                 §§pop().a = §§pop();
                                 while(_loc3_ || _loc3_)
                                 {
                                    this.§#!k§();
                                    if(!_loc2_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
   }
}
