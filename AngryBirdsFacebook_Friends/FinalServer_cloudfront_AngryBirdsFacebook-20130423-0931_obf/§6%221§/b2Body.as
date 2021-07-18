package §6"1§
{
   import §!"3§.b2EdgeShape;
   import §!"3§.b2MassData;
   import §!"3§.b2Shape;
   import §'"-§.§3Q§;
   import §'"6§.b2Contact;
   import §'"6§.b2ContactEdge;
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §,,§.b2JointEdge;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Sweep;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   import §?D§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §[!l§:b2Transform;
      
      b2internal static var §>7§:uint = 1;
      
      b2internal static var §3!x§:uint = 2;
      
      b2internal static var §-!g§:uint = 4;
      
      b2internal static var §?!c§:uint = 8;
      
      b2internal static var §;!h§:uint = 16;
      
      b2internal static var §-!n§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §[!l§ = new b2Transform();
            while(true)
            {
               §>7§ = 1;
               addr141:
               addr119:
               while(true)
               {
                  §3!x§ = 2;
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §;!h§ = 16;
               loop5:
               while(_loc2_)
               {
                  §-!n§ = 32;
                  while(true)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        addr86:
                        if(!(_loc1_ && _loc1_))
                        {
                           if(!_loc1_)
                           {
                              b2_staticBody = 0;
                              continue;
                           }
                           §§goto(addr141);
                        }
                        break;
                     }
                     continue loop5;
                  }
                  addr131:
                  while(true)
                  {
                     §?!c§ = 8;
                     break loop5;
                     §§goto(addr86);
                  }
                  while(true)
                  {
                     §-!g§ = 4;
                     §§goto(addr131);
                  }
               }
               while(true)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr119);
                  }
                  §§goto(addr136);
               }
            }
         }
         §§goto(addr136);
      }
      
      b2internal var §2"B§:uint;
      
      b2internal var §<"@§:int;
      
      b2internal var §3"R§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §"!_§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §8"?§:b2Vec2;
      
      b2internal var §1"@§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §;<§:b2Body;
      
      b2internal var §?!g§:b2Body;
      
      b2internal var §64§:b2Fixture;
      
      b2internal var §&!I§:int;
      
      b2internal var §]!5§:b2ControllerEdge;
      
      b2internal var §>+§:int;
      
      b2internal var §@!g§:b2JointEdge;
      
      b2internal var §>"K§:b2ContactEdge;
      
      b2internal var §,!v§:Number;
      
      b2internal var §-@§:Number;
      
      b2internal var §`!F§:Number;
      
      b2internal var §,H§:Number;
      
      b2internal var § S§:Number;
      
      b2internal var §>!e§:Number;
      
      b2internal var §]";§:Number;
      
      b2internal var §&"3§:Number;
      
      private var §]!d§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            this.m_xf = new b2Transform();
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§"!_§ = new b2Vec2();
                  addr263:
                  while(true)
                  {
                     this.§8"?§ = new b2Vec2();
                     if(_loc6_)
                     {
                        super();
                        if(_loc6_ || param2)
                        {
                           continue loop1;
                        }
                     }
                     addr287:
                     var _loc3_:b2Mat22 = this.m_xf.R;
                     var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                     if(!(_loc7_ && _loc3_))
                     {
                        addr767:
                        addr770:
                        addr786:
                        addr787:
                        addr769:
                        addr766:
                        §§push(this.m_sweep.c);
                        §§push(_loc3_.col1.x);
                        §§push(_loc4_.x);
                        if(_loc6_ || _loc3_)
                        {
                           addr783:
                           §§push(§§pop() * §§pop());
                           §§push(_loc3_.col2.x * _loc4_.y);
                        }
                        §§pop().x = §§pop() + §§pop();
                        addr788:
                        §§push(this.m_sweep);
                        if(_loc6_)
                        {
                           addr719:
                           §§push(§§pop().c);
                           §§push(_loc3_.col1);
                           if(_loc6_ || param1)
                           {
                              addr729:
                              §§push(§§pop().y);
                              if(!_loc7_)
                              {
                                 addr733:
                                 §§push(_loc4_.x);
                                 if(!(_loc7_ && param2))
                                 {
                                    addr741:
                                    §§push(§§pop() * §§pop());
                                    §§push(_loc3_.col2);
                                    if(_loc6_)
                                    {
                                       addr746:
                                       §§push(§§pop().y);
                                       §§push(_loc4_.y);
                                       if(!_loc7_)
                                       {
                                          addr762:
                                          §§pop().y = §§pop() + §§pop() * §§pop();
                                          addr763:
                                          addr761:
                                          §§push(this.m_sweep);
                                          if(!_loc7_)
                                          {
                                             addr666:
                                             §§push(§§pop().c);
                                             §§push(this.m_sweep.c.x);
                                             if(_loc6_ || param2)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      addr687:
                                                      §§push(this.m_xf.position.x);
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               addr704:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  addr712:
                                                                  §§push(this.m_sweep);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop().c);
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                §§push(this.m_xf);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop().position);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr655:
                                                                                                            §§pop().y = §§pop() + §§pop();
                                                                                                            addr656:
                                                                                                            §§push(this.m_sweep);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§pop().c0.SetV(this.m_sweep.c);
                                                                                                               this.§@!g§ = null;
                                                                                                               addr583:
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  this.§]!5§ = null;
                                                                                                                  addr558:
                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                  {
                                                                                                                     this.§>"K§ = null;
                                                                                                                     this.§>+§ = 0;
                                                                                                                     this.§;<§ = null;
                                                                                                                     addr548:
                                                                                                                     addr553:
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        this.§?!g§ = null;
                                                                                                                        this.§"!_§.SetV(param1.§#"+§);
                                                                                                                        this.m_angularVelocity = param1.§1"9§;
                                                                                                                        this.§>!e§ = param1.§#"P§;
                                                                                                                        this.§]";§ = param1.§6"9§;
                                                                                                                        addr524:
                                                                                                                        addr531:
                                                                                                                        addr518:
                                                                                                                        addr536:
                                                                                                                        if(_loc6_ || param2)
                                                                                                                        {
                                                                                                                           this.§8"?§.Set(0,0);
                                                                                                                           addr497:
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              this.§1"@§ = 0;
                                                                                                                              addr488:
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 this.§&"3§ = 0;
                                                                                                                                 addr481:
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    this.§<"@§ = param1.type;
                                                                                                                                    addr472:
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(this.§<"@§ == b2_dynamicBody)
                                                                                                                                          {
                                                                                                                                             addr461:
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                this.§,!v§ = 1;
                                                                                                                                                this.§-@§ = 1;
                                                                                                                                                addr453:
                                                                                                                                                addr466:
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr411:
                                                                                                                                                   this.§`!F§ = 0;
                                                                                                                                                   if(_loc6_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc7_ && this))
                                                                                                                                                      {
                                                                                                                                                         this.§,H§ = 0;
                                                                                                                                                         addr394:
                                                                                                                                                         if(!(_loc7_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  this.§ S§ = param1.§;!-§;
                                                                                                                                                                  addr361:
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              this.§]!d§ = param1.§-!"§;
                                                                                                                                                                              addr351:
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§64§ = null;
                                                                                                                                                                                    addr336:
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc6_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§&!I§ = 0;
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc7_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc7_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr548);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   return;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr524);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr361);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr336);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr453);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr351);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr488);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr461);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr583);
                                                                                                                                                                        }
                                                                                                                                                                        this.§-@§ = 0;
                                                                                                                                                                        addr434:
                                                                                                                                                                        if(!(_loc7_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr411);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr472);
                                                                                                                                                                        addr448:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr411);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr394);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr763);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr548);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr497);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr466);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr434);
                                                                                                                                                }
                                                                                                                                                §§goto(addr531);
                                                                                                                                             }
                                                                                                                                             §§goto(addr518);
                                                                                                                                          }
                                                                                                                                          this.§,!v§ = 0;
                                                                                                                                          §§goto(addr448);
                                                                                                                                       }
                                                                                                                                       §§goto(addr524);
                                                                                                                                    }
                                                                                                                                    §§goto(addr481);
                                                                                                                                 }
                                                                                                                                 §§goto(addr558);
                                                                                                                              }
                                                                                                                              §§goto(addr536);
                                                                                                                              addr499:
                                                                                                                           }
                                                                                                                           §§goto(addr553);
                                                                                                                        }
                                                                                                                        §§goto(addr583);
                                                                                                                     }
                                                                                                                     §§goto(addr656);
                                                                                                                  }
                                                                                                                  §§goto(addr712);
                                                                                                               }
                                                                                                               §§goto(addr788);
                                                                                                            }
                                                                                                            §§goto(addr712);
                                                                                                         }
                                                                                                         §§goto(addr746);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr687);
                                                                                             }
                                                                                             §§goto(addr741);
                                                                                          }
                                                                                          §§goto(addr762);
                                                                                       }
                                                                                       §§goto(addr704);
                                                                                    }
                                                                                    §§goto(addr655);
                                                                                 }
                                                                              }
                                                                              §§goto(addr666);
                                                                           }
                                                                           §§goto(addr767);
                                                                        }
                                                                        §§goto(addr719);
                                                                     }
                                                                     §§goto(addr666);
                                                                  }
                                                                  §§goto(addr762);
                                                               }
                                                               §§goto(addr770);
                                                            }
                                                            §§goto(addr783);
                                                         }
                                                         §§goto(addr733);
                                                      }
                                                      §§goto(addr761);
                                                   }
                                                   §§goto(addr783);
                                                }
                                                §§goto(addr729);
                                             }
                                             §§goto(addr704);
                                          }
                                          §§goto(addr767);
                                       }
                                    }
                                    §§goto(addr783);
                                 }
                                 §§goto(addr786);
                              }
                              §§goto(addr787);
                           }
                           §§goto(addr769);
                        }
                        §§goto(addr766);
                     }
                     §§goto(addr499);
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      private function §>'§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§9"M§().y,param2.§9"M§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§7d§(_loc5_,param2.§9"M§());
         _loc6_ = b2Math.§9N§(_loc6_,param2.§,!R§());
         _loc6_ = b2Math.§7d§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§^_§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§^_§(param1.§9"M§(),param2.§9"M§())).Normalize();
         var _loc8_:* = b2Math.§[!3§(param1.§9"M§(),param2.§,!R§()) > 0;
         if(_loc9_ || param2)
         {
            param1.§^V§(param2,_loc6_,_loc7_,_loc8_);
         }
         do
         {
            param2.§4!Y§(param1,_loc6_,_loc7_,_loc8_);
         }
         while(!(_loc9_ || param3));
         
         return _loc4_;
      }
      
      public function §+!x§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§3Q§ = null;
         if(_loc6_ || param1)
         {
            if(this.m_world.§?"A§() == true)
            {
               if(_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Fixture = new b2Fixture();
         if(_loc6_)
         {
            _loc2_.§3!N§(this,this.m_xf,param1);
            if(!(_loc7_ && _loc3_))
            {
               if(this.§2"B§ & b2internal::-!n)
               {
                  if(_loc6_ || this)
                  {
                     §§push(this.m_world);
                     if(_loc6_)
                     {
                        _loc3_ = §§pop().§9s§.§9"§;
                        if(_loc6_ || param1)
                        {
                           _loc2_.§!!$§(_loc3_,this.m_xf);
                           addr96:
                           _loc2_.§?!g§ = this.§64§;
                           if(_loc6_)
                           {
                              this.§64§ = _loc2_;
                              if(_loc6_)
                              {
                                 addr107:
                                 var _loc4_:*;
                                 §§push((_loc4_ = this).§&!I§);
                                 if(_loc6_ || param1)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(_loc6_ || _loc2_)
                                 {
                                    _loc4_.§&!I§ = _loc5_;
                                 }
                                 if(_loc6_ || _loc2_)
                                 {
                                    _loc2_.m_body = this;
                                    addr139:
                                 }
                                 while(true)
                                 {
                                    this.ResetMassData();
                                    while(true)
                                    {
                                       addr145:
                                       while(true)
                                       {
                                          §§push(this.m_world);
                                          §§goto(addr148);
                                       }
                                    }
                                 }
                                 addr189:
                              }
                              while(true)
                              {
                                 if(_loc2_.§%!$§ > 0)
                                 {
                                    §§goto(addr189);
                                 }
                                 §§goto(addr145);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr96);
                     }
                     addr148:
                     while(true)
                     {
                        §§push(this.m_world.§2"B§);
                        if(_loc6_)
                        {
                           §§push(§§pop() | b2World.§-!M§);
                        }
                        §§pop().§2"B§ = §§pop();
                        if(!_loc6_)
                        {
                           continue loop4;
                        }
                        if(_loc7_ && _loc2_)
                        {
                           continue loop3;
                        }
                        if(!(_loc7_ && _loc2_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return _loc2_;
                  }
                  §§goto(addr139);
               }
               §§goto(addr96);
            }
         }
         §§goto(addr107);
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(_loc5_)
         {
            _loc3_.shape = param1;
         }
         do
         {
            _loc3_.density = param2;
         }
         while(_loc4_ && this);
         
         return this.§+!x§(_loc3_);
      }
      
      public function §="E§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§3Q§ = null;
         if(_loc12_ || _loc2_)
         {
            if(this.m_world.§?"A§() == true)
            {
               if(!(_loc13_ && this))
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§64§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§?!g§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            if(_loc12_ || _loc2_)
            {
               if(!_loc3_)
               {
                  this.§64§ = param1.§?!g§;
                  if(_loc12_)
                  {
                     if(!_loc13_)
                     {
                        loop1:
                        while(true)
                        {
                           _loc4_ = true;
                           if(!(_loc12_ || this))
                           {
                              break loop0;
                           }
                           if(true)
                           {
                              break loop0;
                           }
                           addr70:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                     }
                     else
                     {
                        addr102:
                     }
                     §§goto(addr70);
                  }
                  break;
               }
               if(!_loc13_)
               {
                  _loc3_.§?!g§ = param1.§?!g§;
               }
            }
            §§goto(addr102);
         }
         var _loc5_:b2ContactEdge = this.§>"K§;
         if(_loc12_ || _loc2_)
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§-"G§;
               _loc5_ = _loc5_.§3u§;
               _loc7_ = _loc6_.§]!A§();
               _loc8_ = _loc6_.§3!]§();
               if(_loc12_)
               {
                  §§push(param1 == _loc7_);
                  if(!(_loc13_ && this))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc13_ && this))
                        {
                           §§pop();
                           if(!_loc12_)
                           {
                              continue;
                           }
                           §§push(param1 == _loc8_);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc13_)
                     {
                        this.m_world.§9s§.§2!s§(_loc6_);
                     }
                  }
               }
            }
            if(_loc12_ || _loc2_)
            {
               if(this.§2"B§ & b2internal::-!n)
               {
                  if(!(_loc13_ && _loc3_))
                  {
                     addr209:
                     _loc9_ = this.m_world.§9s§.§9"§;
                     if(!_loc13_)
                     {
                        param1.§&-§(_loc9_);
                        addr220:
                        param1.§2!s§();
                        if(_loc12_)
                        {
                           param1.m_body = null;
                           if(_loc12_)
                           {
                              param1.§?!g§ = null;
                              if(_loc12_ || this)
                              {
                              }
                              addr271:
                              this.ResetMassData();
                              §§goto(addr273);
                           }
                           addr273:
                           return;
                        }
                        var _loc10_:*;
                        §§push((_loc10_ = this).§&!I§);
                        if(_loc12_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc11_:* = §§pop();
                        if(_loc12_ || this)
                        {
                           _loc10_.§&!I§ = _loc11_;
                        }
                        if(_loc12_)
                        {
                           §§goto(addr271);
                        }
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr271);
               }
               §§goto(addr220);
            }
            §§goto(addr271);
         }
         §§goto(addr209);
      }
      
      public function §7<§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2Fixture = null;
         if(_loc8_)
         {
            if(this.m_world.§?"A§() == true)
            {
               if(!(_loc9_ && _loc3_))
               {
                  return;
               }
               addr80:
               while(true)
               {
               }
               addr80:
            }
            loop0:
            while(true)
            {
               §§push(this.m_xf);
               loop1:
               while(true)
               {
                  §§push(§§pop().R);
                  if(!(_loc9_ && param2))
                  {
                     §§pop().Set(param2);
                     while(true)
                     {
                        if(_loc8_ || param1)
                        {
                           §§push(this.m_xf);
                           if(!(_loc8_ || param2))
                           {
                              break;
                           }
                           if(_loc8_ || _loc3_)
                           {
                              §§pop().position.SetV(param1);
                              if(!_loc9_)
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
                        §§goto(addr80);
                     }
                     §§push(§§pop().R);
                     break;
                  }
                  break;
               }
               var _loc4_:b2Mat22 = §§pop();
               var _loc5_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc8_)
               {
                  §§push(this.m_sweep);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop().c);
                     while(true)
                     {
                        §§push(_loc4_.col1);
                        while(true)
                        {
                           §§push(§§pop().x);
                           while(true)
                           {
                              §§push(_loc5_.x);
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 while(true)
                                 {
                                    §§push(_loc4_.col2);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc8_ || this)
                                       {
                                          §§push(_loc5_.y);
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             loop29:
                                             while(true)
                                             {
                                                §§push(_loc5_.y);
                                                if(!(_loc8_ || param1))
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() * §§pop());
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop17:
                                                   while(!_loc9_)
                                                   {
                                                      §§pop().y = §§pop();
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(this.m_sweep);
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop().c);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(this.m_sweep);
                                                               addr214:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().c);
                                                                  addr215:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr216:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_xf);
                                                                        addr218:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().position);
                                                                           addr219:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr220:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop29;
                                                                                 }
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc8_ || param1)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.m_sweep);
                                                                                                         if(_loc8_ || param1)
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                      addr125:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr347:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.m_sweep);
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             addr296:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.col2);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                continue loop29;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr359:
                                                                                       var _loc6_:§3Q§ = this.m_world.§9s§.§9"§;
                                                                                       _loc3_ = this.§64§;
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                this.m_world.§9s§.§+!l§();
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          _loc3_.§`?§(_loc6_,this.m_xf,this.m_xf);
                                                                                          if(!(_loc8_ || _loc3_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          _loc3_ = _loc3_.§?!g§;
                                                                                       }
                                                                                       return;
                                                                                       addr239:
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr345:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    break loop17;
                                                                                 }
                                                                              }
                                                                              continue loop29;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      §§goto(addr347);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr345);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr123);
            }
         }
         §§goto(addr80);
      }
      
      public function § &§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§7<§(param1.position,param1.GetAngle());
         }
      }
      
      public function §!"0§() : b2Transform
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
         if(!(_loc2_ && _loc3_))
         {
            this.§7<§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §^!c§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7<§(this.GetPosition(),param1);
         }
      }
      
      public function §2]§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §6!J§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§<"@§ == b2_staticBody)
            {
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
               while(true)
               {
               }
               addr59:
            }
            while(true)
            {
               this.§"!_§.SetV(param1);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr59);
            }
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§"!_§;
      }
      
      public function §["$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§<"@§ == b2_staticBody)
            {
               if(_loc2_ || _loc3_)
               {
                  return;
               }
               addr52:
               while(true)
               {
               }
               addr52:
            }
            while(true)
            {
               this.m_angularVelocity = param1;
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr52);
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §86§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc2_)
         {
            _loc1_.type = this.§>!f§();
            while(true)
            {
               _loc1_.§6!z§ = (this.§2"B§ & b2internal::-!g) == b2internal::-!g;
               loop1:
               while(!(_loc3_ && _loc1_))
               {
                  while(true)
                  {
                     _loc1_.angle = this.GetAngle();
                     loop3:
                     while(true)
                     {
                        _loc1_.§6"9§ = this.§]";§;
                        loop4:
                        for(; _loc2_; if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.§#"P§ = this.§>!e§;
                           continue loop3;
                        })
                        {
                           _loc1_.§1"9§ = this.m_angularVelocity;
                           loop5:
                           while(true)
                           {
                              _loc1_.§-!'§ = (this.§2"B§ & b2internal::;!h) == b2internal::;!h;
                              loop6:
                              while(true)
                              {
                                 _loc1_.§1p§ = (this.§2"B§ & b2internal::?!c) == b2internal::?!c;
                                 loop7:
                                 while(true)
                                 {
                                    _loc1_.§2"X§ = (this.§2"B§ & b2internal::3!x) == b2internal::3!x;
                                    addr111:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                    continue loop4;
                                    addr71:
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    _loc1_.position = this.GetPosition();
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       addr69:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr71);
                                          continue loop11;
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr111);
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr187);
      }
      
      public function §5i§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§<"@§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr204:
                        while(true)
                        {
                        }
                     }
                     addr201:
                  }
                  while(true)
                  {
                     §§push(this.§8"?§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§8"?§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop5:
                           while(true)
                           {
                              §§push(param1.x);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          break loop7;
                                       }
                                       §§push(this.§8"?§);
                                       if(_loc3_ && this)
                                       {
                                          break;
                                       }
                                       §§push(this.§8"?§);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(§§pop().y);
                                          if(_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(param1.y);
                                             if(_loc3_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          if(_loc4_ || param2)
                                          {
                                             §§pop().y = §§pop();
                                             for(; _loc4_ || _loc3_; §§pop().§1"@§ = §§pop(),if(!(_loc4_ || this))
                                             {
                                                continue;
                                             },if(_loc3_)
                                             {
                                                continue loop0;
                                             },if(!_loc3_)
                                             {
                                                return;
                                             })
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§1"@§);
                                                   if(_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(param2.x);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(this.m_sweep.c.x);
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc4_ || param1)
                                                         {
                                                            addr58:
                                                            §§push(param1.y);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  addr70:
                                                                  §§push(param2.y);
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     addr79:
                                                                     §§push(this.m_sweep.c.y);
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        addr111:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc3_ && param1))
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
                                                            §§goto(addr79);
                                                         }
                                                         §§goto(addr70);
                                                      }
                                                      §§goto(addr108);
                                                   }
                                                   §§goto(addr58);
                                                }
                                                else
                                                {
                                                   §§goto(addr204);
                                                }
                                             }
                                             continue;
                                          }
                                          continue loop7;
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr201);
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr204);
      }
      
      public function §8!O§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§<"@§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     addr74:
                     while(true)
                     {
                        this.SetAwake(true);
                        addr77:
                        while(true)
                        {
                           if(!(_loc2_ || _loc3_))
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr74:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§1"@§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§1"@§ = §§pop();
                     if(_loc2_)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              return;
                           }
                           addr89:
                           return;
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr77);
                  }
               }
            }
            §§goto(addr89);
         }
         §§goto(addr74);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§<"@§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        while(true)
                        {
                           this.SetAwake(true);
                        }
                        addr208:
                     }
                     while(true)
                     {
                     }
                     addr211:
                  }
                  while(true)
                  {
                     §§push(this.§"!_§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§"!_§);
                        addr166:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr167:
                           while(true)
                           {
                              §§push(this.§-@§);
                              if(_loc4_ || param2)
                              {
                                 §§push(param1.x);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr142:
                                    §§push(param1.y);
                                    if(_loc3_ && this)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_)
                                    {
                                       addr189:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc3_)
                                       {
                                          §§pop().y = §§pop();
                                          for(; _loc4_; §§pop().m_angularVelocity = §§pop(),if(!(_loc3_ && this))
                                          {
                                             if(_loc4_)
                                             {
                                                return;
                                             }
                                             continue loop0;
                                          })
                                          {
                                             §§push(this);
                                             §§push(this.m_angularVelocity);
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             §§push(this.§,H§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(param2.x);
                                                if(_loc4_)
                                                {
                                                   §§push(this.m_sweep.c.x);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(param1.y);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            addr66:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc4_)
                                                            {
                                                               §§push(param2.y);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(this.m_sweep.c.y);
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr106:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(param1.x);
                                                                     }
                                                                     §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr106);
                                                   }
                                                   §§goto(addr66);
                                                }
                                             }
                                             §§goto(addr106);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                          }
                                          addr190:
                                       }
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                return;
                                             }
                                             addr216:
                                             continue loop3;
                                          }
                                          §§goto(addr211);
                                       }
                                       while(true)
                                       {
                                       }
                                       addr189:
                                    }
                                    else
                                    {
                                       §§goto(addr189);
                                    }
                                    §§goto(addr190);
                                 }
                              }
                              §§goto(addr189);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr216);
         }
         §§goto(addr208);
      }
      
      public function §1k§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§2]§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§@H§(this.§86§());
         var _loc8_:b2Fixture = _loc5_.§64§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc16_ || _loc3_)
               {
                  _loc5_.ResetMassData();
                  if(_loc16_)
                  {
                     addr188:
                     _loc6_.ResetMassData();
                     break;
                  }
                  break;
               }
               §§goto(addr188);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§?!g§;
                  continue;
               }
               if(!_loc16_)
               {
                  break;
               }
               _loc13_ = _loc8_.§?!g§;
               if(_loc16_ || _loc3_)
               {
                  if(_loc7_)
                  {
                     if(_loc16_)
                     {
                        _loc7_.§?!g§ = _loc13_;
                        if(_loc16_ || _loc2_)
                        {
                           addr96:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§&!I§);
                           if(!_loc17_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(!_loc17_)
                           {
                              _loc14_.§&!I§ = _loc15_;
                           }
                           if(_loc16_)
                           {
                              _loc8_.§?!g§ = _loc6_.§64§;
                              if(!_loc17_)
                              {
                                 addr119:
                                 _loc6_.§64§ = _loc8_;
                                 if(_loc16_)
                                 {
                                    §§push((_loc14_ = _loc6_).§&!I§);
                                    if(!_loc17_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc15_ = §§pop();
                                    if(!(_loc17_ && this))
                                    {
                                       _loc14_.§&!I§ = _loc15_;
                                    }
                                    if(_loc16_ || param1)
                                    {
                                    }
                                    addr164:
                                    _loc8_ = _loc13_;
                                    continue;
                                 }
                              }
                              §§goto(addr164);
                           }
                        }
                        §§goto(addr164);
                     }
                     _loc8_.m_body = _loc6_;
                     §§goto(addr164);
                  }
                  else
                  {
                     _loc5_.§64§ = _loc13_;
                     if(_loc16_ || _loc2_)
                     {
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr164);
            }
         }
         var _loc9_:b2Vec2 = _loc5_.§2]§();
         var _loc10_:b2Vec2 = _loc6_.§2]§();
         var _loc11_:b2Vec2 = b2Math.§^_§(_loc2_,b2Math.§6!?§(_loc3_,b2Math.§9N§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§^_§(_loc2_,b2Math.§6!?§(_loc3_,b2Math.§9N§(_loc10_,_loc4_)));
         if(!_loc17_)
         {
            _loc5_.SetLinearVelocity(_loc11_);
            while(true)
            {
               _loc6_.SetLinearVelocity(_loc12_);
            }
            addr296:
         }
         loop2:
         do
         {
            _loc5_.§["$§(_loc3_);
            while(_loc16_)
            {
               _loc6_.§["$§(_loc3_);
               do
               {
                  _loc5_.§-! §();
                  do
                  {
                     _loc6_.§-! §();
                  }
                  while(!(_loc16_ || _loc2_));
                  
               }
               while(!(_loc16_ || this));
               
               if(_loc16_ || _loc2_)
               {
                  continue loop2;
               }
            }
            §§goto(addr296);
         }
         while(!(_loc16_ || param1));
         
         return _loc6_;
      }
      
      public function §;!V§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§64§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§?!g§;
            if(_loc15_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§&!I§);
               if(!_loc14_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!_loc14_)
               {
                  _loc12_.§&!I§ = _loc13_;
               }
               if(!(_loc14_ && _loc3_))
               {
                  _loc2_.§?!g§ = this.§64§;
                  if(_loc15_ || param1)
                  {
                     addr74:
                     this.§64§ = _loc2_;
                     if(!_loc15_)
                     {
                        continue;
                     }
                     addr79:
                     §§push((_loc12_ = this).§&!I§);
                     if(_loc15_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc13_ = §§pop();
                     if(!_loc14_)
                     {
                        _loc12_.§&!I§ = _loc13_;
                     }
                     if(_loc14_ && _loc2_)
                     {
                        continue;
                     }
                  }
                  _loc2_.m_body = _loc4_;
                  continue;
               }
               §§goto(addr79);
            }
            §§goto(addr74);
         }
         if(_loc15_ || _loc3_)
         {
            _loc3_.§&!I§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§2]§();
         var _loc6_:b2Vec2 = _loc4_.§2]§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(_loc15_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(_loc15_)
         {
            _loc3_.ResetMassData();
            do
            {
               this.§-! §();
            }
            while(_loc14_ && _loc2_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§,!v§;
      }
      
      public function §#!l§() : Number
      {
         return this.§`!F§;
      }
      
      public function §!!v§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§'"N§ = this.§,!v§;
         }
         while(true)
         {
            param1.§@!6§ = this.§`!F§;
            while(_loc3_ || _loc2_)
            {
               param1.center.SetV(this.m_sweep.localCenter);
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §5A§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(b2Settings);
            §§push(this.m_world.§?"A§());
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§?"A§());
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
                           §§push(this.§<"@§);
                           loop4:
                           while(true)
                           {
                              if(§§pop() == b2_dynamicBody)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§-@§ = 0;
                                    loop6:
                                    while(true)
                                    {
                                       this.§`!F§ = 0;
                                       while(true)
                                       {
                                          this.§,H§ = 0;
                                          loop8:
                                          while(true)
                                          {
                                             this.§,!v§ = param1.§'"N§;
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§,!v§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr223:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            this.§,!v§ = 1;
                                                         }
                                                         while(true)
                                                         {
                                                         }
                                                         addr244:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§-@§ = 1 / this.§,!v§;
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr40:
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(false)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§2"B§ & b2internal::;!h);
                                                                  if(!(_loc3_ || param1))
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  addr65:
                                                                  §§push(§§pop() == 0);
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  while(§§pop())
                                                                  {
                                                                     while(_loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc4_ && param1)
                                                                           {
                                                                              §§goto(addr279);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(param1.§@!6§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(this.§,!v§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(param1.center.x);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§push(param1.center);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                addr136:
                                                                                                §§push(param1.center.y);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr131:
                                                                                                   §§push(§§pop() * param1.center.y);
                                                                                                }
                                                                                                §§pop().§`!F§ = §§pop() - §§pop() * (§§pop() + §§pop());
                                                                                                continue loop9;
                                                                                             }
                                                                                             §§goto(addr136);
                                                                                          }
                                                                                          §§goto(addr131);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr136);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr244);
                                                                        }
                                                                     }
                                                                     continue loop8;
                                                                     §§goto(addr65);
                                                                  }
                                                               }
                                                               addr53:
                                                            }
                                                            var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr492:
                                                               this.m_sweep.localCenter.SetV(param1.center);
                                                               addr496:
                                                               §§push(this.m_sweep);
                                                               if(!_loc4_)
                                                               {
                                                                  §§pop().c0.SetV(b2Math.§^T§(this.m_xf,this.m_sweep.localCenter));
                                                                  addr489:
                                                                  §§push(this.m_sweep);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop().c.SetV(this.m_sweep.c0);
                                                                     addr450:
                                                                     addr430:
                                                                     addr428:
                                                                     §§push(this.§"!_§);
                                                                     §§push(this.§"!_§.x);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        addr440:
                                                                        §§push(§§pop() + this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y));
                                                                     }
                                                                     §§pop().x = §§pop();
                                                                     addr474:
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(this.§"!_§);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(this.§"!_§);
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 §§push(this.m_angularVelocity);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(this.m_sweep);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                §§push(_loc2_.x);
                                                                                                if(_loc3_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr389:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc4_ && this))
                                                                                                            {
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  addr405:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc3_ || this)
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§goto(addr496);
                                                                                                                           }
                                                                                                                           return;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr474);
                                                                                                                  }
                                                                                                                  §§goto(addr450);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr440);
                                                                                                   }
                                                                                                   §§goto(addr389);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr440);
                                                                                          }
                                                                                          §§goto(addr389);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr440);
                                                                                 }
                                                                                 §§goto(addr389);
                                                                              }
                                                                              §§goto(addr405);
                                                                           }
                                                                           §§goto(addr430);
                                                                        }
                                                                        §§goto(addr428);
                                                                     }
                                                                     §§goto(addr489);
                                                                  }
                                                                  §§goto(addr496);
                                                               }
                                                               §§goto(addr492);
                                                            }
                                                            §§goto(addr450);
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   §§goto(addr53);
                                                }
                                                continue loop3;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                        }
                     }
                     addr279:
                     return;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function ResetMassData() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(_loc6_)
         {
            this.§,!v§ = 0;
         }
         loop0:
         while(true)
         {
            this.§-@§ = 0;
            while(true)
            {
               this.§`!F§ = 0;
               loop2:
               while(true)
               {
                  this.§,H§ = 0;
                  addr104:
                  while(true)
                  {
                     this.m_sweep.localCenter.§%y§();
                     continue loop2;
                  }
               }
               if(_loc6_ || _loc2_)
               {
                  continue loop0;
               }
            }
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
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  addr40:
                  §§push(_loc2_.col2.x);
                  if(!_loc4_)
                  {
                     addr45:
                     §§push(param1.y);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr53:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!_loc4_)
                           {
                              addr68:
                              §§push(param1.x);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_ || this)
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr94);
                                 }
                                 addr94:
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                 §§goto(addr93);
                              }
                              addr93:
                              if(!_loc4_)
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.x);
                                 if(!_loc4_)
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
                              return _loc3_;
                              §§push(§§pop() * param1.y);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr68);
               }
               §§goto(addr53);
            }
            §§goto(addr45);
         }
         §§goto(addr40);
      }
      
      public function §^"C§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5!w§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&"O§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§60§(this.m_xf.R,param1);
      }
      
      public function §`!>§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§"!_§.x);
         if(!_loc3_)
         {
            §§push(this.m_angularVelocity);
            if(!_loc3_)
            {
               §§push(param1.y);
               if(!_loc3_)
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        addr54:
                        §§push(§§pop() * §§pop());
                        if(_loc2_ || param1)
                        {
                           §§goto(addr63);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr96);
               }
               §§goto(addr54);
            }
            §§goto(addr83);
         }
         addr63:
         §§push(§§pop() - §§pop());
         §§push(this.§"!_§.y);
         if(_loc2_ || this)
         {
            addr83:
            §§push(this.m_angularVelocity);
            if(_loc2_)
            {
               addr102:
               §§push(param1.x);
               if(_loc2_ || param1)
               {
                  addr96:
                  §§push(§§pop() - this.m_sweep.c.x);
               }
               §§push(§§pop() + §§pop() * §§pop());
            }
            §§goto(addr102);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §]"T§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_ || _loc3_)
         {
            §§push(param1.x);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || _loc3_)
               {
                  addr44:
                  §§push(_loc2_.col2.x);
                  if(_loc4_)
                  {
                     §§push(param1.y);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && _loc2_))
                        {
                           addr67:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc5_ && _loc2_))
                           {
                              addr77:
                              §§push(param1.x);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_ && _loc3_)
                                 {
                                 }
                                 §§goto(addr113);
                              }
                              addr99:
                              addr113:
                              var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                              if(!_loc5_)
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.x);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(§§pop() + this.m_xf.position.x);
                                 }
                                 §§pop().x = §§pop();
                                 do
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.y);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(_loc5_);
                                 
                              }
                              §§push(§§findproperty(b2Vec2));
                              §§push(this.§"!_§.x);
                              if(!_loc5_)
                              {
                                 §§push(this.m_angularVelocity);
                                 if(_loc4_ || this)
                                 {
                                    §§push(_loc3_.y);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(this.m_sweep.c.y);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§goto(addr161);
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr186);
                                 }
                                 addr161:
                                 §§goto(addr162);
                              }
                              addr162:
                              §§push(§§pop() - §§pop());
                              §§push(this.§"!_§.y);
                              if(_loc4_ || _loc2_)
                              {
                                 addr172:
                                 §§push(this.m_angularVelocity);
                                 if(_loc4_)
                                 {
                                    addr186:
                                    §§push(_loc3_.x);
                                    if(_loc4_)
                                    {
                                       addr180:
                                       §§push(§§pop() - this.m_sweep.c.x);
                                    }
                                    §§push(§§pop() + §§pop() * §§pop());
                                 }
                                 §§goto(addr186);
                              }
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§pop() + §§pop() * param1.y);
                           }
                           §§push(_loc2_.col2.y);
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr113);
               }
               §§goto(addr67);
            }
            §§goto(addr77);
         }
         §§goto(addr44);
      }
      
      public function §]V§() : Number
      {
         return this.§>!e§;
      }
      
      public function §9i§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§>!e§ = param1;
         }
      }
      
      public function §;!o§() : Number
      {
         return this.§]";§;
      }
      
      public function §7X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§]";§ = param1;
         }
      }
      
      public function SetType(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§<"@§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr143:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr144:
                     return;
                  }
                  addr118:
                  while(true)
                  {
                     this.§<"@§ = param1;
                     addr122:
                     while(!(_loc4_ && this))
                     {
                        this.ResetMassData();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public function §>!f§() : uint
      {
         return this.§<"@§;
      }
      
      public function §"b§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§2"B§ &= ~b2internal::?!c;
               if(_loc2_ && this)
               {
                  addr77:
               }
               return;
            }
            if(_loc3_ || param1)
            {
               addr71:
               this.§2"B§ |= b2internal::?!c;
            }
            §§goto(addr77);
         }
         §§goto(addr71);
      }
      
      public function §>!l§() : Boolean
      {
         return (this.§2"B§ & b2internal::?!c) == b2internal::?!c;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!param1)
            {
               this.§2"B§ &= ~b2internal::-!g;
               loop0:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     this.SetAwake(true);
                     if(!(_loc3_ && this))
                     {
                        if(_loc2_)
                        {
                           §§goto(addr24);
                        }
                        else
                        {
                           addr82:
                        }
                        this.§2"B§ |= b2internal::-!g;
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               addr24:
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr79);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§2"B§ &= ~b2internal::3!x;
               while(true)
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§&"3§ = 0;
                     loop1:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           this.§2"B§ |= b2internal::3!x;
                        }
                        else
                        {
                           addr122:
                        }
                        this.§"!_§.§%y§();
                        loop2:
                        while(true)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 this.m_angularVelocity = 0;
                                 do
                                 {
                                    this.§8"?§.§%y§();
                                    continue loop2;
                                 }
                                 while(_loc3_ && _loc3_);
                                 
                                 break;
                              }
                              break loop1;
                           }
                           continue loop1;
                        }
                        §§goto(addr19);
                     }
                     this.§&"3§ = 0;
                     break;
                     addr128:
                  }
                  break;
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr60);
               }
               addr19:
               return;
            }
            §§goto(addr122);
         }
         §§goto(addr128);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§2"B§ & b2internal::3!x) == b2internal::3!x;
      }
      
      public function §,!Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§2"B§ |= b2internal::;!h;
               }
               do
               {
                  loop1:
                  while(true)
                  {
                     this.ResetMassData();
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr67:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               while(_loc2_);
               
               return;
            }
            this.§2"B§ &= ~b2internal::;!h;
         }
         §§goto(addr67);
      }
      
      public function §+!%§() : Boolean
      {
         return (this.§2"B§ & b2internal::;!h) == b2internal::;!h;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§3Q§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(!(_loc7_ && this))
            {
               if(§§pop() == this.§,"G§())
               {
                  if(_loc6_)
                  {
                     return;
                  }
                  addr55:
                  this.§2"B§ |= b2internal::-!n;
                  addr61:
                  _loc2_ = this.m_world.§9s§.§9"§;
                  _loc3_ = this.§64§;
                  while(_loc3_)
                  {
                     _loc3_.§!!$§(_loc2_,this.m_xf);
                     if(!_loc6_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§?!g§;
                  }
               }
               else
               {
                  addr47:
                  if(param1)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        §§goto(addr55);
                     }
                     §§goto(addr61);
                  }
                  else
                  {
                     this.§2"B§ &= ~b2internal::-!n;
                     _loc2_ = this.m_world.§9s§.§9"§;
                     _loc3_ = this.§64§;
                     if(!_loc7_)
                     {
                        loop0:
                        while(_loc3_)
                        {
                           _loc3_.§&-§(_loc2_);
                           if(_loc7_)
                           {
                              break;
                           }
                           while(true)
                           {
                              _loc3_ = _loc3_.§?!g§;
                              continue loop0;
                           }
                        }
                        _loc4_ = this.§>"K§;
                        if(!_loc7_)
                        {
                           while(_loc4_)
                           {
                              _loc5_ = _loc4_;
                              _loc4_ = _loc4_.§3u§;
                              if(!(_loc7_ && _loc3_))
                              {
                                 this.m_world.§9s§.§2!s§(_loc5_.§-"G§);
                              }
                           }
                           if(_loc7_ && this)
                           {
                           }
                           §§goto(addr179);
                        }
                        this.§>"K§ = null;
                        §§goto(addr179);
                     }
                     §§goto(addr123);
                  }
               }
               addr179:
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr55);
      }
      
      public function §,"G§() : Boolean
      {
         return (this.§2"B§ & b2internal::-!n) == b2internal::-!n;
      }
      
      public function §#e§() : Boolean
      {
         return (this.§2"B§ & b2internal::-!g) == b2internal::-!g;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§64§;
      }
      
      public function §5,§() : b2JointEdge
      {
         return this.§@!g§;
      }
      
      public function §4E§() : b2ControllerEdge
      {
         return this.§]!5§;
      }
      
      public function §0!z§() : b2ContactEdge
      {
         return this.§>"K§;
      }
      
      public function §>!v§() : b2Body
      {
         return this.§?!g§;
      }
      
      public function GetUserData() : *
      {
         return this.§]!d§;
      }
      
      public function §^!>§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§]!d§ = param1;
         }
      }
      
      public function §-7§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §-! §() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §[!l§;
         if(!(_loc7_ && _loc2_))
         {
            §§push(_loc1_.R);
            if(_loc6_ || _loc1_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr42:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(_loc6_ || _loc2_)
            {
               §§push(_loc1_.position);
               if(_loc6_)
               {
                  §§push(this.m_sweep);
                  if(_loc6_)
                  {
                     §§push(§§pop().c0);
                     if(_loc6_ || _loc1_)
                     {
                        §§push(§§pop().x);
                        if(_loc6_)
                        {
                           §§push(_loc2_.col1);
                           if(!(_loc7_ && _loc1_))
                           {
                              §§push(§§pop().x);
                              if(_loc6_)
                              {
                                 §§push(_loc3_.x);
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(_loc3_.y);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc7_ && _loc1_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            addr159:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(!_loc7_)
                                                            {
                                                               addr162:
                                                               §§push(_loc2_.col1.y);
                                                               if(_loc6_ || this)
                                                               {
                                                                  addr172:
                                                                  §§push(_loc3_.x);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr176:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                     }
                                                                     addr199:
                                                                     §§pop().y = §§pop() - §§pop();
                                                                     addr200:
                                                                     var _loc5_:§3Q§ = this.m_world.§9s§.§9"§;
                                                                     _loc4_ = this.§64§;
                                                                     while(_loc4_)
                                                                     {
                                                                        _loc4_.§`?§(_loc5_,_loc1_,this.m_xf);
                                                                        if(_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc4_ = _loc4_.§?!g§;
                                                                     }
                                                                     return;
                                                                     addr198:
                                                                  }
                                                                  addr184:
                                                                  §§goto(addr198);
                                                                  §§push(§§pop() + §§pop() * _loc3_.y);
                                                               }
                                                               §§push(_loc2_.col2.y);
                                                               if(_loc7_)
                                                               {
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                }
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr176);
                     }
                  }
               }
            }
            §§goto(addr159);
         }
         §§goto(addr42);
      }
      
      b2internal function §+!q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.m_xf);
            if(_loc3_ || _loc3_)
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
                     addr186:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr188:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr189:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!(_loc4_ && this))
                              {
                                 §§push(_loc1_.col1);
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr210:
                                    addr89:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             addr222:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr223:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr225:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                             }
                                          }
                                          addr220:
                                       }
                                       addr226:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          addr227:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                          }
                                       }
                                    }
                                    §§push(_loc1_.col1);
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§push(§§pop().y);
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(_loc2_.x);
                                             if(_loc3_ || _loc1_)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc4_)
                                                   {
                                                      addr139:
                                                      §§push(_loc1_.col2);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§push(_loc2_.y);
                                                            if(!(_loc4_ && this))
                                                            {
                                                               addr166:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  addr169:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr172:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        if(!_loc4_)
                                                                        {
                                                                           return;
                                                                           addr182:
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr220);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop0;
                                                                  }
                                                                  addr228:
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         §§goto(addr166);
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr166);
                                          }
                                          else
                                          {
                                             §§goto(addr210);
                                          }
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr139);
                                 }
                              }
                              §§goto(addr228);
                           }
                        }
                     }
                  }
                  addr185:
               }
               while(true)
               {
                  §§push(this.m_xf);
                  if(!_loc4_)
                  {
                     §§push(§§pop().position);
                     if(_loc3_ || this)
                     {
                        §§push(this.m_sweep);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop().c);
                           if(_loc3_)
                           {
                              §§push(§§pop().y);
                              if(_loc3_ || this)
                              {
                                 §§goto(addr89);
                              }
                              §§goto(addr172);
                           }
                           else
                           {
                              §§goto(addr189);
                           }
                        }
                        else
                        {
                           §§goto(addr188);
                        }
                        §§goto(addr189);
                     }
                     else
                     {
                        §§goto(addr186);
                     }
                  }
                  else
                  {
                     §§goto(addr185);
                  }
                  §§goto(addr186);
               }
               §§goto(addr182);
            }
         }
         §§goto(addr36);
      }
      
      b2internal function §[">§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§<"@§);
            if(!_loc3_)
            {
               §§push(b2_dynamicBody);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc3_ && param1))
                  {
                     §§push(!§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || this)
                           {
                              §§pop();
                              if(!(_loc3_ && param1))
                              {
                                 addr72:
                                 §§push(param1.§<"@§ == b2_dynamicBody);
                                 if(_loc4_)
                                 {
                                    §§goto(addr75);
                                 }
                                 §§goto(addr78);
                              }
                              §§goto(addr81);
                           }
                        }
                     }
                     §§goto(addr78);
                  }
                  addr75:
                  §§push(!§§pop());
                  if(_loc4_)
                  {
                     addr78:
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr81:
                           §§push(false);
                        }
                        else
                        {
                           §§goto(addr83);
                        }
                     }
                     §§goto(addr83);
                  }
                  return §§pop();
               }
            }
            §§goto(addr72);
         }
         addr83:
         var _loc2_:b2JointEdge = this.§@!g§;
         while(true)
         {
            if(!_loc2_)
            {
               §§push(true);
               addr132:
            }
            if(_loc2_.§[!!§ == param1)
            {
               if(!_loc3_)
               {
                  §§push(_loc2_.§<S§.§8_§);
                  if(_loc3_)
                  {
                     break;
                  }
                  if(§§pop() == false)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(false);
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr132);
                     }
                  }
               }
            }
            continue;
            return §§pop();
         }
         return §§pop();
      }
      
      b2internal function §'a§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.m_sweep);
            loop0:
            while(true)
            {
               §§push(param1);
               addr99:
               while(true)
               {
                  §§pop().§'a§(§§pop());
                  addr100:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr35);
      }
   }
}
