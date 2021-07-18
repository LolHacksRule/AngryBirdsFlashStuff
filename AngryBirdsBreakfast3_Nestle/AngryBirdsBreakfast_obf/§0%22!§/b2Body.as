package §0"!§
{
   import §!§.§5!u§;
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §23§.b2Contact;
   import §23§.b2ContactEdge;
   import §=!!§.b2EdgeShape;
   import §=!!§.b2MassData;
   import §=!!§.b2Shape;
   import §?!V§.b2ControllerEdge;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Sweep;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   import §@h§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §+V§:b2Transform;
      
      b2internal static var §@F§:uint = 1;
      
      b2internal static var §?l§:uint = 2;
      
      b2internal static var §5"4§:uint = 4;
      
      b2internal static var §#!<§:uint = 8;
      
      b2internal static var §5h§:uint = 16;
      
      b2internal static var §5! §:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+V§ = new b2Transform();
            loop0:
            while(true)
            {
               §@F§ = 1;
               loop1:
               while(true)
               {
                  §?l§ = 2;
                  while(true)
                  {
                     §5"4§ = 4;
                     addr95:
                     while(true)
                     {
                        §#!<§ = 8;
                        continue loop1;
                     }
                     addr50:
                     if(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           b2_kinematicBody = 1;
                           loop8:
                           while(_loc1_)
                           {
                              while(true)
                              {
                                 b2_dynamicBody = 2;
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop8;
                              }
                              return;
                           }
                           loop7:
                           while(!(_loc2_ && _loc1_))
                           {
                              if(_loc1_)
                              {
                                 §§goto(addr50);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §5! § = 32;
                                    break loop7;
                                 }
                                 addr78:
                              }
                           }
                           for(; _loc1_; §§goto(addr41))
                           {
                              if(_loc1_)
                              {
                                 b2_staticBody = 0;
                                 continue;
                              }
                              §§goto(addr95);
                           }
                           addr41:
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      b2internal var §1!h§:uint;
      
      b2internal var §5Q§:int;
      
      b2internal var §[!b§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §;!A§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §6",§:b2Vec2;
      
      b2internal var §?!u§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §,!>§:b2Body;
      
      b2internal var §6!c§:b2Body;
      
      b2internal var §%!y§:b2Fixture;
      
      b2internal var §3s§:int;
      
      b2internal var §8!@§:b2ControllerEdge;
      
      b2internal var §#k§:int;
      
      b2internal var §=!U§:b2JointEdge;
      
      b2internal var § if§:b2ContactEdge;
      
      b2internal var §'q§:Number;
      
      b2internal var § c§:Number;
      
      b2internal var §&S§:Number;
      
      b2internal var §"k§:Number;
      
      b2internal var §3X§:Number;
      
      b2internal var §!4§:Number;
      
      b2internal var §?I§:Number;
      
      b2internal var §9!I§:Number;
      
      b2internal var §@?§:Number;
      
      b2internal var §&!;§:Boolean;
      
      private var §finally§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            this.m_xf = new b2Transform();
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§;!A§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§6",§ = new b2Vec2();
                     loop3:
                     while(!_loc7_)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§1!h§ = 0;
                           loop5:
                           while(true)
                           {
                              §§push(param1.§5!J§);
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       this.§1!h§ |= b2internal::#!<;
                                    }
                                    while(!_loc7_)
                                    {
                                    }
                                    continue loop5;
                                    addr243:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§3"2§);
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§1!h§ |= b2internal::5h;
                                             addr226:
                                             while(_loc6_)
                                             {
                                             }
                                             continue loop3;
                                          }
                                          addr220:
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§`",§);
                                          loop13:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop4;
                                             }
                                             addr159:
                                             while(true)
                                             {
                                                §§push(param1.§0!z§);
                                                continue loop13;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(_loc7_ && param2)
                                 {
                                    continue;
                                 }
                                 if(§§pop())
                                 {
                                    while(_loc6_ || this)
                                    {
                                       this.§1!h§ |= b2internal::5! ;
                                       if(!_loc7_)
                                       {
                                          if(!(_loc7_ && this))
                                          {
                                             while(true)
                                             {
                                                this.m_world = param2;
                                                if(!_loc7_)
                                                {
                                                   §§push(this.m_xf);
                                                   if(!_loc7_)
                                                   {
                                                      §§pop().position.SetV(param1.position);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(this.m_xf);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop().R);
                                                            if(_loc6_)
                                                            {
                                                               §§pop().Set(param1.angle);
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  addr77:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.m_sweep);
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§pop().localCenter.§>![§();
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              if(_loc7_ && _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc7_ && this)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              §§pop().§+!U§ = 1;
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr243);
                                                                           }
                                                                        }
                                                                        addr282:
                                                                        §§pop().a0 = this.m_sweep.a = param1.angle;
                                                                        §§goto(addr292);
                                                                     }
                                                                  }
                                                                  §§goto(addr190);
                                                               }
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr295);
                                             }
                                             addr109:
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr295);
                                       if(_loc7_ && param2)
                                       {
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr77);
                                             }
                                             §§goto(addr282);
                                             §§push(this.m_sweep);
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr190);
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr109);
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
               if(_loc7_ && _loc3_)
               {
                  continue;
               }
               this.§1!h§ |= b2internal::5"4;
               §§goto(addr215);
            }
         }
         §§goto(addr190);
      }
      
      private function §+x§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.§ t§().y,param2.§ t§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§6!H§(_loc5_,param2.§ t§());
         _loc6_ = b2Math.§1"5§(_loc6_,param2.§+!_§());
         _loc6_ = b2Math.§6!H§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§%!5§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§%!5§(param1.§ t§(),param2.§ t§())).Normalize();
         var _loc8_:* = b2Math.§,w§(param1.§ t§(),param2.§+!_§()) > 0;
         if(!(_loc9_ && param3))
         {
            param1.§=<§(param2,_loc6_,_loc7_,_loc8_);
         }
         do
         {
            param2.§0!=§(param1,_loc6_,_loc7_,_loc8_);
         }
         while(_loc9_ && param2);
         
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§5!u§ = null;
         if(!_loc7_)
         {
            if(this.m_world.§8=§() == true)
            {
               if(!(_loc7_ && _loc3_))
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(_loc6_)
            {
               _loc2_.§'!D§(this,this.m_xf,param1);
               if(!(_loc7_ && this))
               {
                  addr54:
                  if(this.§1!h§ & b2internal::5! )
                  {
                     if(!(_loc7_ && this))
                     {
                        §§goto(addr66);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr86);
               }
               addr66:
               §§push(this.m_world);
               if(!(_loc7_ && param1))
               {
                  _loc3_ = §§pop().§`Q§.§"V§;
                  if(!_loc7_)
                  {
                     _loc2_.§=!b§(_loc3_,this.m_xf);
                     addr86:
                     _loc2_.§6!c§ = this.§%!y§;
                     if(!(_loc7_ && param1))
                     {
                        addr107:
                        this.§%!y§ = _loc2_;
                        if(_loc6_)
                        {
                           var _loc4_:*;
                           §§push((_loc4_ = this).§3s§);
                           if(_loc6_ || this)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc7_ && this))
                           {
                              _loc4_.§3s§ = _loc5_;
                           }
                           if(_loc6_ || _loc3_)
                           {
                              _loc2_.m_body = this;
                           }
                        }
                        loop0:
                        while(true)
                        {
                           if(_loc2_.§^"'§ <= 0)
                           {
                              while(true)
                              {
                                 §§push(this.m_world);
                                 §§goto(addr153);
                              }
                              addr150:
                           }
                           while(true)
                           {
                              this.§&!g§();
                              continue loop0;
                              §§goto(addr169);
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr150);
                     }
                  }
                  §§goto(addr86);
               }
               addr153:
               do
               {
                  §§push(this.m_world.§1!h§);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(§§pop() | b2World.§&i§);
                  }
                  §§pop().§1!h§ = §§pop();
                  if(_loc7_)
                  {
                     continue loop0;
                  }
               }
               while(_loc7_ && param1);
               
               return _loc2_;
            }
            §§goto(addr54);
         }
         addr33:
         return null;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(_loc5_ || _loc3_)
         {
            _loc3_.shape = param1;
            do
            {
               _loc3_.density = param2;
            }
            while(_loc4_);
            
         }
         return this.CreateFixture(_loc3_);
      }
      
      public function §'!T§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§5!u§ = null;
         if(_loc12_ || _loc2_)
         {
            if(this.m_world.§8=§() == true)
            {
               if(!_loc13_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§%!y§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§6!c§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            while(!_loc3_)
            {
               this.§%!y§ = param1.§6!c§;
               if(!(_loc12_ || _loc2_))
               {
                  break loop0;
               }
               if(!(_loc12_ || param1))
               {
                  break;
               }
               if(_loc13_)
               {
                  continue;
               }
               loop5:
               while(true)
               {
                  _loc4_ = true;
                  if(_loc12_)
                  {
                     if(!_loc13_)
                     {
                        if(true)
                        {
                           break loop0;
                        }
                        continue;
                     }
                     addr97:
                     while(true)
                     {
                        continue loop5;
                     }
                  }
                  break loop0;
               }
            }
            _loc3_.§6!c§ = param1.§6!c§;
            §§goto(addr97);
         }
         var _loc5_:b2ContactEdge = this.§ if§;
         if(!(_loc13_ && param1))
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§@"6§;
               _loc5_ = _loc5_.next;
               _loc7_ = _loc6_.§6!'§();
               _loc8_ = _loc6_.§]O§();
               if(_loc13_)
               {
                  continue;
               }
               §§push(param1 == _loc7_);
               if(!(_loc13_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc12_)
                     {
                        addr164:
                        §§pop();
                        if(!(_loc12_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(param1 == _loc8_);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc13_)
                     {
                        this.m_world.§`Q§.§7!d§(_loc6_);
                     }
                  }
                  continue;
               }
               §§goto(addr164);
            }
            if(_loc12_)
            {
               if(this.§1!h§ & b2internal::5! )
               {
                  if(!(_loc13_ && _loc3_))
                  {
                     _loc9_ = this.m_world.§`Q§.§"V§;
                     if(_loc12_)
                     {
                        param1.§4d§(_loc9_);
                     }
                  }
                  §§goto(addr271);
               }
               param1.§7!d§();
               if(_loc12_ || param1)
               {
                  addr219:
                  param1.m_body = null;
                  if(_loc12_ || _loc3_)
                  {
                     param1.§6!c§ = null;
                     if(_loc12_)
                     {
                        var _loc10_:*;
                        §§push((_loc10_ = this).§3s§);
                        if(_loc12_ || _loc3_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc11_:* = §§pop();
                        if(_loc12_)
                        {
                           _loc10_.§3s§ = _loc11_;
                        }
                        if(_loc12_ || _loc3_)
                        {
                           §§goto(addr271);
                        }
                     }
                  }
               }
               §§goto(addr271);
            }
            §§goto(addr219);
         }
         addr271:
         this.§&!g§();
      }
      
      public function §@0§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(!_loc8_)
         {
            if(this.m_world.§8=§() == true)
            {
               if(!_loc8_)
               {
                  §§goto(addr70);
               }
               else
               {
                  while(true)
                  {
                     addr40:
                     if(_loc8_ && this)
                     {
                        continue;
                     }
                     if(false)
                     {
                        while(true)
                        {
                           §§push(this.m_xf);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop().R);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§pop().Set(param2);
                                 while(true)
                                 {
                                    §§push(this.m_xf);
                                    if(!_loc8_)
                                    {
                                       if(_loc8_ && param1)
                                       {
                                          continue loop2;
                                       }
                                       §§pop().position.SetV(param1);
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr40);
                                    }
                                    break;
                                 }
                                 addr74:
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
                              while(true)
                              {
                                 §§push(§§pop().c);
                                 addr309:
                                 while(true)
                                 {
                                    §§push(_loc4_.col1);
                                    addr311:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr312:
                                       while(true)
                                       {
                                          §§push(_loc5_.x);
                                          addr314:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr315:
                                             while(true)
                                             {
                                                §§push(_loc4_.col2);
                                                addr317:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr318:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.y);
                                                      addr320:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr321:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr322:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
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
                              addr308:
                           }
                           loop15:
                           while(true)
                           {
                              §§push(this.m_sweep);
                              loop16:
                              while(true)
                              {
                                 §§push(§§pop().c);
                                 loop17:
                                 while(!_loc8_)
                                 {
                                    §§push(_loc4_.col1);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop().y);
                                       loop18:
                                       for(; !_loc8_; if(!(_loc9_ || param2))
                                       {
                                          continue;
                                       },§§pop().y = §§pop(),if(_loc9_)
                                       {
                                          §§push(this.m_sweep);
                                          if(_loc9_)
                                          {
                                             if(_loc9_ || _loc3_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue loop16;
                                                }
                                                if(_loc9_)
                                                {
                                                   §§pop().c0.SetV(this.m_sweep.c);
                                                   if(_loc9_ || param1)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr117);
                                                         }
                                                         §§goto(addr326);
                                                         §§push(this.m_sweep);
                                                      }
                                                      §§goto(addr305);
                                                   }
                                                   §§goto(addr335);
                                                }
                                                §§goto(addr308);
                                             }
                                             §§goto(addr120);
                                          }
                                          §§goto(addr326);
                                       },§§goto(addr335))
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(_loc5_.x);
                                             if(!_loc8_)
                                             {
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc8_ && this))
                                                   {
                                                      §§push(_loc4_.col2);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop().y);
                                                         loop31:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.y);
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop32:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr297:
                                                                  loop19:
                                                                  while(_loc9_ || this)
                                                                  {
                                                                     §§pop().y = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_sweep);
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().c);
                                                                           addr207:
                                                                           while(!_loc8_)
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 addr212:
                                                                                 addr326:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       §§push(this.m_xf);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().position);
                                                                                          addr223:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr224:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param2))
                                                                                                      {
                                                                                                         addr241:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  break;
                                                                                                                  addr117:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.m_sweep);
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            addr335:
                                                                                                            addr335:
                                                                                                            var _loc6_:§5!u§ = this.m_world.§`Q§.§"V§;
                                                                                                            _loc3_ = this.§%!y§;
                                                                                                            addr365:
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               _loc3_.§3g§(_loc6_,this.m_xf,this.m_xf);
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  _loc3_ = _loc3_.§6!c§;
                                                                                                                  §§goto(addr365);
                                                                                                               }
                                                                                                               §§goto(addr388);
                                                                                                            }
                                                                                                            if(!(_loc8_ && param2))
                                                                                                            {
                                                                                                               this.m_world.§`Q§.§+!`§();
                                                                                                            }
                                                                                                            addr173:
                                                                                                            addr388:
                                                                                                            return;
                                                                                                            if(_loc9_ || param1)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                         addr241:
                                                                                                      }
                                                                                                      §§goto(addr314);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop32;
                                                                                             }
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                       }
                                                                                       addr222:
                                                                                    }
                                                                                    §§goto(addr241);
                                                                                 }
                                                                                 §§pop().a0 = this.m_sweep.a = param2;
                                                                                 addr130:
                                                                                 §§goto(addr335);
                                                                                 §§push(this.m_sweep);
                                                                                 if(_loc8_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(§§pop().c);
                                                                                 if(!(_loc8_ && param2))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(this.m_xf);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(§§pop().position);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                if(!(_loc9_ || _loc3_))
                                                                                                {
                                                                                                   continue loop31;
                                                                                                }
                                                                                                §§goto(addr173);
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr241);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr223);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr222);
                                                                                       }
                                                                                       §§goto(addr223);
                                                                                    }
                                                                                    §§goto(addr173);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr212);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr322);
                                                               }
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         addr286:
                                                      }
                                                      §§goto(addr317);
                                                   }
                                                   §§goto(addr297);
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr286);
                                          }
                                          else
                                          {
                                             §§goto(addr312);
                                          }
                                       }
                                       §§goto(addr315);
                                    }
                                    §§goto(addr311);
                                 }
                                 §§goto(addr309);
                              }
                           }
                        }
                        addr49:
                     }
                     §§goto(addr74);
                     §§push(this.m_xf);
                  }
               }
            }
            §§goto(addr49);
         }
         addr70:
      }
      
      public function §#n§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§@0§(param1.position,param1.GetAngle());
         }
      }
      
      public function §%X§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§@0§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@0§(this.GetPosition(),param1);
         }
      }
      
      public function §#!Y§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §6_§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§5Q§ != b2_staticBody)
            {
               do
               {
                  this.§;!A§.SetV(param1);
               }
               while(!_loc2_);
               
               if(!(_loc3_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§;!A§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§5Q§ == b2_staticBody)
            {
               if(!_loc2_)
               {
                  return;
               }
               while(true)
               {
               }
               addr63:
            }
            while(true)
            {
               this.m_angularVelocity = param1;
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr63);
            }
         }
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §9!;§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(!_loc3_)
         {
            _loc1_.type = this.§4!v§();
            loop0:
            while(true)
            {
               _loc1_.§`",§ = (this.§1!h§ & b2internal::5"4) == b2internal::5"4;
               loop1:
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  while(true)
                  {
                     _loc1_.§7e§ = this.§?I§;
                     loop9:
                     for(; _loc2_ || this; if(_loc2_ || _loc3_)
                     {
                        return _loc1_;
                     })
                     {
                        _loc1_.position = this.GetPosition();
                        loop10:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    _loc1_.§0!z§ = (this.§1!h§ & b2internal::?l) == b2internal::?l;
                                    break loop10;
                                 }
                                 addr134:
                              }
                              break;
                           }
                           addr81:
                           loop8:
                           while(true)
                           {
                              if(!(_loc3_ && this))
                              {
                                 _loc1_.§%!7§.SetV(this.GetLinearVelocity());
                                 continue loop9;
                              }
                              addr156:
                              while(true)
                              {
                                 _loc1_.§9!A§ = this.m_angularVelocity;
                                 addr150:
                                 while(true)
                                 {
                                    _loc1_.§3"2§ = (this.§1!h§ & b2internal::5h) == b2internal::5h;
                                    addr144:
                                    while(true)
                                    {
                                       _loc1_.§5!J§ = (this.§1!h§ & b2internal::#!<) == b2internal::#!<;
                                       break loop10;
                                    }
                                 }
                                 continue loop8;
                              }
                           }
                           addr61:
                           §§goto(addr134);
                           _loc1_.userData = this.GetUserData();
                           if(_loc2_)
                           {
                              continue loop9;
                           }
                        }
                        while(true)
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr144);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr156);
      }
      
      public function §@!C§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(this.§5Q§ != b2_dynamicBody)
            {
               if(_loc3_)
               {
                  return;
               }
               while(true)
               {
                  addr112:
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  return;
                  addr119:
               }
               addr194:
            }
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  while(true)
                  {
                     this.SetAwake(true);
                     addr186:
                     while(true)
                     {
                     }
                     loop11:
                     while(_loc3_ || param2)
                     {
                        §§push(this);
                        §§push(this.§?!u§);
                        if(!_loc4_)
                        {
                           §§push(param2.x);
                           if(_loc3_ || param1)
                           {
                              §§push(this.m_sweep.c.x);
                              if(_loc3_ || param2)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc3_)
                                 {
                                    §§push(param1.y);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && param1))
                                       {
                                          addr74:
                                          §§push(param2.y);
                                          if(_loc3_)
                                          {
                                             §§push(this.m_sweep.c.y);
                                             if(!_loc4_)
                                             {
                                                addr105:
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc4_ && param2))
                                                {
                                                   §§push(param1.x);
                                                }
                                                §§pop().§?!u§ = §§pop() + (§§pop() - §§pop());
                                                if(_loc4_)
                                                {
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   §§goto(addr112);
                                                }
                                                else
                                                {
                                                   loop10:
                                                   while(!_loc4_)
                                                   {
                                                      addr167:
                                                      §§push(this.§6",§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.§6",§);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(param1.y);
                                                               if(_loc3_)
                                                               {
                                                                  addr137:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        continue loop11;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.x);
                                                                        addr163:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                     addr161:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr160:
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr167);
                                                         }
                                                         addr158:
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr186);
                                                }
                                             }
                                             §§goto(addr105);
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§goto(addr105);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr105);
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr158);
                  §§goto(addr186);
               }
               §§goto(addr194);
            }
         }
         §§goto(addr119);
      }
      
      public function §3!T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§5Q§ == b2_dynamicBody)
            {
               loop0:
               do
               {
                  if(this.IsAwake() == false)
                  {
                     loop1:
                     while(_loc2_ || this)
                     {
                        this.SetAwake(true);
                        loop2:
                        while(true)
                        {
                           addr28:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§?!u§);
                              if(_loc2_)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§?!u§ = §§pop();
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr28);
               }
               while(_loc3_ && _loc2_);
               
               return;
               addr63:
            }
            addr94:
            return;
         }
         §§goto(addr63);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§5Q§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(!(_loc3_ && param2))
                     {
                        while(true)
                        {
                           this.SetAwake(true);
                           addr241:
                           while(true)
                           {
                           }
                        }
                     }
                     addr246:
                     return;
                     addr221:
                  }
                  while(true)
                  {
                     §§push(this.§;!A§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§;!A§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop5:
                           while(true)
                           {
                              §§push(this.§ c§);
                              loop6:
                              while(true)
                              {
                                 §§push(param1.x);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          while(true)
                                          {
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                break loop9;
                                             }
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(this.§;!A§);
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(this.§;!A§);
                                                if(_loc4_ || this)
                                                {
                                                   §§push(§§pop().y);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this.§ c§);
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(param1.y);
                                                         if(_loc3_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§pop().y = §§pop();
                                                         for(; _loc4_ || param2; §§pop().m_angularVelocity = §§pop(),if(!_loc3_)
                                                         {
                                                            return;
                                                         })
                                                         {
                                                            if(_loc4_ || param2)
                                                            {
                                                               §§push(this);
                                                               §§push(this.m_angularVelocity);
                                                               if(!_loc4_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(this.§"k§);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(param2.x);
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     §§push(this.m_sweep.c.x);
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           addr62:
                                                                           §§push(param1.y);
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(param2.y);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    addr88:
                                                                                    §§push(this.m_sweep.c.y);
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                       addr110:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          addr107:
                                                                                          §§push(param1.x);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                              }
                                                                              §§goto(addr110);
                                                                           }
                                                                           §§goto(addr107);
                                                                        }
                                                                        §§goto(addr110);
                                                                     }
                                                                     §§goto(addr88);
                                                                  }
                                                                  §§goto(addr62);
                                                               }
                                                               §§goto(addr110);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr241);
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr221);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr246);
         }
         §§goto(addr228);
      }
      
      public function § "&§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(!(_loc16_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§#!Y§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§9!;§());
         var _loc8_:b2Fixture = _loc5_.§%!y§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc17_ || _loc2_)
               {
                  break;
               }
               §§goto(addr221);
            }
            if(!param1(_loc8_))
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§6!c§;
               continue;
            }
            if(!(_loc17_ || this))
            {
               break;
            }
            _loc13_ = _loc8_.§6!c§;
            if(!(_loc16_ && this))
            {
               if(_loc7_)
               {
                  if(!(_loc16_ && param1))
                  {
                     _loc7_.§6!c§ = _loc13_;
                     if(_loc17_)
                     {
                        addr107:
                        var _loc14_:*;
                        §§push((_loc14_ = _loc5_).§3s§);
                        if(!_loc16_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc15_:* = §§pop();
                        if(!(_loc16_ && _loc2_))
                        {
                           _loc14_.§3s§ = _loc15_;
                        }
                        if(_loc17_ || param1)
                        {
                           _loc8_.§6!c§ = _loc6_.§%!y§;
                           if(!(_loc16_ && _loc3_))
                           {
                              _loc6_.§%!y§ = _loc8_;
                              if(_loc17_ || param1)
                              {
                                 addr165:
                                 §§push((_loc14_ = _loc6_).§3s§);
                                 if(_loc17_ || this)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc15_ = §§pop();
                                 if(_loc17_ || param1)
                                 {
                                    _loc14_.§3s§ = _loc15_;
                                 }
                                 if(_loc17_)
                                 {
                                    addr192:
                                    _loc8_.m_body = _loc6_;
                                 }
                              }
                              §§goto(addr192);
                           }
                           _loc8_ = _loc13_;
                           continue;
                        }
                        addr96:
                     }
                  }
                  §§goto(addr165);
               }
               else
               {
                  _loc5_.§%!y§ = _loc13_;
                  if(_loc17_ || _loc2_)
                  {
                     §§goto(addr107);
                  }
               }
               §§goto(addr192);
            }
            §§goto(addr96);
         }
         _loc5_.§&!g§();
         if(!_loc16_)
         {
            _loc6_.§&!g§();
         }
         addr221:
         var _loc9_:b2Vec2 = _loc5_.§#!Y§();
         var _loc10_:b2Vec2 = _loc6_.§#!Y§();
         var _loc11_:b2Vec2 = b2Math.§%!5§(_loc2_,b2Math.§0!p§(_loc3_,b2Math.§1"5§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§%!5§(_loc2_,b2Math.§0!p§(_loc3_,b2Math.§1"5§(_loc10_,_loc4_)));
         if(_loc17_)
         {
            _loc5_.SetLinearVelocity(_loc11_);
            loop1:
            do
            {
               _loc6_.SetLinearVelocity(_loc12_);
               while(true)
               {
                  _loc5_.SetAngularVelocity(_loc3_);
                  while(_loc17_ || param1)
                  {
                     _loc6_.SetAngularVelocity(_loc3_);
                     do
                     {
                        _loc5_.§+!c§();
                        do
                        {
                           _loc6_.§+!c§();
                        }
                        while(!(_loc17_ || _loc3_));
                        
                     }
                     while(_loc16_);
                     
                     if(_loc17_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(_loc16_ && this);
            
         }
         return _loc6_;
      }
      
      public function §4!x§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§%!y§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§6!c§;
            if(_loc14_)
            {
               continue;
            }
            var _loc12_:*;
            §§push((_loc12_ = param1).§3s§);
            if(!(_loc14_ && param1))
            {
               §§push(§§pop() - 1);
            }
            var _loc13_:* = §§pop();
            if(_loc15_)
            {
               _loc12_.§3s§ = _loc13_;
            }
            if(_loc15_ || _loc3_)
            {
               _loc2_.§6!c§ = this.§%!y§;
               if(_loc15_)
               {
                  this.§%!y§ = _loc2_;
                  if(_loc14_)
                  {
                  }
                  addr116:
                  _loc2_.m_body = _loc4_;
                  continue;
               }
               §§push((_loc12_ = this).§3s§);
               if(!(_loc14_ && _loc3_))
               {
                  §§push(§§pop() + 1);
               }
               _loc13_ = §§pop();
               if(_loc15_ || _loc3_)
               {
                  _loc12_.§3s§ = _loc13_;
               }
               if(_loc14_)
               {
                  continue;
               }
            }
            §§goto(addr116);
         }
         if(!_loc14_)
         {
            _loc3_.§3s§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§#!Y§();
         var _loc6_:b2Vec2 = _loc4_.§#!Y§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(!(_loc14_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(_loc15_)
         {
            _loc3_.§&!g§();
            do
            {
               this.§+!c§();
            }
            while(_loc14_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§'q§;
      }
      
      public function §?9§() : Number
      {
         return this.§&S§;
      }
      
      public function §&D§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.§#!3§ = this.§'q§;
            while(true)
            {
               param1.I = this.§&S§;
               loop1:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     param1.center.SetV(this.m_sweep.localCenter);
                     if(_loc2_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §4!W§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(b2Settings);
            §§push(this.m_world.§8=§());
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§8=§());
               loop1:
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        §§push(this.§5Q§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() == b2_dynamicBody)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§ c§ = 0;
                                 while(!_loc4_)
                                 {
                                    this.§&S§ = 0;
                                    loop7:
                                    for(; _loc3_ || param1; if(_loc3_ || this)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§1!h§ & b2internal::5h);
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() == 0);
                                          if(!_loc4_)
                                          {
                                             §§goto(addr60);
                                          }
                                          §§goto(addr155);
                                       }
                                       continue loop4;
                                       addr49:
                                    })
                                    {
                                       this.§"k§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          this.§'q§ = param1.§#!3§;
                                          addr204:
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§'q§);
                                             while(true)
                                             {
                                                §§push(0);
                                                addr194:
                                                addr189:
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§'q§ = 1;
                                                         addr198:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr195:
                                                   }
                                                   addr173:
                                                   while(true)
                                                   {
                                                      this.§ c§ = 1 / this.§'q§;
                                                      continue loop9;
                                                   }
                                                }
                                                §§push(param1.I);
                                                if(!_loc3_)
                                                {
                                                   continue;
                                                }
                                                §§push(0);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc3_ || this))
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(!_loc4_)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop1;
                                                         addr155:
                                                      }
                                                      else
                                                      {
                                                         addr276:
                                                      }
                                                      addr67:
                                                      while(§§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(_loc4_ && param1)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this);
                                                            §§push(param1.I);
                                                            if(_loc3_)
                                                            {
                                                               §§push(this.§'q§);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(param1.center.x);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(param1.center);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr111:
                                                                              §§push(param1.center.y);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr118:
                                                                                 §§push(§§pop() + §§pop() * param1.center.y);
                                                                              }
                                                                              §§goto(addr118);
                                                                           }
                                                                           addr121:
                                                                           §§pop().§&S§ = §§pop() - §§pop() * §§pop();
                                                                           addr120:
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr118);
                                                                     }
                                                                  }
                                                                  §§goto(addr111);
                                                               }
                                                               §§goto(addr120);
                                                            }
                                                            §§goto(addr121);
                                                         }
                                                      }
                                                      var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                      if(_loc3_)
                                                      {
                                                         addr462:
                                                         this.m_sweep.localCenter.SetV(param1.center);
                                                      }
                                                      this.m_sweep.c0.SetV(b2Math.§#@§(this.m_xf,this.m_sweep.localCenter));
                                                      addr466:
                                                      addr459:
                                                      §§push(this.m_sweep);
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§pop().c.SetV(this.m_sweep.c0);
                                                            addr394:
                                                            addr396:
                                                            addr407:
                                                            addr405:
                                                            addr406:
                                                            addr399:
                                                            addr398:
                                                            addr408:
                                                            addr393:
                                                            addr391:
                                                            §§push(this.§;!A§);
                                                            §§push(this.§;!A§.x);
                                                            §§push(this.m_angularVelocity);
                                                            §§push(this.m_sweep.c.y);
                                                            if(_loc3_)
                                                            {
                                                               addr404:
                                                               §§push(§§pop() - _loc2_.y);
                                                            }
                                                            §§pop().x = §§pop() + §§pop() * -§§pop();
                                                            addr409:
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  §§push(this.§;!A§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(this.§;!A§);
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              §§push(this.m_angularVelocity);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(this.m_sweep);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop().c);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          §§push(_loc2_.x);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc3_ || param1)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr354:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc3_ || _loc3_)
                                                                                                         {
                                                                                                            addr365:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc3_ || this))
                                                                                                                  {
                                                                                                                     §§goto(addr466);
                                                                                                                  }
                                                                                                                  return;
                                                                                                               }
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                            §§goto(addr394);
                                                                                                         }
                                                                                                         §§goto(addr396);
                                                                                                      }
                                                                                                      §§goto(addr407);
                                                                                                   }
                                                                                                   §§goto(addr405);
                                                                                                }
                                                                                                §§goto(addr406);
                                                                                             }
                                                                                             §§goto(addr354);
                                                                                          }
                                                                                          §§goto(addr404);
                                                                                       }
                                                                                       §§goto(addr354);
                                                                                    }
                                                                                    §§goto(addr399);
                                                                                 }
                                                                                 §§goto(addr398);
                                                                              }
                                                                              §§goto(addr354);
                                                                           }
                                                                           §§goto(addr408);
                                                                        }
                                                                        §§goto(addr365);
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                                  §§goto(addr391);
                                                               }
                                                               §§goto(addr459);
                                                            }
                                                            addr436:
                                                            §§goto(addr436);
                                                         }
                                                         §§goto(addr462);
                                                      }
                                                      addr440:
                                                      §§goto(addr440);
                                                      addr60:
                                                      §§goto(addr198);
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr67);
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr194);
                                                §§goto(addr173);
                                             }
                                          }
                                       }
                                    }
                                    continue loop5;
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       §§goto(addr49);
                                    }
                                    §§goto(addr276);
                                 }
                              }
                           }
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr204);
      }
      
      public function §&!g§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2MassData = null;
         if(!_loc6_)
         {
            this.§'q§ = 0;
            while(true)
            {
               this.§ c§ = 0;
               loop1:
               while(!_loc6_)
               {
                  this.§&S§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§"k§ = 0;
                     loop3:
                     while(true)
                     {
                        this.m_sweep.localCenter.§>![§();
                        addr89:
                        while(_loc5_)
                        {
                        }
                        continue loop2;
                        loop10:
                        while(true)
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(this.§5Q§);
                              if(!_loc6_)
                              {
                                 §§push(b2_kinematicBody);
                                 if(!_loc6_)
                                 {
                                    addr30:
                                    §§push(§§pop() == §§pop());
                                    if(_loc6_ && this)
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   return;
                                                }
                                                continue loop1;
                                             }
                                             continue loop10;
                                          }
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§5Q§);
                                                break loop10;
                                             }
                                             addr61:
                                          }
                                       }
                                       var _loc1_:b2Vec2 = b2Vec2.§7!R§(0,0);
                                       var _loc2_:b2Fixture = this.§%!y§;
                                       addr234:
                                       if(_loc2_)
                                       {
                                          §§push(_loc2_.§^"'§);
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§push(0);
                                             if(_loc5_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      addr230:
                                                      _loc2_ = _loc2_.§6!c§;
                                                      §§goto(addr234);
                                                   }
                                                   addr253:
                                                   this.§ c§ = 1 / this.§'q§;
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§push(_loc1_);
                                                      §§push(_loc1_.x);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() * this.§ c§);
                                                      }
                                                      §§pop().x = §§pop();
                                                      §§push(_loc1_);
                                                      §§push(_loc1_.y);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * this.§ c§);
                                                      }
                                                      §§pop().y = §§pop();
                                                      addr459:
                                                      addr449:
                                                      §§push(this.§&S§ > 0);
                                                      if(this.§&S§ > 0)
                                                      {
                                                         addr421:
                                                         §§pop();
                                                         addr422:
                                                         §§push((this.§1!h§ & b2internal::5h) == 0);
                                                         if(!_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addr349:
                                                               if(§§pop())
                                                               {
                                                                  addr351:
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§&S§);
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        §§push(this.§'q§);
                                                                        if(!(_loc6_ && _loc1_))
                                                                        {
                                                                           §§push(_loc1_.x);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(_loc1_.x);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr402:
                                                                                 addr403:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    addr388:
                                                                                    §§push(_loc1_.y);
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       addr397:
                                                                                       §§push(§§pop() * _loc1_.y);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§pop().§&S§ = §§pop() - §§pop() * §§pop();
                                                                                 addr404:
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§&S§);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() * this.§3X§);
                                                                                       }
                                                                                       §§pop().§&S§ = §§pop();
                                                                                       addr325:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          b2Settings.b2Assert(this.§&S§ > 0);
                                                                                          addr307:
                                                                                          if(!(_loc6_ && _loc2_))
                                                                                          {
                                                                                             this.§"k§ = 1 / this.§&S§;
                                                                                             addr295:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§goto(addr422);
                                                                                                }
                                                                                                addr460:
                                                                                                var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr666:
                                                                                                   this.m_sweep.localCenter.SetV(_loc1_);
                                                                                                   addr669:
                                                                                                   §§push(this.m_sweep);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§pop().c0.SetV(b2Math.§#@§(this.m_xf,this.m_sweep.localCenter));
                                                                                                      addr663:
                                                                                                      §§push(this.m_sweep);
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         §§pop().c.SetV(this.m_sweep.c0);
                                                                                                         addr631:
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            addr605:
                                                                                                            addr583:
                                                                                                            addr581:
                                                                                                            §§push(this.§;!A§);
                                                                                                            §§push(this.§;!A§.x);
                                                                                                            if(_loc5_ || _loc2_)
                                                                                                            {
                                                                                                               addr603:
                                                                                                               §§push(this.m_angularVelocity);
                                                                                                               §§push(this.m_sweep.c.y);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr601:
                                                                                                                  §§push(§§pop() - _loc3_.y);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop() * -§§pop());
                                                                                                            }
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr606:
                                                                                                            if(_loc5_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(this.§;!A§);
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(this.§;!A§);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc5_ || this)
                                                                                                                        {
                                                                                                                           §§push(this.m_angularVelocity);
                                                                                                                           if(!(_loc6_ && this))
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(this.m_sweep);
                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().c);
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.x);
                                                                                                                                                if(!(_loc6_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr560:
                                                                                                                                                         §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                         if(!(_loc6_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            if(_loc6_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr606);
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                            addr577:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr605);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr603);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr560);
                                                                                                                                                }
                                                                                                                                                §§goto(addr601);
                                                                                                                                             }
                                                                                                                                             §§goto(addr603);
                                                                                                                                          }
                                                                                                                                          §§goto(addr560);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr603);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr560);
                                                                                                                     }
                                                                                                                     §§goto(addr583);
                                                                                                                  }
                                                                                                                  §§goto(addr581);
                                                                                                               }
                                                                                                               §§goto(addr669);
                                                                                                            }
                                                                                                            §§goto(addr631);
                                                                                                         }
                                                                                                         §§goto(addr663);
                                                                                                      }
                                                                                                      §§goto(addr669);
                                                                                                   }
                                                                                                   §§goto(addr666);
                                                                                                }
                                                                                                §§goto(addr577);
                                                                                                addr275:
                                                                                             }
                                                                                             §§goto(addr404);
                                                                                          }
                                                                                          §§goto(addr325);
                                                                                          addr327:
                                                                                       }
                                                                                       §§goto(addr459);
                                                                                    }
                                                                                    §§goto(addr449);
                                                                                 }
                                                                                 this.§ c§ = 1;
                                                                                 §§goto(addr459);
                                                                                 addr433:
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr388);
                                                                        }
                                                                        §§goto(addr402);
                                                                     }
                                                                     §§goto(addr403);
                                                                  }
                                                                  §§goto(addr402);
                                                               }
                                                               this.§&S§ = 0;
                                                               addr281:
                                                               if(!_loc6_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        this.§"k§ = 0;
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr281);
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr275);
                                                                        }
                                                                        §§goto(addr460);
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               §§goto(addr295);
                                                            }
                                                            §§goto(addr459);
                                                         }
                                                         §§goto(addr421);
                                                      }
                                                      §§goto(addr349);
                                                   }
                                                   §§goto(addr402);
                                                }
                                                _loc4_ = _loc2_.§&D§();
                                                if(_loc5_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§'q§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() + _loc4_.§#!3§);
                                                   }
                                                   §§pop().§'q§ = §§pop();
                                                   §§push(_loc1_);
                                                   §§push(_loc1_.x);
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc4_.center.x);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() * _loc4_.§#!3§);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().x = §§pop();
                                                   addr229:
                                                }
                                                addr172:
                                                §§push(_loc1_);
                                                §§push(_loc1_.y);
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc4_.center.y);
                                                   if(!(_loc6_ && _loc1_))
                                                   {
                                                      §§push(§§pop() * _loc4_.§#!3§);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().y = §§pop();
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§&S§);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + _loc4_.I);
                                                      }
                                                      §§pop().§&S§ = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr172);
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   §§goto(addr229);
                                                }
                                                addr219:
                                                §§goto(addr219);
                                             }
                                             addr250:
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr253);
                                                }
                                             }
                                             else
                                             {
                                                this.§'q§ = 1;
                                             }
                                             §§goto(addr433);
                                          }
                                          addr247:
                                          §§push(0);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr250);
                                          }
                                          §§goto(addr459);
                                       }
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(this.§'q§);
                                          if(_loc5_)
                                          {
                                             §§goto(addr247);
                                          }
                                          §§goto(addr459);
                                       }
                                       §§goto(addr327);
                                       §§goto(addr30);
                                    }
                                    §§goto(addr89);
                                    addr38:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc6_ && _loc1_)
                                    {
                                       continue loop10;
                                    }
                                    if(!§§pop())
                                    {
                                       continue loop10;
                                    }
                                    §§goto(addr38);
                                 }
                                 addr65:
                              }
                              break;
                           }
                           continue loop3;
                        }
                        while(true)
                        {
                           §§goto(addr65);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr61);
         }
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc5_ || this)
         {
            §§push(param1.x);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr45:
                  §§push(_loc2_.col2.x);
                  if(_loc5_ || param1)
                  {
                     §§push(param1.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           addr68:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc4_ && param1))
                           {
                              addr88:
                              §§push(param1.x);
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc4_ && this))
                                 {
                                    addr105:
                                    §§push(_loc2_.col2.y);
                                    if(_loc5_)
                                    {
                                       addr113:
                                       §§push(§§pop() + §§pop() * param1.y);
                                    }
                                    §§goto(addr113);
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(_loc5_ || this)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
                                    do
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc3_.y);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() + this.m_xf.position.y);
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    while(_loc4_ && _loc3_);
                                    
                                 }
                                 return _loc3_;
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr105);
               }
               §§goto(addr68);
            }
            §§goto(addr88);
         }
         §§goto(addr45);
      }
      
      public function §>!O§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§-!u§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§for §(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`!C§(this.m_xf.R,param1);
      }
      
      public function §%!#§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§;!A§.x);
         if(_loc2_ || _loc2_)
         {
            §§push(this.m_angularVelocity);
            if(_loc2_ || this)
            {
               §§push(param1.y);
               if(_loc2_ || _loc3_)
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc2_ || _loc2_)
                        {
                           addr82:
                           §§push(§§pop() - §§pop());
                           §§push(this.§;!A§.y);
                           if(_loc2_)
                           {
                              §§push(this.m_angularVelocity);
                              if(!_loc3_)
                              {
                                 addr92:
                                 §§push(param1.x);
                                 if(!(_loc3_ && this))
                                 {
                                    addr116:
                                    §§push(§§pop() + §§pop() * (§§pop() - this.m_sweep.c.x));
                                 }
                              }
                              §§goto(addr116);
                           }
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr116);
            }
         }
         §§goto(addr82);
      }
      
      public function § case§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!_loc5_)
         {
            §§push(param1.x);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || this)
               {
                  addr44:
                  §§push(_loc2_.col2.x);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(param1.y);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr67:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_)
                           {
                              addr72:
                              §§push(param1.x);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                    addr88:
                                    §§push(_loc2_.col2.y);
                                    if(!_loc5_)
                                    {
                                       addr84:
                                       §§push(§§pop() * param1.y);
                                    }
                                    var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                    if(!_loc5_)
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc3_.x);
                                       if(!(_loc5_ && _loc2_))
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
                                       while(_loc5_ && _loc3_);
                                       
                                    }
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(this.§;!A§.x);
                                    if(!_loc5_)
                                    {
                                       §§push(this.m_angularVelocity);
                                       if(!_loc5_)
                                       {
                                          §§push(_loc3_.y);
                                          if(_loc4_)
                                          {
                                             §§push(this.m_sweep.c.y);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc4_ || this)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc4_ || param1)
                                                   {
                                                      addr142:
                                                      §§push(§§pop() - §§pop());
                                                      §§push(this.§;!A§.y);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   §§push(this.m_angularVelocity);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      addr161:
                                                      §§push(_loc3_.x);
                                                      if(!_loc5_)
                                                      {
                                                         addr170:
                                                         §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   addr172:
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr88);
                              }
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr88);
               }
               §§goto(addr67);
            }
            §§goto(addr72);
         }
         §§goto(addr44);
      }
      
      public function §"t§() : Number
      {
         return this.§!4§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!4§ = param1;
         }
      }
      
      public function §""1§() : Number
      {
         return this.§?I§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§?I§ = param1;
         }
      }
      
      public function §@!@§() : Number
      {
         return this.§@?§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@?§ = param1;
         }
      }
      
      public function §@" §(param1:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§5Q§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr114:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     addr106:
                     while(true)
                     {
                        this.§5Q§ = param1;
                        addr110:
                        while(true)
                        {
                           this.§&!g§();
                           continue loop0;
                        }
                     }
                     addr106:
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §4!v§() : uint
      {
         return this.§5Q§;
      }
      
      public function §;Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§1!h§ &= ~b2internal::#!<;
               if(_loc3_ || param1)
               {
                  if(_loc2_)
                  {
                     addr66:
                     this.§1!h§ |= b2internal::#!<;
                     addr72:
                  }
                  return;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr66);
      }
      
      public function §^F§() : Boolean
      {
         return (this.§1!h§ & b2internal::#!<) == b2internal::#!<;
      }
      
      public function §3c§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  this.§1!h§ |= b2internal::5"4;
               }
            }
            else
            {
               this.§1!h§ &= ~b2internal::5"4;
               do
               {
                  this.SetAwake(true);
               }
               while(!(_loc2_ || this));
               
               if(!_loc2_)
               {
                  addr83:
               }
               return;
               addr62:
            }
            §§goto(addr83);
         }
         §§goto(addr62);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§1!h§ &= ~b2internal::?l;
               loop0:
               for(; !(_loc2_ && this); loop3:
               while(_loc3_ || _loc3_)
               {
                  this.§6",§.§>![§();
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop3;
                     }
                     if(!_loc2_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        §§goto(addr80);
                     }
                  }
                  addr20:
                  return;
               })
               {
                  this.§9!I§ = 0;
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§;!A§.§>![§();
                     while(true)
                     {
                        this.m_angularVelocity = 0;
                        continue loop0;
                     }
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr20);
                     }
                  }
                  §§goto(addr20);
               }
               this.§9!I§ = 0;
               §§goto(addr115);
               addr134:
            }
         }
         this.§1!h§ |= b2internal::?l;
         §§goto(addr134);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§1!h§ & b2internal::?l) == b2internal::?l;
      }
      
      public function §+!x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§1!h§ &= ~b2internal::5h;
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§&!g§();
                     if(_loc3_)
                     {
                        break;
                     }
                     if(_loc2_ || this)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           return;
                        }
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               this.§1!h§ |= b2internal::5h;
            }
         }
         §§goto(addr82);
      }
      
      public function §;H§() : Boolean
      {
         return (this.§1!h§ & b2internal::5h) == b2internal::5h;
      }
      
      public function §=C§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§5!u§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!(_loc7_ && param1))
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() == this.§>!-§())
               {
                  if(!_loc7_)
                  {
                     return;
                  }
                  addr50:
                  this.§1!h§ |= b2internal::5! ;
                  addr56:
                  _loc2_ = this.m_world.§`Q§.§"V§;
                  _loc3_ = this.§%!y§;
                  while(_loc3_)
                  {
                     _loc3_.§=!b§(_loc2_,this.m_xf);
                     if(_loc7_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§6!c§;
                  }
               }
               else
               {
                  addr47:
                  if(param1)
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr50);
                     }
                     §§goto(addr56);
                  }
                  else
                  {
                     this.§1!h§ &= ~b2internal::5! ;
                     _loc2_ = this.m_world.§`Q§.§"V§;
                     _loc3_ = this.§%!y§;
                     if(_loc6_)
                     {
                        loop0:
                        while(_loc3_)
                        {
                           _loc3_.§4d§(_loc2_);
                           if(_loc7_)
                           {
                              break;
                           }
                           while(true)
                           {
                              _loc3_ = _loc3_.§6!c§;
                              continue loop0;
                           }
                        }
                        _loc4_ = this.§ if§;
                        if(!_loc7_)
                        {
                           while(_loc4_)
                           {
                              _loc5_ = _loc4_;
                              _loc4_ = _loc4_.next;
                              if(_loc6_)
                              {
                                 this.m_world.§`Q§.§7!d§(_loc5_.§@"6§);
                              }
                           }
                           if(_loc6_ || this)
                           {
                              this.§ if§ = null;
                           }
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr118);
                  }
               }
               addr169:
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr50);
      }
      
      public function §>!-§() : Boolean
      {
         return (this.§1!h§ & b2internal::5! ) == b2internal::5! ;
      }
      
      public function §8!<§() : Boolean
      {
         return (this.§1!h§ & b2internal::5"4) == b2internal::5"4;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§%!y§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§=!U§;
      }
      
      public function §-!t§() : b2ControllerEdge
      {
         return this.§8!@§;
      }
      
      public function §@d§() : b2ContactEdge
      {
         return this.§ if§;
      }
      
      public function §2!9§() : b2Body
      {
         return this.§6!c§;
      }
      
      public function GetUserData() : *
      {
         return this.§finally§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§finally§ = param1;
         }
      }
      
      public function §#G§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §+!c§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §+V§;
         if(!_loc6_)
         {
            §§push(_loc1_.R);
            if(!_loc6_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr33:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(_loc7_)
            {
               §§push(_loc1_.position);
               if(_loc7_ || _loc1_)
               {
                  §§push(this.m_sweep);
                  if(_loc7_ || _loc1_)
                  {
                     §§push(§§pop().c0);
                     if(!_loc6_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(_loc2_.col1);
                           if(!_loc6_)
                           {
                              §§push(§§pop().x);
                              if(_loc7_ || _loc1_)
                              {
                                 §§push(_loc3_.x);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc6_)
                                          {
                                             addr119:
                                             §§push(_loc3_.y);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_)
                                                   {
                                                      addr129:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         addr137:
                                                         §§pop().x = §§pop();
                                                         if(!(_loc6_ && _loc1_))
                                                         {
                                                            addr150:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               addr160:
                                                               §§push(_loc2_.col1.y);
                                                               if(!_loc6_)
                                                               {
                                                                  addr163:
                                                                  §§push(_loc3_.x);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc7_ || _loc1_)
                                                                     {
                                                                        addr182:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(!_loc7_)
                                                                        {
                                                                        }
                                                                        addr190:
                                                                        §§pop().y = §§pop() - (§§pop() + §§pop());
                                                                        addr191:
                                                                        var _loc5_:§5!u§ = this.m_world.§`Q§.§"V§;
                                                                        _loc4_ = this.§%!y§;
                                                                        while(_loc4_)
                                                                        {
                                                                           _loc4_.§3g§(_loc5_,_loc1_,this.m_xf);
                                                                           if(_loc6_ && _loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc4_ = _loc4_.§6!c§;
                                                                        }
                                                                        return;
                                                                        addr189:
                                                                        addr188:
                                                                     }
                                                                     §§goto(addr189);
                                                                  }
                                                                  §§goto(addr188);
                                                                  §§push(§§pop() * _loc3_.y);
                                                               }
                                                               §§goto(addr189);
                                                            }
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr163);
                                                }
                                                §§goto(addr190);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr137);
                     }
                  }
               }
               §§goto(addr150);
            }
            §§goto(addr182);
         }
         §§goto(addr33);
      }
      
      b2internal function §+!X§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.m_xf);
            if(!_loc3_)
            {
               §§push(§§pop().R);
               if(_loc4_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr32:
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
                     addr166:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr168:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr169:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr170:
                              loop4:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr172:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr173:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr189:
                                                addr111:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr191:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr192:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr193:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr194:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§push(_loc1_.col2);
                                                if(!(_loc4_ || _loc1_))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().y);
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(_loc2_.y);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr142:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc4_)
                                                         {
                                                            addr145:
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc3_)
                                                            {
                                                               if(!(_loc4_ || this))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().y = §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        return;
                                                                        addr162:
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr193);
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr192);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr189);
                                                   }
                                                }
                                                §§goto(addr142);
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
               §§goto(addr162);
            }
         }
         §§goto(addr32);
      }
      
      b2internal function §^m§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§5Q§);
            if(_loc4_ || this)
            {
               §§push(b2_dynamicBody);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§goto(addr51);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr83);
                     }
                     addr51:
                     §§pop();
                     if(!(_loc3_ && this))
                     {
                        addr62:
                        §§push(param1.§5Q§ == b2_dynamicBody);
                        if(_loc4_)
                        {
                           §§goto(addr75);
                        }
                        addr83:
                        if(§§pop())
                        {
                           if(_loc4_ || param1)
                           {
                              addr91:
                              §§push(false);
                           }
                           else
                           {
                              §§goto(addr93);
                           }
                        }
                        §§goto(addr93);
                     }
                     addr93:
                     var _loc2_:b2JointEdge = this.§=!U§;
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§push(true);
                           break;
                        }
                        if(_loc2_.§"l§ != param1)
                        {
                           continue;
                        }
                        if(!(_loc3_ && this))
                        {
                           §§push(_loc2_.§@P§.§ !,§);
                           if(_loc4_)
                           {
                              if(§§pop() != false)
                              {
                                 continue;
                              }
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              addr124:
                              §§push(false);
                              if(!_loc4_)
                              {
                                 break;
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr124);
                     }
                     return §§pop();
                  }
                  addr75:
                  §§push(!§§pop());
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr83);
                  }
                  return §§pop();
               }
            }
            §§goto(addr62);
         }
         §§goto(addr91);
      }
      
      public function §4!&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§&!;§ = param1;
         }
      }
      
      b2internal function §!&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.m_sweep);
            while(true)
            {
               §§push(param1);
               addr99:
               while(true)
               {
                  §§pop().§!&§(§§pop());
               }
            }
            addr98:
         }
         loop2:
         while(true)
         {
            §§push(this.m_sweep);
            loop3:
            while(true)
            {
               §§pop().c.SetV(this.m_sweep.c0);
               while(true)
               {
                  §§push(this.m_sweep);
                  if(!_loc2_)
                  {
                     continue loop3;
                  }
                  if(!_loc3_)
                  {
                     §§push(this.m_sweep.a0);
                     if(!(_loc2_ || param1))
                     {
                        break;
                     }
                     §§pop().a = §§pop();
                     while(!_loc3_)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           this.§+!X§();
                           if(_loc2_ || _loc3_)
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop2;
                     }
                     continue;
                  }
                  §§goto(addr98);
               }
               §§goto(addr99);
            }
         }
      }
   }
}
