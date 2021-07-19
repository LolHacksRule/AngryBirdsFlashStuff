package §&!"§
{
   import § G§.§3!>§;
   import §+I§.b2ControllerEdge;
   import §-!C§.b2EdgeShape;
   import §-!C§.b2MassData;
   import §-!C§.b2Shape;
   import §3g§.b2JointEdge;
   import §69§.b2Contact;
   import §69§.b2ContactEdge;
   import §9"§.b2Mat22;
   import §9"§.b2Math;
   import §9"§.b2Sweep;
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §8w§:b2Transform;
      
      b2internal static var §"!X§:uint = 1;
      
      b2internal static var §9t§:uint = 2;
      
      b2internal static var §5]§:uint = 4;
      
      b2internal static var §1n§:uint = 8;
      
      b2internal static var §8!D§:uint = 16;
      
      b2internal static var §?p§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2Body))
         {
            §8w§ = new b2Transform();
            loop0:
            while(true)
            {
               §"!X§ = 1;
               loop1:
               while(true)
               {
                  §9t§ = 2;
                  loop2:
                  while(true)
                  {
                     §5]§ = 4;
                     while(!_loc2_)
                     {
                        §1n§ = 8;
                        continue loop2;
                        while(!(_loc2_ && _loc1_))
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      b2internal var §?z§:uint;
      
      b2internal var §3c§:int;
      
      b2internal var §0+§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §%=§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §-U§:b2Vec2;
      
      b2internal var §&m§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §3U§:b2Body;
      
      b2internal var §0]§:b2Body;
      
      b2internal var §&!R§:b2Fixture;
      
      b2internal var §9g§:int;
      
      b2internal var §8r§:b2ControllerEdge;
      
      b2internal var §5&§:int;
      
      b2internal var §>9§:b2JointEdge;
      
      b2internal var §3!1§:b2ContactEdge;
      
      b2internal var §#!&§:Number;
      
      b2internal var §]m§:Number;
      
      b2internal var §8>§:Number;
      
      b2internal var §?0§:Number;
      
      b2internal var §@!N§:Number;
      
      b2internal var §>!Q§:Number;
      
      b2internal var §0R§:Number;
      
      b2internal var §"!?§:Number;
      
      private var § !O§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            this.m_xf = new b2Transform();
            loop0:
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§%=§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§-U§ = new b2Vec2();
                     addr278:
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           this.§?z§ = 0;
                           while(true)
                           {
                              §§push(param1.§ Q§);
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§?z§ |= b2internal::1n;
                                       addr263:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr257:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§ v§);
                                    loop10:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr263);
                                          }
                                          addr311:
                                          var _loc3_:b2Mat22 = this.m_xf.R;
                                          var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                          if(_loc7_ || this)
                                          {
                                             §§push(this.m_sweep);
                                             loop25:
                                             while(true)
                                             {
                                                §§push(§§pop().c);
                                                loop26:
                                                while(true)
                                                {
                                                   §§push(_loc3_.col1);
                                                   loop27:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      loop28:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_.x);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc3_.col2);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr829:
                                                                  addr780:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.y);
                                                                     addr831:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr832:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(_loc3_.col2);
                                                                  if(!(_loc7_ || param2))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  loop38:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.y);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop39:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              addr797:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.m_sweep);
                                                                                 loop42:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().c);
                                                                                    loop43:
                                                                                    while(_loc7_)
                                                                                    {
                                                                                       §§push(this.m_sweep);
                                                                                       loop44:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().c);
                                                                                          addr734:
                                                                                          addr768:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(this.m_xf);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().position);
                                                                                                      addr742:
                                                                                                      addr693:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr743:
                                                                                                         while(_loc7_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr748:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               loop49:
                                                                                                               while(!_loc6_)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.m_sweep);
                                                                                                                     loop51:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(_loc7_ || this)
                                                                                                                           {
                                                                                                                              continue loop44;
                                                                                                                           }
                                                                                                                           continue loop43;
                                                                                                                        }
                                                                                                                        addr755:
                                                                                                                        addr724:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           break loop43;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.m_sweep);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                           continue loop51;
                                                                                                                        }
                                                                                                                        continue loop42;
                                                                                                                     }
                                                                                                                     continue loop49;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop28;
                                                                                                               addr748:
                                                                                                            }
                                                                                                            §§goto(addr829);
                                                                                                         }
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                      §§push(this.m_xf);
                                                                                                      if(_loc6_ && param2)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(§§pop().position);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            continue loop38;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr742);
                                                                                                      }
                                                                                                      §§goto(addr743);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr748);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_.x);
                                                                                             if(_loc6_ && param2)
                                                                                             {
                                                                                                continue loop38;
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr780);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      addr834:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr755);
                                                                                                      }
                                                                                                   }
                                                                                                   addr833:
                                                                                                }
                                                                                                addr686:
                                                                                                if(!(_loc7_ || _loc3_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr693);
                                                                                             }
                                                                                             §§goto(addr829);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(_loc7_)
                                                                                    {
                                                                                       §§push(_loc3_.col1);
                                                                                       if(_loc6_ && this)
                                                                                       {
                                                                                          continue loop27;
                                                                                       }
                                                                                       §§goto(addr768);
                                                                                       §§push(§§pop().y);
                                                                                    }
                                                                                    continue loop26;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr831);
                                                               }
                                                            }
                                                            §§goto(addr833);
                                                         }
                                                         §§goto(addr832);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr512);
                                          addr230:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§=q§);
                                             continue loop10;
                                          }
                                          addr187:
                                       }
                                    }
                                 }
                                 if(_loc7_ || param1)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§8!T§);
                                          loop16:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                this.§?z§ |= b2internal::9t;
                                                addr179:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      continue loop16;
                                                   }
                                                   §§goto(addr230);
                                                }
                                             }
                                          }
                                       }
                                       addr169:
                                    }
                                    if(!(_loc6_ && param1))
                                    {
                                       this.§?z§ |= b2internal::5];
                                    }
                                    continue loop1;
                                 }
                              }
                              addr80:
                              while(_loc7_ || this)
                              {
                                 continue loop0;
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
            while(true)
            {
               §§push(this.m_sweep);
               if(_loc7_)
               {
                  §§pop().localCenter.§^!#§();
                  if(!(_loc6_ && param2))
                  {
                     if(_loc7_ || this)
                     {
                        if(_loc7_)
                        {
                           §§push(this.m_sweep);
                           if(_loc7_)
                           {
                              §§pop().§2g§ = 1;
                              if(_loc7_ || _loc3_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(true)
                                       {
                                          §§push(this.m_sweep);
                                       }
                                       continue;
                                       break;
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr311);
                           }
                           break;
                        }
                        §§goto(addr278);
                     }
                     §§goto(addr257);
                  }
                  §§goto(addr311);
               }
               break;
            }
            §§pop().a0 = this.m_sweep.a = param1.angle;
            §§goto(addr311);
         }
      }
      
      private function §=k§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§7!;§().y,param2.§7!;§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§"!!§(_loc5_,param2.§7!;§());
         _loc6_ = b2Math.§?d§(_loc6_,param2.§]!I§());
         _loc6_ = b2Math.§"!!§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§`#§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§`#§(param1.§7!;§(),param2.§7!;§())).Normalize();
         var _loc8_:* = b2Math.§9-§(param1.§7!;§(),param2.§]!I§()) > 0;
         if(_loc9_ || param3)
         {
            param1.§'!L§(param2,_loc6_,_loc7_,_loc8_);
            do
            {
               param2.§,=§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(_loc10_);
            
         }
         return _loc4_;
      }
      
      public function §;i§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§3!>§ = null;
         if(_loc7_)
         {
            if(this.m_world.§@-§() == true)
            {
               if(!(_loc6_ && param1))
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(!_loc6_)
            {
               _loc2_.§?!@§(this,this.m_xf,param1);
               if(!_loc6_)
               {
                  if(this.§?z§ & b2internal::?p)
                  {
                     if(!_loc6_)
                     {
                        §§push(this.m_world);
                        if(!(_loc6_ && _loc3_))
                        {
                           _loc3_ = §§pop().§ t§.§+o§;
                           if(!_loc6_)
                           {
                              _loc2_.§7=§(_loc3_,this.m_xf);
                              _loc2_.§0]§ = this.§&!R§;
                              addr77:
                              if(_loc7_ || _loc3_)
                              {
                                 this.§&!R§ = _loc2_;
                                 if(!_loc6_)
                                 {
                                    addr103:
                                    var _loc4_:*;
                                    §§push((_loc4_ = this).§9g§);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       _loc4_.§9g§ = _loc5_;
                                    }
                                    if(_loc6_)
                                    {
                                    }
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(this.m_world);
                                          §§goto(addr134);
                                       }
                                    }
                                    addr177:
                                 }
                                 _loc2_.m_body = this;
                                 §§goto(addr181);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr77);
                        }
                        addr134:
                        §§goto(addr159);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr77);
               }
               §§goto(addr177);
            }
            addr159:
            while(true)
            {
               §§push(this.m_world.§?z§);
               if(_loc7_ || _loc3_)
               {
                  §§push(§§pop() | b2World.§8$§);
               }
               §§pop().§?z§ = §§pop();
               if(!_loc7_)
               {
                  continue loop4;
               }
               if(_loc7_)
               {
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
                  addr181:
                  while(true)
                  {
                     if(_loc2_.§]V§ <= 0)
                     {
                        continue loop3;
                     }
                     while(true)
                     {
                        this.§true §();
                        continue loop4;
                     }
                  }
               }
               §§goto(addr175);
               continue loop3;
            }
            return _loc2_;
         }
         addr34:
         return null;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(_loc4_ || param1)
         {
            _loc3_.shape = param1;
            do
            {
               _loc3_.density = param2;
            }
            while(_loc5_ && param1);
            
         }
         return this.§;i§(_loc3_);
      }
      
      public function §!!>§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§3!>§ = null;
         if(_loc12_ || _loc3_)
         {
            if(this.m_world.§@-§() == true)
            {
               if(!(_loc13_ && param1))
               {
                  §§goto(addr47);
               }
            }
            var _loc2_:b2Fixture = this.§&!R§;
            var _loc3_:b2Fixture = null;
            var _loc4_:Boolean = false;
            loop0:
            for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§0]§)
            {
               if(_loc2_ != param1)
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  if(_loc3_)
                  {
                     if(_loc12_ || this)
                     {
                        _loc3_.§0]§ = param1.§0]§;
                        loop2:
                        while(true)
                        {
                           addr79:
                           while(true)
                           {
                              addr58:
                              while(true)
                              {
                                 _loc4_ = true;
                                 if(!(_loc12_ || param1))
                                 {
                                    break loop0;
                                 }
                                 if(_loc12_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                        addr112:
                     }
                     break loop0;
                  }
                  this.§&!R§ = param1.§0]§;
                  while(true)
                  {
                     if(!(_loc12_ || _loc3_))
                     {
                        §§goto(addr112);
                     }
                     §§goto(addr58);
                  }
               }
            }
            var _loc5_:b2ContactEdge = this.§3!1§;
            if(_loc12_ || _loc2_)
            {
               while(_loc5_)
               {
                  _loc6_ = _loc5_.§^<§;
                  _loc5_ = _loc5_.§8L§;
                  _loc7_ = _loc6_.§"&§();
                  _loc8_ = _loc6_.§7!Z§();
                  if(!_loc13_)
                  {
                     §§push(param1 == _loc7_);
                     if(!(_loc13_ && param1))
                     {
                        if(!§§pop())
                        {
                           if(!_loc13_)
                           {
                              §§pop();
                              if(!(_loc12_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(param1 == _loc8_);
                           }
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
                  }
                  this.m_world.§ t§.§4!L§(_loc6_);
               }
               if(_loc12_)
               {
                  if(this.§?z§ & b2internal::?p)
                  {
                     if(!_loc13_)
                     {
                        _loc9_ = this.m_world.§ t§.§+o§;
                        if(!(_loc13_ && param1))
                        {
                           param1.§'!F§(_loc9_);
                        }
                     }
                     addr234:
                     param1.§0]§ = null;
                     if(_loc12_ || _loc2_)
                     {
                        var _loc10_:*;
                        §§push((_loc10_ = this).§9g§);
                        if(!_loc13_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc11_:* = §§pop();
                        if(_loc12_ || this)
                        {
                           _loc10_.§9g§ = _loc11_;
                        }
                        if(!(_loc13_ && _loc3_))
                        {
                           addr281:
                           this.§true §();
                        }
                        §§goto(addr283);
                     }
                     §§goto(addr281);
                  }
                  param1.§4!L§();
                  if(!_loc13_)
                  {
                     param1.m_body = null;
                     if(!_loc13_)
                     {
                        §§goto(addr234);
                     }
                     §§goto(addr281);
                  }
                  addr283:
                  return;
               }
               §§goto(addr281);
            }
            §§goto(addr234);
         }
         addr47:
      }
      
      public function §%#§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(!(_loc8_ && param1))
         {
            if(this.m_world.§@-§() != true)
            {
               loop0:
               while(true)
               {
                  §§push(this.m_xf);
                  if(!_loc8_)
                  {
                     §§push(§§pop().R);
                     if(_loc9_ || param2)
                     {
                        §§pop().Set(param2);
                        while(true)
                        {
                           if(_loc9_ || _loc3_)
                           {
                              if(_loc8_ && this)
                              {
                                 return;
                              }
                              addr80:
                              continue;
                           }
                           continue loop0;
                        }
                        addr84:
                        §§push(§§pop().R);
                     }
                     var _loc4_:b2Mat22 = §§pop();
                     var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                     if(!(_loc8_ && param1))
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
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(this.m_sweep);
                                                            if(!(_loc9_ || param2))
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().c);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.col1);
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop().y);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.x);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.col2);
                                                                        if(_loc8_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                     }
                                                                     continue loop8;
                                                                     addr303:
                                                                  }
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.y);
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr314:
                                                                        while(true)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           addr315:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              addr213:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 continue loop14;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr174:
                                                                        if(!(_loc9_ || param2))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr182:
                                                                        §§pop().y = §§pop() + §§pop();
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr185:
                                                                           if(!(_loc8_ && param2))
                                                                           {
                                                                              if(_loc9_ || param2)
                                                                              {
                                                                                 §§push(this.m_sweep);
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§pop().c0.SetV(this.m_sweep.c);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.m_sweep);
                                                                                                   addr133:
                                                                                                   while(!_loc8_)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      addr140:
                                                                                                      §§push(this.m_sweep);
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop().c);
                                                                                                         if(!(_loc8_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push(this.m_xf);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().position);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           §§goto(addr174);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().position);
                                                                                                                        }
                                                                                                                        addr231:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr303);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr248:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(_loc9_ || this)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ || param1))
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop30;
                                                                                                                              §§goto(addr185);
                                                                                                                           }
                                                                                                                           var _loc6_:§3!>§ = this.m_world.§ t§.§+o§;
                                                                                                                           _loc3_ = this.§&!R§;
                                                                                                                        }
                                                                                                                        continue loop12;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr393);
                                                                                                                           }
                                                                                                                           _loc3_.§<i§(_loc6_,this.m_xf,this.m_xf);
                                                                                                                           if(!(_loc9_ || param1))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           _loc3_ = _loc3_.§0]§;
                                                                                                                        }
                                                                                                                        this.m_world.§ t§.§ b§();
                                                                                                                        addr393:
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     §§goto(addr314);
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                                  addr248:
                                                                                                               }
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                            §§goto(addr182);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr231);
                                                                                                                  §§push(this.m_xf);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                            addr224:
                                                                                                         }
                                                                                                         §§goto(addr248);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr140);
                                                                                                         }
                                                                                                         addr223:
                                                                                                      }
                                                                                                      §§goto(addr224);
                                                                                                   }
                                                                                                   §§goto(addr213);
                                                                                                }
                                                                                             }
                                                                                             §§push(this.m_sweep);
                                                                                             break loop13;
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§goto(addr345);
                                                                                    }
                                                                                    §§goto(addr133);
                                                                                 }
                                                                                 break loop13;
                                                                              }
                                                                              §§goto(addr315);
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                        §§goto(addr345);
                                                                     }
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§pop().a0 = this.m_sweep.a = param2;
                                                         §§goto(addr345);
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
                     §§goto(addr345);
                  }
                  §§goto(addr84);
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §^!N§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%#§(param1.position,param1.GetAngle());
         }
      }
      
      public function §>B§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §0!%§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§%#§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §!j§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§%#§(this.GetPosition(),param1);
         }
      }
      
      public function §05§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §if§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§3c§ != b2_staticBody)
            {
               do
               {
                  this.§%=§.SetV(param1);
               }
               while(_loc2_ && param1);
               
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§%=§;
      }
      
      public function §;[§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§3c§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.m_angularVelocity = param1;
                  if(_loc3_)
                  {
                     break;
                  }
                  addr63:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §%z§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc2_ || _loc2_)
         {
            _loc1_.type = this.§0!$§();
            loop0:
            while(true)
            {
               _loc1_.§=q§ = (this.§?z§ & b2internal::5]) == b2internal::5];
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  while(true)
                  {
                     _loc1_.§='§ = this.§0R§;
                     addr154:
                     while(!_loc3_)
                     {
                        _loc1_.§!t§ = this.m_angularVelocity;
                        while(true)
                        {
                           _loc1_.§ v§ = (this.§?z§ & b2internal::8!D) == b2internal::8!D;
                           loop5:
                           while(true)
                           {
                              _loc1_.§ Q§ = (this.§?z§ & b2internal::1n) == b2internal::1n;
                              addr132:
                              while(true)
                              {
                                 _loc1_.§8!T§ = (this.§?z§ & b2internal::9t) == b2internal::9t;
                                 continue loop5;
                              }
                           }
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           _loc1_.§[!8§ = this.§>!Q§;
                           while(true)
                           {
                              _loc1_.§=!0§.SetV(this.GetLinearVelocity());
                              addr59:
                              while(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr66);
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  while(true)
                  {
                     _loc1_.position = this.GetPosition();
                     for(; _loc2_; _loc1_.§7! § = this.GetUserData(),if(_loc2_)
                     {
                        return _loc1_;
                     })
                     {
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr59);
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §^!,§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§3c§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr213:
                        while(true)
                        {
                        }
                     }
                     addr200:
                  }
                  while(true)
                  {
                     §§push(this.§-U§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§-U§);
                        addr187:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc3_)
                           {
                              §§push(param1.x);
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr161:
                                 §§push(param1.y);
                                 if(!(_loc3_ || param2))
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && param2))
                                 {
                                    §§pop().y = §§pop();
                                    for(; _loc3_; §§pop().§&m§ = §§pop(),if(_loc4_ && this)
                                    {
                                       continue;
                                    },if(!(_loc3_ || param2))
                                    {
                                       continue loop4;
                                    },if(_loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             return;
                                          }
                                          addr218:
                                          return;
                                       }
                                       continue loop0;
                                    },§§goto(addr200))
                                    {
                                       §§push(this);
                                       §§push(this.§&m§);
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(param2.x);
                                       if(!(_loc4_ && param1))
                                       {
                                          §§push(this.m_sweep.c.x);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc4_ && param1))
                                             {
                                                addr62:
                                                §§push(param1.y);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc3_)
                                                   {
                                                      §§push(param2.y);
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§push(this.m_sweep.c.y);
                                                         if(!_loc4_)
                                                         {
                                                            addr96:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               addr92:
                                                               §§push(param1.x);
                                                            }
                                                            §§push(§§pop() + (§§pop() - §§pop()));
                                                            continue;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr92);
                                                   }
                                                }
                                             }
                                             §§goto(addr96);
                                          }
                                          §§goto(addr92);
                                       }
                                       §§goto(addr62);
                                    }
                                    §§goto(addr213);
                                 }
                                 else
                                 {
                                    addr193:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       continue loop4;
                                    }
                                    addr193:
                                 }
                              }
                              addr192:
                           }
                           §§goto(addr193);
                        }
                     }
                  }
                  addr219:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr218);
         }
         §§goto(addr219);
      }
      
      public function §"Q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§3c§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     loop1:
                     while(!_loc2_)
                     {
                        this.SetAwake(true);
                        loop2:
                        while(_loc3_ || this)
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§&m§);
                              if(_loc3_)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§&m§ = §§pop();
                              if(_loc3_)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           return;
                        }
                        return;
                     }
                     continue;
                  }
                  §§goto(addr29);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr91);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(this.§3c§ != b2_dynamicBody)
            {
               if(_loc4_ || param2)
               {
                  return;
               }
               while(true)
               {
               }
               addr242:
            }
            loop1:
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  if(!(_loc3_ && param2))
                  {
                     this.SetAwake(true);
                     addr219:
                     while(true)
                     {
                     }
                     addr219:
                  }
                  §§goto(addr219);
               }
               loop2:
               while(true)
               {
                  §§push(this.§%=§);
                  loop3:
                  while(true)
                  {
                     §§push(this.§%=§);
                     loop4:
                     while(true)
                     {
                        §§push(§§pop().x);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(this.§]m§);
                           while(true)
                           {
                              §§push(param1.x);
                              addr193:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr194:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                 }
                              }
                              addr161:
                              if(!(_loc4_ || param1))
                              {
                                 continue;
                              }
                              §§push(param1.y);
                              if(_loc4_)
                              {
                                 addr174:
                                 §§pop().y = §§pop() + §§pop() * §§pop();
                                 addr173:
                                 do
                                 {
                                    §§push(this);
                                    §§push(this.m_angularVelocity);
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    §§push(this.§?0§);
                                    if(!(_loc3_ && param2))
                                    {
                                       §§push(param2.x);
                                       if(!_loc3_)
                                       {
                                          §§push(this.m_sweep.c.x);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc3_ && param2))
                                             {
                                                §§push(param1.y);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      addr69:
                                                      §§push(param2.y);
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.m_sweep.c.y);
                                                         if(_loc4_ || this)
                                                         {
                                                            addr90:
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc3_)
                                                            {
                                                               addr87:
                                                               §§push(param1.x);
                                                            }
                                                            §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                            continue;
                                                         }
                                                         §§goto(addr90);
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr87);
                                                   }
                                                }
                                                §§goto(addr90);
                                             }
                                             §§goto(addr69);
                                          }
                                          §§goto(addr87);
                                       }
                                       §§goto(addr69);
                                    }
                                    §§goto(addr90);
                                 }
                                 while(§§pop().m_angularVelocity = §§pop(), _loc3_ && _loc3_);
                                 
                                 if(_loc3_ && _loc3_)
                                 {
                                    while(true)
                                    {
                                       if(_loc3_ && this)
                                       {
                                          continue loop2;
                                       }
                                       §§push(this.§%=§);
                                       if(!(_loc4_ || param1))
                                       {
                                          continue loop3;
                                       }
                                       §§push(this.§%=§);
                                       if(!_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(§§pop().y);
                                       if(!(_loc3_ && this))
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             §§push(this.§]m§);
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && param2))
                                                {
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr173);
                                          }
                                          break;
                                       }
                                       §§goto(addr174);
                                    }
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       §§goto(addr196);
                                    }
                                    addr196:
                                    addr195:
                                 }
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr193);
                           }
                        }
                        §§goto(addr195);
                     }
                  }
               }
            }
         }
         §§goto(addr219);
      }
      
      public function §%u§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§05§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§&!Y§(this.§%z§());
         var _loc8_:b2Fixture = _loc5_.§&!R§;
         while(true)
         {
            if(!_loc8_)
            {
               if(!(_loc16_ && _loc2_))
               {
                  _loc5_.§true §();
                  if(_loc17_)
                  {
                     break;
                  }
                  addr191:
                  var _loc9_:b2Vec2 = _loc5_.§05§();
                  var _loc10_:b2Vec2 = _loc6_.§05§();
                  var _loc11_:b2Vec2 = b2Math.§`#§(_loc2_,b2Math.§@!"§(_loc3_,b2Math.§?d§(_loc9_,_loc4_)));
                  var _loc12_:b2Vec2 = b2Math.§`#§(_loc2_,b2Math.§@!"§(_loc3_,b2Math.§?d§(_loc10_,_loc4_)));
                  if(!_loc16_)
                  {
                     _loc5_.SetLinearVelocity(_loc11_);
                     while(true)
                     {
                        _loc6_.SetLinearVelocity(_loc12_);
                     }
                     addr282:
                  }
                  loop2:
                  while(true)
                  {
                     _loc5_.§;[§(_loc3_);
                     loop3:
                     while(true)
                     {
                        _loc6_.§;[§(_loc3_);
                        loop4:
                        while(true)
                        {
                           _loc5_.§-D§();
                           while(true)
                           {
                              if(!_loc16_)
                              {
                                 if(_loc17_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                              addr253:
                              _loc6_.§-D§();
                              if(_loc16_)
                              {
                                 continue;
                              }
                              if(_loc17_)
                              {
                                 return _loc6_;
                              }
                              §§goto(addr282);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               break;
            }
            if(!param1(_loc8_))
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§0]§;
               continue;
            }
            if(_loc16_)
            {
               break;
            }
            _loc13_ = _loc8_.§0]§;
            if(_loc17_ || _loc3_)
            {
               if(_loc7_)
               {
                  if(!_loc16_)
                  {
                     _loc7_.§0]§ = _loc13_;
                     if(_loc16_)
                     {
                     }
                     addr125:
                     _loc6_.§&!R§ = _loc8_;
                     if(_loc17_)
                     {
                        var _loc14_:*;
                        §§push((_loc14_ = _loc6_).§9g§);
                        if(!(_loc16_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc15_:* = §§pop();
                        if(_loc17_)
                        {
                           _loc14_.§9g§ = _loc15_;
                        }
                        if(_loc17_)
                        {
                           addr162:
                           _loc8_.m_body = _loc6_;
                        }
                        addr165:
                        _loc8_ = _loc13_;
                        continue;
                     }
                     §§goto(addr162);
                  }
                  addr92:
                  §§push((_loc14_ = _loc5_).§9g§);
                  if(!(_loc16_ && _loc2_))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc15_ = §§pop();
                  if(!_loc16_)
                  {
                     _loc14_.§9g§ = _loc15_;
                  }
                  if(_loc16_ && this)
                  {
                  }
                  §§goto(addr125);
               }
               else
               {
                  _loc5_.§&!R§ = _loc13_;
                  if(!(_loc16_ && param1))
                  {
                     §§goto(addr92);
                  }
               }
               _loc8_.§0]§ = _loc6_.§&!R§;
               if(_loc17_)
               {
                  §§goto(addr125);
               }
               §§goto(addr165);
            }
            §§goto(addr125);
         }
         _loc6_.§true §();
         §§goto(addr191);
      }
      
      public function §6S§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&!R§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§0]§;
            if(!(_loc14_ && _loc2_))
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§9g§);
               if(!_loc14_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!(_loc14_ && param1))
               {
                  _loc12_.§9g§ = _loc13_;
               }
               if(_loc15_ || param1)
               {
                  _loc2_.§0]§ = this.§&!R§;
                  if(_loc15_ || _loc2_)
                  {
                     this.§&!R§ = _loc2_;
                     if(!_loc15_)
                     {
                        continue;
                     }
                  }
                  addr126:
                  _loc2_.m_body = _loc4_;
                  continue;
               }
               §§push((_loc12_ = this).§9g§);
               if(!(_loc14_ && param1))
               {
                  §§push(§§pop() + 1);
               }
               _loc13_ = §§pop();
               if(!_loc14_)
               {
                  _loc12_.§9g§ = _loc13_;
               }
               if(!(_loc15_ || this))
               {
                  continue;
               }
            }
            §§goto(addr126);
         }
         if(_loc15_ || _loc3_)
         {
            _loc3_.§9g§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§05§();
         var _loc6_:b2Vec2 = _loc4_.§05§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(!(_loc14_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!_loc14_)
         {
            _loc3_.§true §();
            do
            {
               this.§-D§();
            }
            while(_loc14_ && _loc3_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§#!&§;
      }
      
      public function §^8§() : Number
      {
         return this.§8>§;
      }
      
      public function §-g§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.§@!V§ = this.§#!&§;
         }
         do
         {
            param1.§9o§ = this.§8>§;
            do
            {
               param1.center.SetV(this.m_sweep.localCenter);
            }
            while(_loc3_);
            
         }
         while(_loc3_ && this);
         
      }
      
      public function § in§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§@-§());
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§@-§());
               loop1:
               while(true)
               {
                  §§push(true);
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§3c§);
                           loop4:
                           while(true)
                           {
                              if(§§pop() == b2_dynamicBody)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§]m§ = 0;
                                    while(true)
                                    {
                                       this.§8>§ = 0;
                                       while(!(_loc3_ && param1))
                                       {
                                          this.§?0§ = 0;
                                          while(true)
                                          {
                                             this.§#!&§ = param1.§@!V§;
                                             while(true)
                                             {
                                                §§push(this.§#!&§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr205:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         while(!(_loc3_ && _loc3_))
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop5;
                                                         addr206:
                                                      }
                                                      else
                                                      {
                                                         addr193:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§]m§ = 1 / this.§#!&§;
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                                if(!(_loc3_ && this))
                                                {
                                                   addr192:
                                                   while(true)
                                                   {
                                                      §§push(this.§?z§ & b2internal::8!D);
                                                      if(_loc3_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() == 0);
                                                      if(!_loc3_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr182);
                                                      §§goto(addr192);
                                                   }
                                                   continue loop4;
                                                   addr59:
                                                }
                                             }
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr59);
                                                   }
                                                   §§goto(addr292);
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr275);
                  }
               }
            }
         }
         §§goto(addr223);
      }
      
      public function §true §() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2MassData = null;
         if(_loc5_ || _loc3_)
         {
            this.§#!&§ = 0;
         }
         loop0:
         while(true)
         {
            this.§]m§ = 0;
            while(true)
            {
               this.§8>§ = 0;
               while(_loc5_ || _loc1_)
               {
                  this.§?0§ = 0;
                  while(_loc5_ || this)
                  {
                     this.m_sweep.localCenter.§^!#§();
                     continue loop0;
                     if(!(_loc6_ && _loc3_))
                     {
                        return;
                     }
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
         if(_loc4_)
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  addr34:
                  §§push(_loc2_.col2.x);
                  if(_loc4_)
                  {
                     §§push(param1.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr46:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_ || this)
                           {
                              §§push(param1.x);
                              if(_loc4_)
                              {
                                 §§goto(addr88);
                              }
                              addr88:
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 §§push(_loc2_.col2.y);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr84:
                                    §§push(§§pop() * param1.y);
                                 }
                              }
                              var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.x);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() + this.m_xf.position.x);
                                 }
                                 §§pop().x = §§pop();
                                 do
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.y);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(_loc5_ && _loc2_);
                                 
                              }
                              return _loc3_;
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr88);
         }
         §§goto(addr34);
      }
      
      public function §^T§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ set§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§3!F§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§1!F§(this.m_xf.R,param1);
      }
      
      public function §;!G§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§%=§.x);
         if(_loc3_)
         {
            §§push(this.m_angularVelocity);
            if(_loc3_ || _loc3_)
            {
               §§push(param1.y);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc2_ && param1))
                        {
                           addr79:
                           §§push(§§pop() - §§pop());
                           §§push(this.§%=§.y);
                           if(_loc3_)
                           {
                              addr84:
                              §§push(this.m_angularVelocity);
                              if(_loc3_ || _loc2_)
                              {
                                 addr93:
                                 §§push(param1.x);
                                 if(!(_loc2_ && this))
                                 {
                                    addr117:
                                    §§push(§§pop() + §§pop() * (§§pop() - this.m_sweep.c.x));
                                 }
                              }
                              §§goto(addr117);
                           }
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr117);
            }
            §§goto(addr84);
         }
         §§goto(addr79);
      }
      
      public function §@!&§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_ || _loc2_)
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || _loc2_)
               {
                  §§push(_loc2_.col2.x);
                  if(_loc4_ || param1)
                  {
                     §§push(param1.y);
                     if(_loc4_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || _loc2_)
                        {
                           addr72:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_ || param1)
                           {
                              addr82:
                              §§push(param1.x);
                              if(_loc4_ || param1)
                              {
                                 addr118:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr99:
                                    §§push(_loc2_.col2.y);
                                    if(_loc4_)
                                    {
                                       addr104:
                                       §§push(§§pop() * param1.y);
                                    }
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(_loc4_ || param1)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
                                 }
                                 do
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.y);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(_loc5_);
                                 
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(this.§%=§.x);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(this.m_angularVelocity);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc4_)
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(_loc4_ || param1)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc4_)
                                             {
                                                addr163:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc5_)
                                                {
                                                   addr167:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(this.§%=§.y);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(this.m_angularVelocity);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc3_.x);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr190:
                                                            §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                   }
                                                }
                                                §§goto(addr192);
                                             }
                                             addr192:
                                             return new §§pop().b2Vec2(§§pop(),§§pop());
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr118);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr104);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr82);
         }
         §§goto(addr72);
      }
      
      public function §[!L§() : Number
      {
         return this.§>!Q§;
      }
      
      public function §`R§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!Q§ = param1;
         }
      }
      
      public function §#!W§() : Number
      {
         return this.§0R§;
      }
      
      public function §3%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0R§ = param1;
         }
      }
      
      public function §4i§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§3c§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr128:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr129:
                     return;
                  }
                  addr120:
                  while(true)
                  {
                     this.§3c§ = param1;
                     addr124:
                     while(true)
                     {
                        this.§true §();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §0!$§() : uint
      {
         return this.§3c§;
      }
      
      public function §!!"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!param1)
            {
               this.§?z§ &= ~b2internal::1n;
               if(!(_loc3_ && this))
               {
                  addr55:
               }
               else
               {
                  addr76:
               }
               return;
            }
            if(_loc2_)
            {
               this.§?z§ |= b2internal::1n;
            }
            §§goto(addr76);
         }
         §§goto(addr55);
      }
      
      public function §&_§() : Boolean
      {
         return (this.§?z§ & b2internal::1n) == b2internal::1n;
      }
      
      public function §[o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  addr78:
                  this.§?z§ |= b2internal::5];
               }
            }
            else
            {
               this.§?z§ &= ~b2internal::5];
               do
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
               }
               while(this.SetAwake(true), _loc2_ && _loc2_);
               
               §§goto(addr25);
            }
            addr25:
            return;
         }
         §§goto(addr78);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§?z§ &= ~b2internal::9t;
               while(true)
               {
                  this.§"!?§ = 0;
                  while(!(_loc3_ && _loc2_))
                  {
                     this.§%=§.§^!#§();
                     loop2:
                     while(_loc2_)
                     {
                        if(!(_loc3_ && this))
                        {
                           while(true)
                           {
                              this.m_angularVelocity = 0;
                              loop4:
                              while(!_loc3_)
                              {
                                 this.§-U§.§^!#§();
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc2_ || this))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           addr19:
                           return;
                           addr81:
                        }
                        else
                        {
                           addr122:
                        }
                        this.§?z§ |= b2internal::9t;
                        this.§"!?§ = 0;
                        break;
                     }
                     §§goto(addr19);
                  }
               }
            }
            §§goto(addr122);
         }
         §§goto(addr81);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§?z§ & b2internal::9t) == b2internal::9t;
      }
      
      public function §+!B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  this.§?z§ |= b2internal::8!D;
               }
               do
               {
                  loop1:
                  while(true)
                  {
                     this.§true §();
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr52:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               while(_loc2_);
               
               return;
               addr41:
            }
            else
            {
               this.§?z§ &= ~b2internal::8!D;
            }
            §§goto(addr52);
         }
         §§goto(addr41);
      }
      
      public function §;h§() : Boolean
      {
         return (this.§?z§ & b2internal::8!D) == b2internal::8!D;
      }
      
      public function §5!Z§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§3!>§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc6_ || _loc3_)
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() == this.§7"§())
               {
                  if(_loc6_ || _loc2_)
                  {
                     §§goto(addr48);
                  }
               }
               §§push(param1);
            }
            if(§§pop())
            {
               if(_loc6_ || _loc2_)
               {
                  this.§?z§ |= b2internal::?p;
               }
               _loc2_ = this.m_world.§ t§.§+o§;
               _loc3_ = this.§&!R§;
               while(_loc3_)
               {
                  _loc3_.§7=§(_loc2_,this.m_xf);
                  if(_loc7_)
                  {
                     break;
                  }
                  _loc3_ = _loc3_.§0]§;
               }
            }
            else
            {
               this.§?z§ &= ~b2internal::?p;
               _loc2_ = this.m_world.§ t§.§+o§;
               _loc3_ = this.§&!R§;
               if(!_loc7_)
               {
                  while(_loc3_)
                  {
                     _loc3_.§'!F§(_loc2_);
                     if(!(_loc6_ || _loc3_))
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§0]§;
                  }
               }
               _loc4_ = this.§3!1§;
               if(_loc6_ || param1)
               {
                  while(_loc4_)
                  {
                     _loc5_ = _loc4_;
                     _loc4_ = _loc4_.§8L§;
                     if(_loc6_ || this)
                     {
                        this.m_world.§ t§.§4!L§(_loc5_.§^<§);
                     }
                  }
                  if(_loc6_ || param1)
                  {
                  }
                  §§goto(addr199);
               }
               this.§3!1§ = null;
            }
            addr199:
            return;
         }
         addr48:
      }
      
      public function §7"§() : Boolean
      {
         return (this.§?z§ & b2internal::?p) == b2internal::?p;
      }
      
      public function §`A§() : Boolean
      {
         return (this.§?z§ & b2internal::5]) == b2internal::5];
      }
      
      public function §4!%§() : b2Fixture
      {
         return this.§&!R§;
      }
      
      public function §^V§() : b2JointEdge
      {
         return this.§>9§;
      }
      
      public function §4@§() : b2ControllerEdge
      {
         return this.§8r§;
      }
      
      public function §!-§() : b2ContactEdge
      {
         return this.§3!1§;
      }
      
      public function §`!R§() : b2Body
      {
         return this.§0]§;
      }
      
      public function GetUserData() : *
      {
         return this.§ !O§;
      }
      
      public function §,!P§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§ !O§ = param1;
         }
      }
      
      public function §4!@§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §-D§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §8w§;
         if(!_loc6_)
         {
            §§push(_loc1_.R);
            if(_loc7_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr33:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!_loc6_)
            {
               §§push(_loc1_.position);
               if(_loc7_ || this)
               {
                  §§push(this.m_sweep);
                  if(_loc7_)
                  {
                     §§push(§§pop().c0);
                     if(_loc7_)
                     {
                        §§push(§§pop().x);
                        if(_loc7_)
                        {
                           §§push(_loc2_.col1);
                           if(!_loc6_)
                           {
                              §§push(§§pop().x);
                              if(!_loc6_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_ || _loc1_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc6_ && _loc1_))
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc7_ || _loc1_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc7_)
                                          {
                                             §§push(_loc3_.y);
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc7_ || _loc1_)
                                                      {
                                                         addr142:
                                                         §§pop().x = §§pop();
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            addr155:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               addr165:
                                                               §§push(_loc2_.col1.y);
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(_loc3_.x);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        addr185:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           addr198:
                                                                           §§push(§§pop() - (§§pop() + §§pop() * _loc3_.y));
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr198);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§pop().y = §§pop();
                                                      addr201:
                                                      var _loc5_:§3!>§ = this.m_world.§ t§.§+o§;
                                                      _loc4_ = this.§&!R§;
                                                      while(_loc4_)
                                                      {
                                                         _loc4_.§<i§(_loc5_,_loc1_,this.m_xf);
                                                         if(_loc6_ && this)
                                                         {
                                                            break;
                                                         }
                                                         _loc4_ = _loc4_.§0]§;
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr185);
                                                }
                                             }
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr185);
                                    }
                                 }
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr142);
                     }
                  }
               }
               §§goto(addr155);
            }
            §§goto(addr142);
         }
         §§goto(addr33);
      }
      
      b2internal function §,M§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.m_xf);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop().R);
               if(!(_loc3_ && _loc3_))
               {
                  §§pop().Set(this.m_sweep.a);
                  addr47:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc4_)
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr172:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr174:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr175:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr176:
                              loop4:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr178:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc4_)
                                    {
                                       §§push(_loc2_.x);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             addr198:
                                             addr128:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                             }
                                             if(!(_loc4_ || this))
                                             {
                                                continue;
                                             }
                                             §§push(_loc1_.col2);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop().y);
                                                if(!_loc3_)
                                                {
                                                   addr142:
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(_loc2_.y);
                                                         if(!_loc3_)
                                                         {
                                                            addr156:
                                                            §§push(§§pop() - (§§pop() + §§pop() * §§pop()));
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               §§pop().y = §§pop();
                                                               if(_loc4_)
                                                               {
                                                                  return;
                                                                  addr168:
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr199:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.y);
                                                         }
                                                         addr199:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr203:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr204:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr156);
                                             }
                                             else
                                             {
                                                §§goto(addr198);
                                             }
                                          }
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr203);
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr171:
               }
               while(true)
               {
                  §§push(this.m_xf);
                  if(_loc4_)
                  {
                     §§push(§§pop().position);
                     if(_loc4_)
                     {
                        §§push(this.m_sweep);
                        if(!_loc3_)
                        {
                           §§push(§§pop().c);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop().y);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(_loc4_)
                                 {
                                    §§push(_loc1_.col1);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push(§§pop().y);
                                       if(_loc4_)
                                       {
                                          §§push(_loc2_.x);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr156);
                           }
                           else
                           {
                              §§goto(addr175);
                           }
                        }
                        else
                        {
                           §§goto(addr174);
                        }
                        §§goto(addr175);
                     }
                     else
                     {
                        §§goto(addr172);
                     }
                  }
                  else
                  {
                     §§goto(addr171);
                  }
                  §§goto(addr172);
               }
               §§goto(addr168);
            }
         }
         §§goto(addr47);
      }
      
      b2internal function §4!T§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§3c§);
            if(!_loc4_)
            {
               §§push(b2_dynamicBody);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(!(_loc4_ && this))
                     {
                        addr41:
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              if(_loc3_ || _loc2_)
                              {
                                 addr56:
                                 §§push(param1.§3c§ == b2_dynamicBody);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§goto(addr64);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr82);
                     }
                     addr64:
                     §§push(!§§pop());
                     if(!(_loc4_ && param1))
                     {
                        addr82:
                        if(§§pop())
                        {
                           if(!(_loc4_ && param1))
                           {
                              addr90:
                              §§push(false);
                           }
                           else
                           {
                              §§goto(addr92);
                           }
                        }
                        §§goto(addr92);
                     }
                     return §§pop();
                  }
                  §§goto(addr41);
               }
            }
            §§goto(addr56);
         }
         addr92:
         var _loc2_:b2JointEdge = this.§>9§;
         while(true)
         {
            if(!_loc2_)
            {
               §§push(true);
               break;
            }
            if(_loc2_.§!!Y§ != param1)
            {
               continue;
            }
            if(_loc3_ || _loc2_)
            {
               §§push(_loc2_.§#y§.§"l§);
               if(_loc4_ && this)
               {
                  break;
               }
               if(§§pop() == false)
               {
                  if(_loc3_)
                  {
                     addr123:
                     §§push(false);
                     if(!(_loc4_ && _loc2_))
                     {
                        return §§pop();
                     }
                     break;
                  }
               }
               continue;
            }
            §§goto(addr123);
         }
         return §§pop();
      }
      
      b2internal function §[d§(param1:Number) : void
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
                  §§pop().§[d§(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     loop3:
                     while(_loc3_)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        while(!(_loc2_ && _loc3_))
                        {
                           continue loop3;
                           §§pop().a = §§pop();
                           do
                           {
                              this.§,M§();
                           }
                           while(!_loc3_);
                           
                           §§push(this.m_sweep);
                           if(_loc2_ && param1)
                           {
                              continue loop3;
                           }
                           §§push(this.m_sweep.a0);
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           §§goto(addr62);
                           if(_loc3_)
                           {
                              return;
                              addr36:
                           }
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr36);
      }
   }
}
