package § o§
{
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §#-§.b2ControllerEdge;
   import §-r§.§@C§;
   import §30§.b2Contact;
   import §30§.b2ContactEdge;
   import §6!H§.b2Mat22;
   import §6!H§.b2Math;
   import §6!H§.b2Sweep;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   import §;!#§.b2JointEdge;
   import §]!S§.b2EdgeShape;
   import §]!S§.b2MassData;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var § r§:b2Transform;
      
      b2internal static var §[!6§:uint = 1;
      
      b2internal static var §8!!§:uint = 2;
      
      b2internal static var §"!Z§:uint = 4;
      
      b2internal static var §;!Z§:uint = 8;
      
      b2internal static var §for §:uint = 16;
      
      b2internal static var §1!R§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2Body))
         {
            § r§ = new b2Transform();
            loop0:
            while(true)
            {
               §[!6§ = 1;
               while(true)
               {
                  §8!!§ = 2;
                  loop2:
                  while(true)
                  {
                     §"!Z§ = 4;
                     while(true)
                     {
                        §;!Z§ = 8;
                        while(!_loc1_)
                        {
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           §for § = 16;
                           addr95:
                           if(_loc2_ || _loc2_)
                           {
                              b2_staticBody = 0;
                              while(!(_loc1_ && _loc2_))
                              {
                                 b2_kinematicBody = 1;
                                 continue loop2;
                                 if(_loc2_ || b2Body)
                                 {
                                    return;
                                 }
                              }
                              loop6:
                              while(true)
                              {
                                 if(_loc2_ || b2Body)
                                 {
                                    §§goto(addr95);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §1!R§ = 32;
                                       continue loop6;
                                    }
                                    addr107:
                                 }
                              }
                              addr76:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      b2internal var §0b§:uint;
      
      b2internal var §#!&§:int;
      
      b2internal var §-_§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §2!@§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §']§:b2Vec2;
      
      b2internal var §'!$§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §`D§:b2Body;
      
      b2internal var §-![§:b2Body;
      
      b2internal var §>0§:b2Fixture;
      
      b2internal var § !2§:int;
      
      b2internal var §3j§:b2ControllerEdge;
      
      b2internal var §7!"§:int;
      
      b2internal var §-!&§:b2JointEdge;
      
      b2internal var §4!]§:b2ContactEdge;
      
      b2internal var §>§:Number;
      
      b2internal var §+5§:Number;
      
      b2internal var §,!<§:Number;
      
      b2internal var §%L§:Number;
      
      b2internal var §8@§:Number;
      
      b2internal var §;K§:Number;
      
      b2internal var §^,§:Number;
      
      b2internal var §3!E§:Number;
      
      private var §&!i§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.m_xf = new b2Transform();
            loop0:
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§2!@§ = new b2Vec2();
                  if(!(_loc6_ && _loc3_))
                  {
                     this.§']§ = new b2Vec2();
                     loop2:
                     while(true)
                     {
                        super();
                        loop3:
                        while(true)
                        {
                           this.§0b§ = 0;
                           while(true)
                           {
                              §§push(param1.§7N§);
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1.§'r§);
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(_loc6_ && this)
                                                {
                                                   while(_loc7_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop3;
                                                   addr209:
                                                }
                                                this.§0b§ |= b2internal::for ;
                                                while(true)
                                                {
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop8;
                                                addr87:
                                                if(!(_loc6_ && param2))
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             addr191:
                                             addr226:
                                          }
                                          while(true)
                                          {
                                             §§push(param1.§,!E§);
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr209);
                              }
                              while(_loc7_ || _loc3_)
                              {
                                 this.§0b§ |= b2internal::1!R;
                                 §§goto(addr135);
                                 §§goto(addr106);
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     addr278:
                     §§push(this.m_xf);
                  }
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr186);
      }
      
      private function §=x§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.§=!4§().y,param2.§=!4§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§[!Z§(_loc5_,param2.§=!4§());
         _loc6_ = b2Math.§=_§(_loc6_,param2.§@!Q§());
         _loc6_ = b2Math.§[!Z§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§'w§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§'w§(param1.§=!4§(),param2.§=!4§())).Normalize();
         var _loc8_:* = b2Math.§%!a§(param1.§=!4§(),param2.§@!Q§()) > 0;
         if(!(_loc9_ && this))
         {
            param1.§[!V§(param2,_loc6_,_loc7_,_loc8_);
         }
         do
         {
            param2.§'!h§(param1,_loc6_,_loc7_,_loc8_);
         }
         while(!_loc10_);
         
         return _loc4_;
      }
      
      public function §0!h§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§@C§ = null;
         if(_loc7_ || this)
         {
            if(this.m_world.§5Y§() == true)
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
            _loc2_.§#!M§(this,this.m_xf,param1);
            if(!_loc6_)
            {
               if(this.§0b§ & b2internal::1!R)
               {
                  if(_loc7_ || _loc3_)
                  {
                     addr62:
                     §§push(this.m_world);
                     if(_loc7_ || param1)
                     {
                        _loc3_ = §§pop().§-!-§.§<x§;
                        if(_loc7_ || this)
                        {
                           _loc2_.§1<§(_loc3_,this.m_xf);
                           addr97:
                           _loc2_.§-![§ = this.§>0§;
                           if(_loc7_)
                           {
                              this.§>0§ = _loc2_;
                              if(_loc7_ || param1)
                              {
                                 addr113:
                                 var _loc4_:*;
                                 §§push((_loc4_ = this).§ !2§);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!_loc6_)
                                 {
                                    _loc4_.§ !2§ = _loc5_;
                                 }
                                 if(_loc7_ || param1)
                                 {
                                    _loc2_.m_body = this;
                                 }
                                 do
                                 {
                                    if(_loc2_.§!n§ > 0)
                                    {
                                       while(true)
                                       {
                                          this.§2!<§();
                                          addr182:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr180:
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       §§push(this.m_world);
                                       addr144:
                                       while(true)
                                       {
                                          §§push(this.m_world.§0b§);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() | b2World.§[=§);
                                          }
                                          §§pop().§0b§ = §§pop();
                                          if(!(_loc7_ || this))
                                          {
                                             continue loop2;
                                          }
                                          if(_loc7_)
                                          {
                                             break loop2;
                                          }
                                          §§goto(addr180);
                                       }
                                    }
                                 }
                                 while(_loc6_);
                                 
                              }
                              return _loc2_;
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr113);
               }
               §§goto(addr97);
            }
            §§goto(addr182);
         }
         §§goto(addr62);
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(!_loc4_)
         {
            _loc3_.shape = param1;
            do
            {
               _loc3_.density = param2;
            }
            while(!_loc5_);
            
         }
         return this.§0!h§(_loc3_);
      }
      
      public function §[m§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§@C§ = null;
         if(!(_loc13_ && _loc2_))
         {
            if(this.m_world.§5Y§() == true)
            {
               if(_loc12_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§>0§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(!(_loc13_ && this))
               {
                  if(!_loc3_)
                  {
                     this.§>0§ = param1.§-![§;
                     loop1:
                     while(true)
                     {
                        if(_loc13_)
                        {
                           while(true)
                           {
                              _loc3_.§-![§ = param1.§-![§;
                              if(!_loc13_)
                              {
                                 addr72:
                                 while(true)
                                 {
                                 }
                                 addr72:
                              }
                              break loop0;
                           }
                           addr96:
                        }
                        while(true)
                        {
                           _loc4_ = true;
                           if(!_loc12_)
                           {
                              break loop0;
                           }
                           continue loop1;
                           §§goto(addr72);
                        }
                     }
                  }
                  §§goto(addr96);
               }
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§-![§;
         }
         var _loc5_:b2ContactEdge = this.§4!]§;
         if(!_loc13_)
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§4§;
               _loc5_ = _loc5_.§23§;
               _loc7_ = _loc6_.§`u§();
               _loc8_ = _loc6_.§7t§();
               if(!(_loc12_ || this))
               {
                  continue;
               }
               §§push(param1 == _loc7_);
               if(_loc12_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc13_)
                     {
                        §§pop();
                        if(_loc12_)
                        {
                           addr175:
                           if(param1 != _loc8_)
                           {
                              continue;
                           }
                           if(!(_loc12_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        this.m_world.§-!-§.§[!$§(_loc6_);
                        continue;
                     }
                  }
               }
               §§goto(addr175);
            }
            if(_loc12_ || _loc2_)
            {
               addr197:
               if(this.§0b§ & b2internal::1!R)
               {
                  if(_loc12_)
                  {
                     _loc9_ = this.m_world.§-!-§.§<x§;
                     if(_loc12_)
                     {
                        param1.§%!4§(_loc9_);
                     }
                  }
                  addr229:
                  param1.§-![§ = null;
                  if(_loc12_)
                  {
                     var _loc10_:*;
                     §§push((_loc10_ = this).§ !2§);
                     if(!(_loc13_ && _loc2_))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc11_:* = §§pop();
                     if(!(_loc13_ && param1))
                     {
                        _loc10_.§ !2§ = _loc11_;
                     }
                     if(_loc12_)
                     {
                        addr271:
                        this.§2!<§();
                     }
                     return;
                  }
                  §§goto(addr271);
               }
               param1.§[!$§();
               if(!(_loc13_ && param1))
               {
                  param1.m_body = null;
                  if(!_loc13_)
                  {
                     §§goto(addr229);
                  }
                  §§goto(addr271);
               }
            }
            §§goto(addr229);
         }
         §§goto(addr197);
      }
      
      public function §2Z§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2Fixture = null;
         if(_loc8_)
         {
            if(this.m_world.§5Y§() == true)
            {
               if(_loc8_)
               {
                  §§goto(addr59);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr60:
               }
            }
            while(true)
            {
               §§push(this.m_xf);
               if(!(_loc9_ && _loc3_))
               {
                  §§push(§§pop().R);
                  if(!_loc9_)
                  {
                     §§pop().Set(param2);
                     while(true)
                     {
                        if(_loc8_)
                        {
                           continue;
                        }
                        §§goto(addr60);
                     }
                     addr63:
                     §§push(§§pop().R);
                  }
                  var _loc4_:b2Mat22 = §§pop();
                  var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                  if(!_loc9_)
                  {
                     §§push(this.m_sweep);
                     if(!_loc9_)
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
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    while(true)
                                    {
                                       §§push(_loc4_.col2);
                                       addr306:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr307:
                                          while(true)
                                          {
                                             §§push(_loc5_.y);
                                             addr309:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                       }
                                    }
                                    addr304:
                                 }
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
                                          §§push(this.m_sweep);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§§pop().c);
                                             loop14:
                                             while(true)
                                             {
                                                §§push(_loc4_.col1);
                                                if(_loc9_ && this)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop().y);
                                                if(!_loc9_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§push(_loc5_.x);
                                                      loop15:
                                                      while(_loc8_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.col2);
                                                            if(!(_loc9_ && this))
                                                            {
                                                               §§push(§§pop().y);
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.y);
                                                                  if(_loc9_)
                                                                  {
                                                                     break;
                                                                     addr281:
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  while(_loc8_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        addr290:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.m_sweep);
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop10;
                                                                  addr165:
                                                                  if(_loc9_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  addr175:
                                                                  §§pop().y = §§pop() + §§pop();
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     §§push(this.m_sweep);
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           §§pop().c0.SetV(this.m_sweep.c);
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.m_sweep);
                                                                                       addr105:
                                                                                       while(_loc8_)
                                                                                       {
                                                                                          addr107:
                                                                                          §§push(§§pop().c);
                                                                                          if(!(_loc8_ || _loc3_))
                                                                                          {
                                                                                             while(!_loc9_)
                                                                                             {
                                                                                                §§push(this.m_sweep);
                                                                                                §§goto(addr107);
                                                                                             }
                                                                                             continue loop3;
                                                                                             addr205:
                                                                                          }
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          §§push(this.m_sweep);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(_loc8_ || param2)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      if(!(_loc8_ || param2))
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      addr143:
                                                                                                      §§push(this.m_xf);
                                                                                                      if(_loc8_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop().position);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            addr228:
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc8_ || param1)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr165);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr281);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc9_ && param1))
                                                                                                               {
                                                                                                                  if(_loc8_ || this)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                     addr315:
                                                                                                                     §§pop().a0 = this.m_sweep.a = param2;
                                                                                                                     addr324:
                                                                                                                     var _loc6_:§@C§ = this.m_world.§-!-§.§<x§;
                                                                                                                     _loc3_ = this.§>0§;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              this.m_world.§-!-§.§!c§();
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        _loc3_.§,N§(_loc6_,this.m_xf,this.m_xf);
                                                                                                                        if(_loc9_ && this)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        _loc3_ = _loc3_.§-![§;
                                                                                                                     }
                                                                                                                     return;
                                                                                                                     addr242:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr290);
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                            addr228:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                            }
                                                                                                            addr225:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr227:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               §§goto(addr228);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr143);
                                                                                                         }
                                                                                                         addr224:
                                                                                                      }
                                                                                                      §§goto(addr225);
                                                                                                   }
                                                                                                   §§goto(addr227);
                                                                                                }
                                                                                                §§goto(addr175);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc8_ || param2)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr224);
                                                                                                         §§push(this.m_xf);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr289);
                                                                                                      }
                                                                                                      §§goto(addr290);
                                                                                                   }
                                                                                                }
                                                                                                continue loop5;
                                                                                                addr210:
                                                                                             }
                                                                                             §§goto(addr227);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr209:
                                                                                          }
                                                                                          §§goto(addr210);
                                                                                          §§goto(addr209);
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr315);
                                                                                 §§push(this.m_sweep);
                                                                              }
                                                                              §§goto(addr228);
                                                                           }
                                                                           §§goto(addr324);
                                                                        }
                                                                        §§goto(addr105);
                                                                     }
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr306);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr304);
                                                   }
                                                }
                                                §§goto(addr266);
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr315);
                  }
                  §§goto(addr242);
               }
               §§goto(addr63);
            }
         }
         addr59:
      }
      
      public function §`d§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2Z§(param1.position,param1.GetAngle());
         }
      }
      
      public function §2!i§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §;!1§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2Z§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §@o§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2Z§(this.GetPosition(),param1);
         }
      }
      
      public function §with§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §<O§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§#!&§ != b2_staticBody)
            {
               do
               {
                  this.§2!@§.SetV(param1);
               }
               while(_loc3_ && _loc2_);
               
               if(_loc2_ || this)
               {
                  return;
                  addr67:
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§2!@§;
      }
      
      public function §,!d§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§#!&§ == b2_staticBody)
            {
               if(_loc3_ || this)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr39);
               }
            }
            addr39:
            §§goto(addr50);
         }
         addr50:
         while(true)
         {
            this.m_angularVelocity = param1;
            if(!(_loc2_ && this))
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §[H§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §0!`§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc2_ || _loc3_)
         {
            _loc1_.type = this.§7!_§();
            while(true)
            {
               _loc1_.§,!E§ = (this.§0b§ & b2internal::"!Z) == b2internal::"!Z;
               loop1:
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  addr152:
                  while(true)
                  {
                     _loc1_.§60§ = this.§^,§;
                     addr146:
                     while(true)
                     {
                        _loc1_.§3!I§ = this.m_angularVelocity;
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §>!#§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§#!&§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(!(_loc3_ && param2))
                     {
                        this.SetAwake(true);
                        while(_loc4_)
                        {
                        }
                        continue loop0;
                     }
                     addr199:
                     return;
                     addr172:
                  }
                  while(true)
                  {
                     §§push(this.§']§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§']§);
                        addr159:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr160:
                           while(true)
                           {
                              §§push(param1.x);
                              addr162:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr163:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr164:
                                    while(_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr192);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr199);
         }
         §§goto(addr153);
      }
      
      public function §;R§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§#!&§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(_loc2_)
                     {
                        this.SetAwake(true);
                     }
                     loop1:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     continue;
                     addr77:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§'!$§);
                     if(_loc2_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§'!$§ = §§pop();
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr77);
                  }
                  if(!(_loc3_ && this))
                  {
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(this.§#!&§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(_loc4_ || this)
                     {
                        while(true)
                        {
                           this.SetAwake(true);
                        }
                        addr218:
                     }
                     while(true)
                     {
                        addr103:
                        if(_loc4_ || param2)
                        {
                           if(_loc4_ || param2)
                           {
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§2!@§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§2!@§);
                        addr188:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc4_ || param2)
                           {
                              §§push(this.§+5§);
                              while(true)
                              {
                                 §§push(param1.x);
                                 addr200:
                                 addr163:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr201:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                    }
                                 }
                                 if(_loc3_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push(param1.y);
                                 if(_loc4_ || param2)
                                 {
                                    addr181:
                                    §§pop().y = §§pop() + §§pop() * §§pop();
                                    addr180:
                                    do
                                    {
                                       §§push(this);
                                       §§push(this.m_angularVelocity);
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(this.§%L§);
                                       if(_loc4_)
                                       {
                                          §§push(param2.x);
                                          if(!_loc3_)
                                          {
                                             §§push(this.m_sweep.c.x);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§push(param1.y);
                                                   if(_loc4_ || param1)
                                                   {
                                                      addr66:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         addr74:
                                                         §§push(param2.y);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(this.m_sweep.c.y);
                                                            if(!_loc3_)
                                                            {
                                                               addr96:
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  addr94:
                                                                  §§push(§§pop() * param1.x);
                                                               }
                                                               §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                               continue;
                                                            }
                                                            §§goto(addr94);
                                                         }
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   §§goto(addr94);
                                                }
                                                §§goto(addr74);
                                             }
                                             §§goto(addr66);
                                          }
                                       }
                                       §§goto(addr96);
                                    }
                                    while(§§pop().m_angularVelocity = §§pop(), !_loc4_);
                                    
                                    if(!_loc3_)
                                    {
                                       §§goto(addr103);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             return;
                                          }
                                          addr236:
                                          continue loop3;
                                       }
                                       addr203:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr200);
                                 }
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    §§goto(addr203);
                                 }
                                 addr202:
                              }
                           }
                           §§goto(addr202);
                        }
                     }
                  }
               }
            }
            §§goto(addr236);
         }
         §§goto(addr218);
      }
      
      public function §%f§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.§[H§());
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§with§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§<s§(this.§0!`§());
         var _loc8_:b2Fixture = _loc5_.§>0§;
         while(true)
         {
            if(!_loc8_)
            {
               if(!_loc16_)
               {
                  _loc5_.§2!<§();
                  if(_loc17_ || param1)
                  {
                     break;
                  }
                  addr196:
                  var _loc9_:b2Vec2 = _loc5_.§with§();
                  var _loc10_:b2Vec2 = _loc6_.§with§();
                  var _loc11_:b2Vec2 = b2Math.§'w§(_loc2_,b2Math.§;!G§(_loc3_,b2Math.§=_§(_loc9_,_loc4_)));
                  var _loc12_:b2Vec2 = b2Math.§'w§(_loc2_,b2Math.§;!G§(_loc3_,b2Math.§=_§(_loc10_,_loc4_)));
                  if(_loc17_)
                  {
                     _loc5_.SetLinearVelocity(_loc11_);
                     loop1:
                     while(true)
                     {
                        _loc6_.SetLinearVelocity(_loc12_);
                        while(true)
                        {
                           _loc5_.§,!d§(_loc3_);
                           addr276:
                           while(_loc17_)
                           {
                           }
                           continue loop1;
                           addr246:
                           if(_loc17_ || _loc2_)
                           {
                              return _loc6_;
                              addr253:
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     _loc6_.§,!d§(_loc3_);
                     while(!_loc16_)
                     {
                        _loc5_.§2#§();
                        while(!(_loc16_ && param1))
                        {
                           _loc6_.§2#§();
                           if(_loc16_ && param1)
                           {
                              continue;
                           }
                           §§goto(addr246);
                        }
                     }
                     §§goto(addr276);
                  }
                  §§goto(addr253);
               }
               break;
            }
            if(!param1(_loc8_))
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§-![§;
               continue;
            }
            if(_loc16_)
            {
               break;
            }
            _loc13_ = _loc8_.§-![§;
            if(_loc17_)
            {
               if(_loc7_)
               {
                  if(!(_loc16_ && this))
                  {
                     addr76:
                     _loc7_.§-![§ = _loc13_;
                     if(_loc17_)
                     {
                        addr92:
                        var _loc14_:*;
                        §§push((_loc14_ = _loc5_).§ !2§);
                        if(!(_loc16_ && param1))
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc15_:* = §§pop();
                        if(!_loc16_)
                        {
                           _loc14_.§ !2§ = _loc15_;
                        }
                        if(_loc17_ || this)
                        {
                        }
                        addr130:
                        _loc6_.§>0§ = _loc8_;
                        if(_loc17_)
                        {
                           addr135:
                           §§push((_loc14_ = _loc6_).§ !2§);
                           if(_loc17_)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc15_ = §§pop();
                           if(_loc17_ || param1)
                           {
                              _loc14_.§ !2§ = _loc15_;
                           }
                           if(!_loc16_)
                           {
                              _loc8_.m_body = _loc6_;
                              addr170:
                              _loc8_ = _loc13_;
                              continue;
                           }
                        }
                        §§goto(addr170);
                     }
                     _loc8_.§-![§ = _loc6_.§>0§;
                     if(!(_loc16_ && this))
                     {
                        §§goto(addr130);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr130);
               }
               else
               {
                  _loc5_.§>0§ = _loc13_;
                  if(!(_loc16_ && _loc2_))
                  {
                     §§goto(addr92);
                  }
               }
               §§goto(addr170);
            }
            §§goto(addr76);
         }
         _loc6_.§2!<§();
         §§goto(addr196);
      }
      
      public function §3h§(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§>0§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§-![§;
            if(_loc14_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§ !2§);
               if(!(_loc15_ && _loc3_))
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!_loc15_)
               {
                  _loc12_.§ !2§ = _loc13_;
               }
               if(!(_loc15_ && param1))
               {
                  _loc2_.§-![§ = this.§>0§;
                  if(_loc14_)
                  {
                     this.§>0§ = _loc2_;
                     if(!_loc15_)
                     {
                        addr78:
                        §§push((_loc12_ = this).§ !2§);
                        if(!_loc15_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc13_ = §§pop();
                        if(!_loc15_)
                        {
                           _loc12_.§ !2§ = _loc13_;
                        }
                        if(!(_loc14_ || _loc3_))
                        {
                           continue;
                        }
                     }
                  }
                  §§goto(addr78);
               }
               _loc2_.m_body = _loc4_;
               continue;
            }
            §§goto(addr78);
         }
         if(_loc14_ || _loc2_)
         {
            _loc3_.§ !2§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§with§();
         var _loc6_:b2Vec2 = _loc4_.§with§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.§[H§());
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§[H§());
         if(_loc14_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!(_loc15_ && _loc3_))
         {
            _loc3_.§2!<§();
            do
            {
               this.§2#§();
            }
            while(_loc15_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§>§;
      }
      
      public function §`!+§() : Number
      {
         return this.§,!<§;
      }
      
      public function §6Y§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            param1.§>A§ = this.§>§;
            while(true)
            {
               param1.§[8§ = this.§,!<§;
               while(!(_loc2_ && this))
               {
                  param1.center.SetV(this.m_sweep.localCenter);
                  if(!_loc3_)
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
      
      public function §8!R§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§5Y§());
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§5Y§());
               while(true)
               {
                  §§push(true);
                  addr284:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§goto(addr285);
                     }
                     addr272:
                     while(true)
                     {
                        §§push(this.§#!&§);
                        addr275:
                        while(true)
                        {
                           if(§§pop() != b2_dynamicBody)
                           {
                              §§goto(addr277);
                           }
                           addr260:
                           while(true)
                           {
                              this.§+5§ = 0;
                              continue loop0;
                           }
                        }
                     }
                  }
                  addr54:
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  loop20:
                  while(§§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        if(!(_loc3_ && this))
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(param1.§[8§);
                              if(_loc4_)
                              {
                                 §§push(this.§>§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(param1.center.x);
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(param1.center);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr132:
                                             §§push(§§pop() * §§pop());
                                             if(_loc4_ || _loc2_)
                                             {
                                                addr123:
                                                §§push(param1.center.y);
                                                if(!_loc3_)
                                                {
                                                   addr126:
                                                   §§push(§§pop() * param1.center.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().§,!<§ = §§pop() - §§pop() * §§pop();
                                             loop21:
                                             while(!_loc3_)
                                             {
                                                this.§%L§ = 1 / this.§,!<§;
                                                if(_loc3_)
                                                {
                                                   continue;
                                                }
                                                if(true)
                                                {
                                                   break loop20;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§0b§ & b2internal::for );
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§pop() == 0);
                                                      if(!_loc3_)
                                                      {
                                                         addr47:
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§goto(addr54);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc3_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  continue loop20;
                                                               }
                                                               §§goto(addr47);
                                                            }
                                                            §§goto(addr284);
                                                            addr156:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop21;
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr275);
                                                addr31:
                                             }
                                             loop18:
                                             while(!(_loc3_ && _loc3_))
                                             {
                                                if(_loc3_)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         this.§>§ = 1;
                                                         while(_loc4_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§+5§ = 1 / this.§>§;
                                                               break loop18;
                                                            }
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      addr218:
                                                      while(true)
                                                      {
                                                         §§push(this.§>§);
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr192:
                                                            addr187:
                                                            while(true)
                                                            {
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr176);
                                                            }
                                                            §§push(param1.§[8§);
                                                            if(!(_loc4_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(0);
                                                            if(!(_loc4_ || _loc3_))
                                                            {
                                                               §§goto(addr192);
                                                            }
                                                            §§goto(addr156);
                                                            §§push(§§pop() > §§pop());
                                                         }
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr31);
                                                §§goto(addr272);
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr187);
                                                   }
                                                   else
                                                   {
                                                      while(!(_loc3_ && param1))
                                                      {
                                                         this.§>§ = param1.§>A§;
                                                         §§goto(addr218);
                                                      }
                                                      for(; _loc4_ || param1; §§goto(addr223))
                                                      {
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            addr277:
                                                         }
                                                         this.§%L§ = 0;
                                                         continue;
                                                         return;
                                                      }
                                                      addr223:
                                                      addr235:
                                                   }
                                                   §§goto(addr260);
                                                }
                                                break;
                                                §§goto(addr166);
                                             }
                                             addr166:
                                             §§goto(addr205);
                                             addr134:
                                          }
                                          §§goto(addr126);
                                       }
                                    }
                                    §§goto(addr123);
                                 }
                              }
                              §§goto(addr132);
                           }
                           addr77:
                        }
                        addr285:
                        return;
                     }
                     §§goto(addr134);
                  }
                  var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                  if(_loc4_ || _loc2_)
                  {
                     addr488:
                     this.m_sweep.localCenter.SetV(param1.center);
                  }
                  this.m_sweep.c0.SetV(b2Math.§=!!§(this.m_xf,this.m_sweep.localCenter));
                  addr492:
                  addr485:
                  §§push(this.m_sweep);
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        addr458:
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              addr439:
                              addr422:
                              addr420:
                              §§push(this.§2!@§);
                              §§push(this.§2!@§.x);
                              if(!_loc3_)
                              {
                                 addr427:
                                 §§push(this.m_angularVelocity);
                                 §§push(this.m_sweep.c.y);
                                 if(_loc4_)
                                 {
                                    addr435:
                                    §§push(§§pop() - _loc2_.y);
                                 }
                                 §§push(§§pop() + §§pop() * -§§pop());
                              }
                              §§pop().x = §§pop();
                              addr440:
                              §§push(this.§2!@§);
                              if(!_loc3_)
                              {
                                 §§push(this.§2!@§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop().y);
                                    if(!_loc3_)
                                    {
                                       §§push(this.m_angularVelocity);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(this.m_sweep);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop().c);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            §§push(_loc2_.x);
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  addr390:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     addr399:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           if(!(_loc4_ || _loc3_))
                                                                           {
                                                                              §§goto(addr458);
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr440);
                                                                     }
                                                                     §§goto(addr439);
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                               §§goto(addr390);
                                                            }
                                                            §§goto(addr435);
                                                         }
                                                      }
                                                      §§goto(addr427);
                                                   }
                                                   §§goto(addr390);
                                                }
                                             }
                                          }
                                          §§goto(addr427);
                                       }
                                       §§goto(addr390);
                                    }
                                    §§goto(addr399);
                                 }
                                 §§goto(addr422);
                              }
                              §§goto(addr420);
                           }
                           §§goto(addr492);
                        }
                        §§goto(addr485);
                     }
                     §§goto(addr488);
                  }
                  addr466:
                  §§goto(addr466);
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §2!<§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2MassData = null;
         if(!(_loc6_ && _loc3_))
         {
            this.§>§ = 0;
            while(true)
            {
               this.§+5§ = 0;
               loop1:
               while(true)
               {
                  this.§,!<§ = 0;
                  addr123:
                  while(true)
                  {
                     this.§%L§ = 0;
                     addr62:
                     if(!(_loc6_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
               }
               if(!(_loc6_ && this))
               {
                  return;
               }
            }
         }
         §§goto(addr118);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!_loc4_)
         {
            §§push(param1.x);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || param1)
               {
                  addr45:
                  §§push(_loc2_.col2.x);
                  if(_loc5_)
                  {
                     §§push(param1.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && param1))
                        {
                           addr63:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_ && param1)
                           {
                           }
                           §§goto(addr90);
                        }
                        §§push(param1.x);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc4_)
                           {
                              addr90:
                              §§goto(addr99);
                           }
                           addr99:
                           §§goto(addr98);
                        }
                        addr98:
                        §§push(_loc2_.col2.y);
                        if(!_loc4_)
                        {
                           addr95:
                           §§push(§§pop() * param1.y);
                        }
                        var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.x);
                           if(!(_loc4_ && _loc3_))
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
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr90);
               }
            }
            §§goto(addr63);
         }
         §§goto(addr45);
      }
      
      public function §?!4§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&W§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&!h§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§=!X§(this.m_xf.R,param1);
      }
      
      public function §?!K§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§2!@§.x);
         if(!_loc2_)
         {
            §§push(this.m_angularVelocity);
            if(!(_loc2_ && _loc2_))
            {
               §§push(param1.y);
               if(_loc3_ || _loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc2_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc2_ && _loc2_))
                        {
                           addr74:
                           §§push(§§pop() - §§pop());
                           §§push(this.§2!@§.y);
                           if(!(_loc2_ && this))
                           {
                              addr84:
                              §§push(this.m_angularVelocity);
                              if(_loc3_)
                              {
                                 addr113:
                                 §§push(param1.x);
                                 if(!(_loc2_ && param1))
                                 {
                                    addr107:
                                    §§push(§§pop() - this.m_sweep.c.x);
                                 }
                                 §§push(§§pop() + §§pop() * §§pop());
                              }
                              §§goto(addr113);
                           }
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr107);
               }
               §§goto(addr113);
            }
            §§goto(addr84);
         }
         §§goto(addr74);
      }
      
      public function §6h§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc5_ || this)
         {
            §§push(param1.x);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc2_.col2.x);
                  if(!_loc4_)
                  {
                     §§push(param1.y);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && param1))
                        {
                           addr68:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!_loc4_)
                           {
                              addr73:
                              §§push(param1.x);
                              if(_loc5_ || _loc3_)
                              {
                                 addr82:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr104:
                                    addr90:
                                    §§push(_loc2_.col2.y);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr100:
                                       §§push(§§pop() * param1.y);
                                    }
                                    var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                    if(_loc5_ || this)
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
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() + this.m_xf.position.y);
                                          }
                                          §§pop().y = §§pop();
                                       }
                                       while(!_loc5_);
                                       
                                    }
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(this.§2!@§.x);
                                    if(_loc5_ || this)
                                    {
                                       §§push(this.m_angularVelocity);
                                       if(!(_loc4_ && param1))
                                       {
                                          §§push(_loc3_.y);
                                          if(_loc5_)
                                          {
                                             §§push(this.m_sweep.c.y);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc4_)
                                                   {
                                                      addr172:
                                                      §§push(§§pop() - §§pop());
                                                      §§push(this.§2!@§.y);
                                                      if(_loc5_)
                                                      {
                                                         §§push(this.m_angularVelocity);
                                                         if(!_loc4_)
                                                         {
                                                            addr182:
                                                            §§push(_loc3_.x);
                                                            if(_loc5_)
                                                            {
                                                               addr191:
                                                               §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr182);
                                       }
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr73);
               }
               §§goto(addr68);
            }
            §§goto(addr104);
         }
         §§goto(addr68);
      }
      
      public function §+u§() : Number
      {
         return this.§;K§;
      }
      
      public function §!v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;K§ = param1;
         }
      }
      
      public function §3[§() : Number
      {
         return this.§^,§;
      }
      
      public function §^G§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§^,§ = param1;
         }
      }
      
      public function §in§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§#!&§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr113:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr114:
                     return;
                  }
                  addr105:
                  while(true)
                  {
                     this.§#!&§ = param1;
                     addr109:
                     while(true)
                     {
                        this.§2!<§();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §7!_§() : uint
      {
         return this.§#!&§;
      }
      
      public function §8d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§0b§ &= ~b2internal::;!Z;
               if(_loc3_ && param1)
               {
                  addr76:
               }
               return;
            }
            if(!(_loc3_ && _loc3_))
            {
               this.§0b§ |= b2internal::;!Z;
            }
         }
         §§goto(addr76);
      }
      
      public function §9L§() : Boolean
      {
         return (this.§0b§ & b2internal::;!Z) == b2internal::;!Z;
      }
      
      public function §&t§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§0b§ &= ~b2internal::"!Z;
               do
               {
                  this.SetAwake(true);
               }
               while(_loc3_);
               
               if(_loc3_ && this)
               {
                  addr83:
               }
               return;
            }
            if(_loc2_ || param1)
            {
               addr77:
               this.§0b§ |= b2internal::"!Z;
            }
            §§goto(addr83);
         }
         §§goto(addr77);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§0b§ &= ~b2internal::8!!;
               loop0:
               for(; !_loc2_; do
               {
                  if(_loc2_ && param1)
                  {
                     continue loop0;
                  }
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               while(this.§'!$§ = 0, !(_loc3_ || _loc2_));
               ,if(_loc2_)
               {
                  §§goto(addr73);
               },if(!(_loc3_ || param1))
               {
                  addr115:
               },return)
               {
                  this.§3!E§ = 0;
                  while(true)
                  {
                     this.§2!@§.§7_§();
                     while(_loc3_ || _loc3_)
                     {
                        this.m_angularVelocity = 0;
                        while(!(_loc2_ && this))
                        {
                           this.§']§.§7_§();
                           continue loop0;
                        }
                     }
                  }
               }
               this.§3!E§ = 0;
               §§goto(addr115);
               addr134:
            }
            this.§0b§ |= b2internal::8!!;
            §§goto(addr134);
         }
         §§goto(addr97);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§0b§ & b2internal::8!!) == b2internal::8!!;
      }
      
      public function §=G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               if(!(_loc3_ && param1))
               {
                  addr76:
                  this.§0b§ |= b2internal::for ;
               }
               while(true)
               {
                  §§goto(addr23);
               }
               addr82:
            }
            else
            {
               this.§0b§ &= ~b2internal::for ;
            }
            while(true)
            {
               if(_loc2_ || param1)
               {
                  §§goto(addr56);
               }
               else
               {
                  §§goto(addr82);
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      public function §]!Z§() : Boolean
      {
         return (this.§0b§ & b2internal::for ) == b2internal::for ;
      }
      
      public function §,u§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§@C§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc7_)
         {
            §§push(param1);
            if(_loc7_ || param1)
            {
               if(§§pop() == this.§5f§())
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     §§goto(addr49);
                  }
               }
               §§push(param1);
            }
            if(§§pop())
            {
               if(_loc7_ || param1)
               {
                  this.§0b§ |= b2internal::1!R;
               }
               _loc2_ = this.m_world.§-!-§.§<x§;
               _loc3_ = this.§>0§;
               while(_loc3_)
               {
                  _loc3_.§1<§(_loc2_,this.m_xf);
                  if(_loc6_)
                  {
                     break;
                  }
                  _loc3_ = _loc3_.§-![§;
               }
            }
            else
            {
               this.§0b§ &= ~b2internal::1!R;
               _loc2_ = this.m_world.§-!-§.§<x§;
               _loc3_ = this.§>0§;
               if(_loc7_)
               {
                  while(_loc3_)
                  {
                     _loc3_.§%!4§(_loc2_);
                     if(!_loc7_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§-![§;
                  }
               }
               _loc4_ = this.§4!]§;
               if(_loc7_ || _loc3_)
               {
                  while(_loc4_)
                  {
                     _loc5_ = _loc4_;
                     _loc4_ = _loc4_.§23§;
                     if(_loc7_)
                     {
                        this.m_world.§-!-§.§[!$§(_loc5_.§4§);
                     }
                  }
                  if(!_loc7_)
                  {
                  }
                  §§goto(addr180);
               }
               this.§4!]§ = null;
            }
            addr180:
            return;
         }
         addr49:
      }
      
      public function §5f§() : Boolean
      {
         return (this.§0b§ & b2internal::1!R) == b2internal::1!R;
      }
      
      public function §[!"§() : Boolean
      {
         return (this.§0b§ & b2internal::"!Z) == b2internal::"!Z;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§>0§;
      }
      
      public function §>N§() : b2JointEdge
      {
         return this.§-!&§;
      }
      
      public function §6!4§() : b2ControllerEdge
      {
         return this.§3j§;
      }
      
      public function §!!R§() : b2ContactEdge
      {
         return this.§4!]§;
      }
      
      public function §;!B§() : b2Body
      {
         return this.§-![§;
      }
      
      public function GetUserData() : *
      {
         return this.§&!i§;
      }
      
      public function §-!8§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!i§ = param1;
         }
      }
      
      public function §5h§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §2#§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = § r§;
         if(_loc6_ || this)
         {
            §§push(_loc1_.R);
            if(_loc6_ || this)
            {
               §§pop().Set(this.m_sweep.a0);
               addr42:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!(_loc7_ && this))
            {
               §§push(_loc1_.position);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(this.m_sweep);
                  if(!_loc7_)
                  {
                     §§push(§§pop().c0);
                     if(!_loc7_)
                     {
                        §§push(§§pop().x);
                        if(_loc6_ || _loc1_)
                        {
                           §§push(_loc2_.col1);
                           if(_loc6_)
                           {
                              §§push(§§pop().x);
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(_loc2_.col2);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             addr128:
                                             §§push(_loc3_.y);
                                             if(_loc6_ || this)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_ || this)
                                                {
                                                   addr145:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§goto(addr156);
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr177);
                        }
                        addr156:
                        §§pop().x = §§pop();
                        if(!(_loc7_ && _loc3_))
                        {
                           addr169:
                           §§push(_loc1_.position);
                           §§push(this.m_sweep.c0.y);
                           if(_loc6_ || this)
                           {
                              addr177:
                              §§push(_loc2_.col1.y);
                              if(_loc6_ || _loc1_)
                              {
                                 addr187:
                                 §§push(_loc3_.x);
                                 if(!(_loc7_ && this))
                                 {
                                    addr196:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc7_)
                                    {
                                       §§goto(addr213);
                                    }
                                    addr213:
                                    §§goto(addr199);
                                 }
                                 §§goto(addr209);
                              }
                              addr199:
                              §§goto(addr214);
                           }
                           addr214:
                           addr201:
                           §§push(_loc2_.col2.y);
                           if(!(_loc7_ && _loc1_))
                           {
                              addr209:
                              §§push(§§pop() * _loc3_.y);
                           }
                           §§pop().y = §§pop() - (§§pop() + §§pop());
                           §§goto(addr215);
                        }
                        addr215:
                        var _loc5_:§@C§ = this.m_world.§-!-§.§<x§;
                        _loc4_ = this.§>0§;
                        while(_loc4_)
                        {
                           _loc4_.§,N§(_loc5_,_loc1_,this.m_xf);
                           if(_loc7_)
                           {
                              break;
                           }
                           _loc4_ = _loc4_.§-![§;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr169);
            }
            §§goto(addr213);
         }
         §§goto(addr42);
      }
      
      b2internal function §&I§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.m_xf);
            if(_loc3_)
            {
               §§push(§§pop().R);
               if(_loc3_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr36:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(!(_loc4_ && _loc1_))
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr193:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr195:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr196:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr197:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr199:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc3_)
                                    {
                                       §§push(_loc2_.x);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr205:
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr218:
                                                addr139:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr220:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr221:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                }
                                                §§push(_loc1_.col2);
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(_loc2_.y);
                                                      if(_loc3_ || this)
                                                      {
                                                         addr175:
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr183:
                                                            §§push(§§pop() - (§§pop() + §§pop()));
                                                            if(_loc3_)
                                                            {
                                                               §§pop().y = §§pop();
                                                               if(!_loc4_)
                                                               {
                                                                  return;
                                                                  addr189:
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr218);
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop0;
                                                         }
                                                         addr223:
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr175);
                                             }
                                          }
                                       }
                                    }
                                    addr222:
                                    while(true)
                                    {
                                       §§goto(addr223);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr189);
            }
         }
         §§goto(addr36);
      }
      
      b2internal function §#!7§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§#!&§);
            if(_loc3_)
            {
               §§push(b2_dynamicBody);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              addr45:
                              §§pop();
                              if(_loc3_)
                              {
                                 addr51:
                                 §§push(param1.§#!&§ == b2_dynamicBody);
                                 if(_loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§goto(addr72);
                                    }
                                    §§goto(addr81);
                                 }
                                 §§goto(addr72);
                              }
                           }
                           §§goto(addr81);
                        }
                        addr72:
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              §§goto(addr81);
                           }
                        }
                        var _loc2_:b2JointEdge = this.§-!&§;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              §§push(true);
                              addr131:
                           }
                           if(_loc2_.§'!4§ == param1)
                           {
                              if(_loc3_)
                              {
                                 §§push(_loc2_.§>!&§.§+4§);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 if(§§pop() == false)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(false);
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                              }
                           }
                           continue;
                           return §§pop();
                        }
                        return §§pop();
                     }
                     addr81:
                     return false;
                  }
                  §§goto(addr45);
               }
            }
         }
         §§goto(addr51);
      }
      
      b2internal function §8!3§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.m_sweep);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§pop().§8!3§(§§pop());
                  while(true)
                  {
                     §§push(this.m_sweep);
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        while(true)
                        {
                           §§push(this.m_sweep);
                           if(!(_loc3_ || param1))
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              §§push(this.m_sweep.a0);
                              if(!(_loc2_ && this))
                              {
                                 continue;
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
      }
   }
}
