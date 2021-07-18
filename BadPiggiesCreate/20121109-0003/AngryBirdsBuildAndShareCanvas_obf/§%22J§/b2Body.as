package §"J§
{
   import §%4§.§0w§;
   import §,!0§.b2JointEdge;
   import §0a§.b2ControllerEdge;
   import §2k§.b2EdgeShape;
   import §2k§.b2MassData;
   import §2k§.b2Shape;
   import §;!e§.b2Contact;
   import §;!e§.b2ContactEdge;
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Sweep;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §6V§:b2Transform;
      
      b2internal static var §3Q§:uint = 1;
      
      b2internal static var §>J§:uint = 2;
      
      b2internal static var § f§:uint = 4;
      
      b2internal static var §9G§:uint = 8;
      
      b2internal static var §&v§:uint = 16;
      
      b2internal static var §&!"§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6V§ = new b2Transform();
            while(true)
            {
               §3Q§ = 1;
               loop1:
               while(true)
               {
                  §>J§ = 2;
                  while(true)
                  {
                     § f§ = 4;
                     loop3:
                     while(true)
                     {
                        §9G§ = 8;
                        loop4:
                        while(true)
                        {
                           §&v§ = 16;
                           while(true)
                           {
                              §&!"§ = 32;
                              while(!(_loc1_ && b2Body))
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop4;
                                 while(_loc2_ || _loc1_)
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               addr30:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               return;
               addr37:
            }
         }
         while(true)
         {
            b2_dynamicBody = 2;
            if(!_loc1_)
            {
               §§goto(addr30);
            }
            §§goto(addr42);
         }
         §§goto(addr37);
      }
      
      b2internal var §]!+§:uint;
      
      b2internal var §0!,§:int;
      
      b2internal var §;!4§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §]!g§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §1!3§:b2Vec2;
      
      b2internal var § !v§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §+!w§:b2Body;
      
      b2internal var §7!'§:b2Body;
      
      b2internal var §%!9§:b2Fixture;
      
      b2internal var §93§:int;
      
      b2internal var §`"=§:b2ControllerEdge;
      
      b2internal var §-0§:int;
      
      b2internal var §,!j§:b2JointEdge;
      
      b2internal var §<W§:b2ContactEdge;
      
      b2internal var §?j§:Number;
      
      b2internal var §@"!§:Number;
      
      b2internal var §,q§:Number;
      
      b2internal var §=!N§:Number;
      
      b2internal var §9!?§:Number;
      
      b2internal var §6!D§:Number;
      
      b2internal var §4">§:Number;
      
      b2internal var §>"'§:Number;
      
      private var §5![§;
      
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
            }
            addr309:
         }
         while(true)
         {
            this.§]!g§ = new b2Vec2();
            if(!(_loc7_ && param1))
            {
               if(!_loc7_)
               {
                  this.§1!3§ = new b2Vec2();
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        this.§]!+§ = 0;
                        loop4:
                        while(true)
                        {
                           §§push(param1.§7@§);
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.§]!+§ |= b2internal::9G;
                                    addr266:
                                    while(_loc6_)
                                    {
                                    }
                                    continue loop4;
                                 }
                                 addr260:
                              }
                              while(true)
                              {
                                 §§push(param1.§7'§);
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          this.§]!+§ |= b2internal::&v;
                                          addr253:
                                          while(!_loc7_)
                                          {
                                          }
                                          §§goto(addr266);
                                       }
                                       addr247:
                                    }
                                    while(true)
                                    {
                                       §§push(param1.§-!3§);
                                       loop13:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                this.§]!+§ |= b2internal:: f;
                                                while(true)
                                                {
                                                }
                                                addr242:
                                             }
                                             else
                                             {
                                                addr325:
                                                var _loc3_:b2Mat22 = this.m_xf.R;
                                                var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                addr322:
                                                if(!(_loc7_ && param2))
                                                {
                                                   addr826:
                                                   addr852:
                                                   addr827:
                                                   addr829:
                                                   §§push(this.m_sweep.c);
                                                   §§push(_loc3_.col1.x);
                                                   if(!_loc7_)
                                                   {
                                                      addr834:
                                                      §§push(§§pop() * _loc4_.x + _loc3_.col2.x * _loc4_.y);
                                                   }
                                                   §§pop().x = §§pop();
                                                   addr853:
                                                   §§push(this.m_sweep.c);
                                                   §§push(_loc3_.col1);
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr778:
                                                      §§push(§§pop().y);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         addr787:
                                                         §§push(_loc4_.x);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc6_)
                                                            {
                                                               §§push(_loc3_.col2);
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(_loc4_.y);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        addr814:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           addr822:
                                                                           §§pop().y = §§pop() + §§pop();
                                                                           addr823:
                                                                           §§push(this.m_sweep.c);
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              addr748:
                                                                              §§push(this.m_sweep.c.x);
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr755:
                                                                                 §§push(§§pop() + this.m_xf.position.x);
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr763:
                                                                                    §§push(this.m_sweep);
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(!(_loc7_ && param2))
                                                                                          {
                                                                                             §§push(this.m_sweep);
                                                                                             if(!(_loc7_ && this))
                                                                                             {
                                                                                                §§push(§§pop().c);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      §§push(this.m_xf);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop().position);
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!(_loc7_ && param2))
                                                                                                            {
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr725:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 addr732:
                                                                                                                                 §§push(this.m_sweep);
                                                                                                                                 if(_loc6_ || this)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                          addr645:
                                                                                                                                          if(!(_loc7_ && param2))
                                                                                                                                          {
                                                                                                                                             this.§,!j§ = null;
                                                                                                                                             this.§`"=§ = null;
                                                                                                                                             this.§<W§ = null;
                                                                                                                                             this.§-0§ = 0;
                                                                                                                                             this.§+!w§ = null;
                                                                                                                                             addr625:
                                                                                                                                             addr610:
                                                                                                                                             addr620:
                                                                                                                                             addr615:
                                                                                                                                             if(!(_loc7_ && param1))
                                                                                                                                             {
                                                                                                                                                this.§7!'§ = null;
                                                                                                                                                this.§]!g§.SetV(param1.§ %§);
                                                                                                                                                addr581:
                                                                                                                                                addr593:
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   this.m_angularVelocity = param1.§3D§;
                                                                                                                                                   addr567:
                                                                                                                                                   if(!(_loc7_ && param1))
                                                                                                                                                   {
                                                                                                                                                      this.§6!D§ = param1.§8!M§;
                                                                                                                                                      this.§4">§ = param1.§^"6§;
                                                                                                                                                      this.§1!3§.Set(0,0);
                                                                                                                                                      addr535:
                                                                                                                                                      addr555:
                                                                                                                                                      addr561:
                                                                                                                                                      if(_loc6_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || param2)
                                                                                                                                                         {
                                                                                                                                                            this.§ !v§ = 0;
                                                                                                                                                            this.§>"'§ = 0;
                                                                                                                                                            this.§0!,§ = param1.type;
                                                                                                                                                            addr523:
                                                                                                                                                            addr528:
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(this.§0!,§ == b2_dynamicBody)
                                                                                                                                                                  {
                                                                                                                                                                     addr496:
                                                                                                                                                                     this.§?j§ = 1;
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§@"!§ = 1;
                                                                                                                                                                           addr483:
                                                                                                                                                                           if(!(_loc7_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr458:
                                                                                                                                                                              this.§,q§ = 0;
                                                                                                                                                                              this.§=!N§ = 0;
                                                                                                                                                                              addr448:
                                                                                                                                                                              addr462:
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§9!?§ = param1.§[!V§;
                                                                                                                                                                                    addr434:
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc6_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§5![§ = param1.§ S§;
                                                                                                                                                                                          addr398:
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§%!9§ = null;
                                                                                                                                                                                                         addr371:
                                                                                                                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§93§ = 0;
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc7_ && param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr523);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr483);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr398);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr371);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr645);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr448);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr434);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr763);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr625);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr567);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr535);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr496);
                                                                                                                                                                                          addr443:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr528);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr462);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr476:
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§@"!§ = 0;
                                                                                                                                                                                    addr467:
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr458);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr555);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr496);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr467);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr610);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr561);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr523);
                                                                                                                                                                  }
                                                                                                                                                                  this.§?j§ = 0;
                                                                                                                                                                  §§goto(addr476);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr625);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr581);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr732);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr593);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr620);
                                                                                                                                                }
                                                                                                                                                §§goto(addr615);
                                                                                                                                             }
                                                                                                                                             §§goto(addr823);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr853);
                                                                                                                                    }
                                                                                                                                    §§goto(addr823);
                                                                                                                                 }
                                                                                                                                 §§goto(addr763);
                                                                                                                              }
                                                                                                                              §§goto(addr822);
                                                                                                                           }
                                                                                                                           §§goto(addr748);
                                                                                                                        }
                                                                                                                        §§goto(addr755);
                                                                                                                     }
                                                                                                                     §§goto(addr834);
                                                                                                                  }
                                                                                                                  §§goto(addr787);
                                                                                                               }
                                                                                                               §§goto(addr814);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr755);
                                                                                                   }
                                                                                                   §§goto(addr725);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr748);
                                                                                          }
                                                                                          §§goto(addr853);
                                                                                       }
                                                                                       §§goto(addr822);
                                                                                    }
                                                                                    §§goto(addr826);
                                                                                 }
                                                                                 §§goto(addr778);
                                                                              }
                                                                              §§goto(addr852);
                                                                           }
                                                                           §§goto(addr827);
                                                                        }
                                                                     }
                                                                     §§goto(addr834);
                                                                  }
                                                                  §§goto(addr814);
                                                               }
                                                               §§goto(addr834);
                                                            }
                                                            §§goto(addr822);
                                                         }
                                                      }
                                                      §§goto(addr834);
                                                   }
                                                   §§goto(addr829);
                                                }
                                                §§goto(addr443);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param1.§9!'§);
                                             continue loop13;
                                          }
                                       }
                                    }
                                    if(!(_loc7_ && this))
                                    {
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                        §§goto(addr131);
                        §§push(this.m_xf);
                     }
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr312);
                     §§push(this.m_sweep);
                  }
               }
               else
               {
                  §§goto(addr309);
               }
            }
            §§goto(addr325);
            if(_loc7_ && this)
            {
               continue;
            }
            §§goto(addr157);
         }
      }
      
      private function §5!j§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§>r§().y,param2.§>r§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§2!z§(_loc5_,param2.§>r§());
         _loc6_ = b2Math.§ !r§(_loc6_,param2.§<!I§());
         _loc6_ = b2Math.§2!z§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§'!c§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§'!c§(param1.§>r§(),param2.§>r§())).Normalize();
         var _loc8_:* = b2Math.§8n§(param1.§>r§(),param2.§<!I§()) > 0;
         if(_loc9_ || this)
         {
            param1.§1g§(param2,_loc6_,_loc7_,_loc8_);
            do
            {
               param2.§^!Q§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(!_loc9_);
            
         }
         return _loc4_;
      }
      
      public function §&^§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§0w§ = null;
         if(!(_loc7_ && _loc3_))
         {
            if(this.m_world.§&<§() == true)
            {
               if(!_loc7_)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(!(_loc7_ && _loc3_))
            {
               _loc2_.§`!P§(this,this.m_xf,param1);
               if(_loc6_ || _loc2_)
               {
                  if(this.§]!+§ & b2internal::&!")
                  {
                     if(_loc6_ || this)
                     {
                        addr71:
                        §§push(this.m_world);
                        if(_loc6_)
                        {
                           _loc3_ = §§pop().§>"7§.§58§;
                           if(!_loc7_)
                           {
                              _loc2_.§1S§(_loc3_,this.m_xf);
                              _loc2_.§7!'§ = this.§%!9§;
                              addr86:
                              if(!(_loc7_ && this))
                              {
                                 addr107:
                                 this.§%!9§ = _loc2_;
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    var _loc4_:*;
                                    §§push((_loc4_ = this).§93§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc6_)
                                    {
                                       _loc4_.§93§ = _loc5_;
                                    }
                                    if(_loc6_ || _loc3_)
                                    {
                                       _loc2_.m_body = this;
                                       addr139:
                                    }
                                    loop0:
                                    do
                                    {
                                       if(_loc2_.§-k§ > 0)
                                       {
                                          while(true)
                                          {
                                             this.§"!N§();
                                             addr196:
                                             while(true)
                                             {
                                             }
                                             addr164:
                                             if(!(_loc7_ && this))
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.m_world);
                                          addr148:
                                          while(true)
                                          {
                                             §§push(this.m_world.§]!+§);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() | b2World.§&=§);
                                             }
                                             §§pop().§]!+§ = §§pop();
                                             if(_loc7_ && param1)
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr164);
                                          }
                                       }
                                    }
                                    while(_loc7_ && _loc2_);
                                    
                                    return _loc2_;
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr86);
               }
               §§goto(addr196);
            }
            §§goto(addr71);
         }
         addr33:
         return null;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.shape = param1;
         }
         do
         {
            _loc3_.density = param2;
         }
         while(!(_loc5_ || _loc3_));
         
         return this.§&^§(_loc3_);
      }
      
      public function §][§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§0w§ = null;
         if(!_loc12_)
         {
            if(this.m_world.§&<§() == true)
            {
               if(!(_loc12_ && this))
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§%!9§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§7!'§)
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
                  this.§%!9§ = param1.§7!'§;
                  loop2:
                  while(true)
                  {
                     if(!(_loc12_ && _loc3_))
                     {
                        continue loop1;
                     }
                     addr59:
                     if(_loc13_ || _loc2_)
                     {
                        if(false)
                        {
                           while(true)
                           {
                              addr54:
                              while(true)
                              {
                                 _loc4_ = true;
                                 if(!_loc12_)
                                 {
                                    §§goto(addr59);
                                 }
                                 break loop0;
                              }
                              continue loop2;
                           }
                           addr68:
                        }
                        break loop0;
                     }
                  }
                  continue;
               }
               while(true)
               {
                  _loc3_.§7!'§ = param1.§7!'§;
                  if(_loc13_ || this)
                  {
                     §§goto(addr68);
                  }
                  break loop0;
               }
            }
         }
         var _loc5_:b2ContactEdge = this.§<W§;
         if(!(_loc12_ && param1))
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§6M§;
               _loc5_ = _loc5_.§>"2§;
               _loc7_ = _loc6_.§&!K§();
               _loc8_ = _loc6_.§ 1§();
               if(!(_loc12_ && _loc3_))
               {
                  §§push(param1 == _loc7_);
                  if(!(_loc12_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        if(_loc13_)
                        {
                           §§pop();
                           if(!_loc13_)
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
                  if(_loc12_ && _loc2_)
                  {
                     continue;
                  }
               }
               this.m_world.§>"7§.§3!0§(_loc6_);
            }
            if(_loc13_)
            {
               if(this.§]!+§ & b2internal::&!")
               {
                  if(_loc13_)
                  {
                     _loc9_ = this.m_world.§>"7§.§58§;
                     if(!_loc12_)
                     {
                        param1.§`q§(_loc9_);
                     }
                  }
                  §§goto(addr225);
               }
               param1.§3!0§();
               if(!_loc12_)
               {
                  addr225:
                  param1.m_body = null;
                  if(!_loc12_)
                  {
                     param1.§7!'§ = null;
                     if(!_loc12_)
                     {
                        §§goto(addr235);
                     }
                     §§goto(addr272);
                  }
                  §§goto(addr235);
               }
               §§goto(addr272);
            }
            addr235:
            var _loc10_:*;
            §§push((_loc10_ = this).§93§);
            if(!(_loc12_ && this))
            {
               §§push(§§pop() - 1);
            }
            var _loc11_:* = §§pop();
            if(_loc13_)
            {
               _loc10_.§93§ = _loc11_;
            }
            if(!(_loc12_ && this))
            {
               addr272:
               this.§"!N§();
            }
            return;
         }
         §§goto(addr225);
      }
      
      public function §`!"§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2Fixture = null;
         if(!_loc9_)
         {
            if(this.m_world.§&<§() != true)
            {
               loop0:
               while(true)
               {
                  §§push(this.m_xf);
                  if(_loc8_)
                  {
                     §§push(§§pop().R);
                     if(_loc8_ || param1)
                     {
                        §§pop().Set(param2);
                        while(true)
                        {
                           if(!(_loc9_ && param1))
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        addr78:
                        §§push(§§pop().R);
                     }
                     var _loc4_:b2Mat22 = §§pop();
                     var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                     if(_loc8_ || this)
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
                                 if(!(_loc9_ && param2))
                                 {
                                    §§push(_loc5_.x);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc4_.col2);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc9_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc5_.y);
                                                   addr339:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                addr337:
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   addr342:
                                                   while(true)
                                                   {
                                                      §§push(this.m_sweep);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().c);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.col1);
                                                            if(_loc9_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().y);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_.x);
                                                               if(_loc8_ || this)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.col2);
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     addr249:
                                                                     if(!(_loc8_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§push(this.m_xf);
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().position);
                                                                        addr261:
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr262:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 addr264:
                                                                                 while(true)
                                                                                 {
                                                                                    addr122:
                                                                                    loop29:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.m_sweep);
                                                                                       addr125:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   break loop29;
                                                                                                }
                                                                                                §§push(this.m_sweep);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   if(_loc8_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      addr182:
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      addr307:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         addr308:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.m_sweep);
                                                                                                            addr231:
                                                                                                            while(_loc8_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop().c);
                                                                                                                  while(_loc8_ || this)
                                                                                                                  {
                                                                                                                     §§push(this.m_sweep);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().c);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                                  addr236:
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      §§goto(addr249);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr245);
                                                                                             }
                                                                                             §§goto(addr236);
                                                                                          }
                                                                                          §§goto(addr231);
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr345:
                                                                                 addr354:
                                                                                 §§pop().a0 = this.m_sweep.a = param2;
                                                                                 var _loc6_:§0w§ = this.m_world.§>"7§.§58§;
                                                                                 _loc3_ = this.§%!9§;
                                                                                 addr389:
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    _loc3_.§0Z§(_loc6_,this.m_xf,this.m_xf);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       _loc3_ = _loc3_.§7!'§;
                                                                                       §§goto(addr389);
                                                                                    }
                                                                                    §§goto(addr393);
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§goto(addr393);
                                                                                 }
                                                                                 addr393:
                                                                                 this.m_world.§>"7§.§8u§();
                                                                                 return;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr332:
                                    }
                                    §§goto(addr337);
                                 }
                                 §§goto(addr332);
                              }
                           }
                        }
                     }
                     §§goto(addr342);
                  }
                  §§goto(addr78);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §4!D§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`!"§(param1.position,param1.GetAngle());
         }
      }
      
      public function §60§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §8" §(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§`!"§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §4!Y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`!"§(this.GetPosition(),param1);
         }
      }
      
      public function §?Q§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §2!%§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§0!,§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.§]!g§.SetV(param1);
                  if(_loc2_ || param1)
                  {
                     break;
                  }
                  addr63:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc3_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§]!g§;
      }
      
      public function §5'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§0!,§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.m_angularVelocity = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr63:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc2_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §[A§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §#A§() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(!_loc2_)
         {
            _loc1_.type = this.§;!F§();
            while(true)
            {
               _loc1_.§-!3§ = (this.§]!+§ & b2internal:: f) == b2internal:: f;
            }
            addr168:
         }
         loop1:
         while(true)
         {
            _loc1_.angle = this.GetAngle();
            while(true)
            {
               _loc1_.§^"6§ = this.§4">§;
               loop3:
               while(true)
               {
                  _loc1_.§3D§ = this.m_angularVelocity;
                  loop4:
                  while(_loc3_)
                  {
                     _loc1_.§7'§ = (this.§]!+§ & b2internal::&v) == b2internal::&v;
                     while(true)
                     {
                        _loc1_.§7@§ = (this.§]!+§ & b2internal::9G) == b2internal::9G;
                        loop6:
                        while(_loc3_)
                        {
                           _loc1_.§9!'§ = (this.§]!+§ & b2internal::>J) == b2internal::>J;
                           loop7:
                           while(_loc3_)
                           {
                              _loc1_.§8!M§ = this.§6!D§;
                              loop8:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    _loc1_.§ %§.SetV(this.GetLinearVelocity());
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop8;
                                       addr69:
                                       _loc1_.position = this.GetPosition();
                                       do
                                       {
                                          _loc1_.§ S§ = this.GetUserData();
                                       }
                                       while(_loc2_);
                                       
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             return _loc1_;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop7;
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr168);
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr69);
            }
         }
      }
      
      public function §!?§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(this.§0!,§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr193:
                        while(true)
                        {
                        }
                     }
                     addr180:
                  }
                  while(true)
                  {
                     §§push(this.§1!3§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§1!3§);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop6:
                           while(true)
                           {
                              §§push(param1.x);
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    while(_loc3_)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(this.§1!3§);
                                             if(_loc3_ || param1)
                                             {
                                                §§push(this.§1!3§);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop().y);
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(param1.y);
                                                      if(_loc4_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   if(_loc3_ || this)
                                                   {
                                                      §§pop().y = §§pop();
                                                      while(_loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr198);
                                                         }
                                                         §§push(this);
                                                         §§push(this.§ !v§);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(param2.x);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               §§push(this.m_sweep.c.x);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     addr57:
                                                                     §§push(param1.y);
                                                                     if(!(_loc4_ && param2))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           addr74:
                                                                           §§push(param2.y);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(this.m_sweep.c.y);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr105:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    addr102:
                                                                                    §§push(param1.x);
                                                                                 }
                                                                                 §§pop().§ !v§ = §§pop() + (§§pop() - §§pop());
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr105);
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§goto(addr102);
                                                                        }
                                                                     }
                                                                     §§goto(addr105);
                                                                  }
                                                                  §§goto(addr74);
                                                               }
                                                               §§goto(addr105);
                                                            }
                                                            §§goto(addr57);
                                                         }
                                                         §§goto(addr105);
                                                      }
                                                      continue;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop5;
                                             }
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr193);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr198:
            return;
         }
         §§goto(addr199);
      }
      
      public function §]!p§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§0!,§ == b2_dynamicBody)
            {
               loop0:
               while(this.IsAwake() == false)
               {
                  if(_loc3_)
                  {
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     this.SetAwake(true);
                  }
                  while(!_loc2_)
                  {
                     break loop0;
                  }
                  return;
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§ !v§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§ !v§ = §§pop();
                  if(!(_loc2_ && param1))
                  {
                     return;
                  }
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr95);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§0!,§ != b2_dynamicBody)
            {
               if(_loc4_ || param2)
               {
                  return;
               }
               while(true)
               {
               }
               addr247:
            }
            loop0:
            while(this.IsAwake() == false)
            {
               if(_loc4_ || param2)
               {
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  this.SetAwake(true);
               }
               while(true)
               {
                  break loop0;
               }
            }
            while(true)
            {
               §§push(this.§]!g§);
               loop2:
               while(true)
               {
                  §§push(this.§]!g§);
                  addr193:
                  while(true)
                  {
                     §§push(§§pop().x);
                     addr194:
                     while(true)
                     {
                        §§push(this.§@"!§);
                        addr196:
                        while(true)
                        {
                           §§push(param1.x);
                           addr198:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr199:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr200:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
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
         §§goto(addr247);
      }
      
      public function §'`§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.§[A§());
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§?Q§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§`0§(this.§#A§());
         var _loc8_:b2Fixture = _loc5_.§%!9§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc16_ || _loc2_)
               {
                  _loc5_.§"!N§();
                  if(!(_loc17_ && _loc2_))
                  {
                     break;
                  }
               }
               addr205:
               var _loc9_:b2Vec2 = _loc5_.§?Q§();
               var _loc10_:b2Vec2 = _loc6_.§?Q§();
               var _loc11_:b2Vec2 = b2Math.§'!c§(_loc2_,b2Math.§!!R§(_loc3_,b2Math.§ !r§(_loc9_,_loc4_)));
               var _loc12_:b2Vec2 = b2Math.§'!c§(_loc2_,b2Math.§!!R§(_loc3_,b2Math.§ !r§(_loc10_,_loc4_)));
               if(_loc16_ || param1)
               {
                  _loc5_.SetLinearVelocity(_loc11_);
                  loop1:
                  while(true)
                  {
                     _loc6_.SetLinearVelocity(_loc12_);
                     loop2:
                     while(true)
                     {
                        _loc5_.§5'§(_loc3_);
                        while(true)
                        {
                           _loc6_.§5'§(_loc3_);
                           loop4:
                           while(!(_loc17_ && param1))
                           {
                              if(!_loc17_)
                              {
                                 while(true)
                                 {
                                    _loc5_.§]"!§();
                                    while(!_loc17_)
                                    {
                                       _loc6_.§]"!§();
                                       if(_loc16_)
                                       {
                                          if(_loc17_ && _loc3_)
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr262);
                                          continue loop4;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 return _loc6_;
                                 addr262:
                                 addr282:
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               §§goto(addr282);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§7!'§;
                  continue;
               }
               if(!(_loc16_ || this))
               {
                  break;
               }
               _loc13_ = _loc8_.§7!'§;
               if(!(_loc17_ && param1))
               {
                  if(_loc7_)
                  {
                     if(!(_loc17_ && _loc3_))
                     {
                        _loc7_.§7!'§ = _loc13_;
                        if(!_loc17_)
                        {
                           addr101:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§93§);
                           if(!(_loc17_ && _loc2_))
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(!_loc17_)
                           {
                              _loc14_.§93§ = _loc15_;
                           }
                           if(!_loc17_)
                           {
                              _loc8_.§7!'§ = _loc6_.§%!9§;
                              if(_loc16_ || param1)
                              {
                                 addr134:
                                 _loc6_.§%!9§ = _loc8_;
                                 if(!_loc17_)
                                 {
                                    §§push((_loc14_ = _loc6_).§93§);
                                    if(_loc16_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc15_ = §§pop();
                                    if(!(_loc17_ && param1))
                                    {
                                       _loc14_.§93§ = _loc15_;
                                    }
                                    if(_loc16_)
                                    {
                                       addr171:
                                       _loc8_.m_body = _loc6_;
                                    }
                                 }
                                 §§goto(addr171);
                              }
                              _loc8_ = _loc13_;
                              continue;
                           }
                           §§goto(addr171);
                        }
                     }
                  }
                  else
                  {
                     _loc5_.§%!9§ = _loc13_;
                     if(!(_loc17_ && _loc3_))
                     {
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr134);
               }
               §§goto(addr171);
            }
         }
         _loc6_.§"!N§();
         §§goto(addr205);
      }
      
      public function override(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§%!9§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§7!'§;
            if(!(_loc15_ && _loc3_))
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§93§);
               if(_loc14_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(_loc14_)
               {
                  _loc12_.§93§ = _loc13_;
               }
               if(_loc14_ || _loc3_)
               {
                  addr67:
                  _loc2_.§7!'§ = this.§%!9§;
                  if(_loc14_)
                  {
                     this.§%!9§ = _loc2_;
                     if(!(_loc15_ && _loc2_))
                     {
                        §§push((_loc12_ = this).§93§);
                        if(_loc14_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc13_ = §§pop();
                        if(_loc14_)
                        {
                           _loc12_.§93§ = _loc13_;
                        }
                        if(_loc15_ && _loc3_)
                        {
                           continue;
                        }
                     }
                  }
               }
               _loc2_.m_body = _loc4_;
               continue;
            }
            §§goto(addr67);
         }
         if(!_loc15_)
         {
            _loc3_.§93§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§?Q§();
         var _loc6_:b2Vec2 = _loc4_.§?Q§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.§[A§());
         if(!(_loc15_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§[A§());
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!(_loc15_ && this))
         {
            _loc3_.§"!N§();
            do
            {
               this.§]"!§();
            }
            while(!(_loc14_ || this));
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§?j§;
      }
      
      public function §#!%§() : Number
      {
         return this.§,q§;
      }
      
      public function §!!o§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            param1.§3,§ = this.§?j§;
         }
         while(true)
         {
            param1.I = this.§,q§;
            while(_loc2_ || _loc3_)
            {
               param1.center.SetV(this.m_sweep.localCenter);
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §#!?§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§&<§());
            if(_loc3_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§&<§());
               while(true)
               {
                  §§push(true);
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(this.§0!,§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() == b2_dynamicBody)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§@"!§ = 0;
                                 loop6:
                                 while(true)
                                 {
                                    this.§,q§ = 0;
                                    loop7:
                                    while(true)
                                    {
                                       this.§=!N§ = 0;
                                       while(true)
                                       {
                                          this.§?j§ = param1.§3,§;
                                          loop9:
                                          for(; !_loc4_; if(_loc4_ && param1)
                                          {
                                             continue;
                                          },if(_loc3_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr44);
                                             }
                                             §§goto(addr301);
                                          })
                                          {
                                             §§push(this.§?j§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr231:
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§?j§ = 1;
                                                         addr235:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr232:
                                                   }
                                                   while(true)
                                                   {
                                                      this.§@"!§ = 1 / this.§?j§;
                                                      while(_loc3_ || param1)
                                                      {
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            if(_loc3_ || param1)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop3;
                                                         addr140:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  this.§=!N§ = 1 / this.§,q§;
                                                                  addr156:
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  addr133:
                                                                  while(!(_loc4_ && param1))
                                                                  {
                                                                     §§goto(addr140);
                                                                     §§goto(addr156);
                                                                  }
                                                                  loop19:
                                                                  while(_loc3_ || _loc3_)
                                                                  {
                                                                     addr197:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]!+§ & b2internal::&v);
                                                                        if(!(_loc3_ || _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr56:
                                                                        §§push(§§pop() == 0);
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           while(§§pop())
                                                                           {
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(param1.I);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(this.§?j§);
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          §§push(param1.center.x);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(param1.center);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc4_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      addr122:
                                                                                                      §§push(param1.center.y);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr129:
                                                                                                         §§push(§§pop() + §§pop() * param1.center.y);
                                                                                                      }
                                                                                                      §§goto(addr129);
                                                                                                   }
                                                                                                   addr132:
                                                                                                   §§pop().§,q§ = §§pop() - §§pop() * §§pop();
                                                                                                   addr131:
                                                                                                   §§goto(addr133);
                                                                                                }
                                                                                                §§goto(addr129);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr122);
                                                                                       }
                                                                                       §§goto(addr131);
                                                                                    }
                                                                                    §§goto(addr132);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr232);
                                                                                 }
                                                                              }
                                                                              §§goto(addr133);
                                                                              §§goto(addr56);
                                                                           }
                                                                           addr301:
                                                                           var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                                           if(_loc3_)
                                                                           {
                                                                              addr492:
                                                                              this.m_sweep.localCenter.SetV(param1.center);
                                                                              this.m_sweep.c0.SetV(b2Math.§#!K§(this.m_xf,this.m_sweep.localCenter));
                                                                              addr496:
                                                                              addr489:
                                                                              §§push(this.m_sweep);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§pop().c.SetV(this.m_sweep.c0);
                                                                                    addr419:
                                                                                    addr445:
                                                                                    addr444:
                                                                                    addr418:
                                                                                    addr416:
                                                                                    §§push(this.§]!g§);
                                                                                    §§push(this.§]!g§.x);
                                                                                    §§push(this.m_angularVelocity);
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       addr442:
                                                                                       §§push(this.m_sweep.c.y);
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          addr441:
                                                                                          §§push(§§pop() - _loc2_.y);
                                                                                       }
                                                                                       §§push(§§pop() * -§§pop());
                                                                                    }
                                                                                    §§pop().x = §§pop() + §§pop();
                                                                                    addr466:
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§push(this.§]!g§);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.§]!g§);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(this.m_angularVelocity);
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   §§push(this.m_sweep);
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc2_.x);
                                                                                                                  if(_loc3_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr382:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr386:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 if(_loc3_ || this)
                                                                                                                                 {
                                                                                                                                    if(!(_loc4_ && param1))
                                                                                                                                    {
                                                                                                                                       if(_loc4_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr496);
                                                                                                                                       }
                                                                                                                                       return;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr466);
                                                                                                                              }
                                                                                                                              §§goto(addr419);
                                                                                                                           }
                                                                                                                           §§goto(addr445);
                                                                                                                        }
                                                                                                                        §§goto(addr444);
                                                                                                                     }
                                                                                                                     §§goto(addr382);
                                                                                                                  }
                                                                                                                  §§goto(addr441);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr442);
                                                                                                         }
                                                                                                         §§goto(addr382);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr442);
                                                                                                }
                                                                                                §§goto(addr382);
                                                                                             }
                                                                                             §§goto(addr386);
                                                                                          }
                                                                                          §§goto(addr418);
                                                                                       }
                                                                                       §§goto(addr416);
                                                                                       addr453:
                                                                                    }
                                                                                    §§goto(addr489);
                                                                                 }
                                                                                 §§goto(addr492);
                                                                              }
                                                                              addr470:
                                                                              §§goto(addr470);
                                                                           }
                                                                           §§goto(addr453);
                                                                           addr65:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr189:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop19;
                                                                           }
                                                                           addr189:
                                                                        }
                                                                        §§goto(addr197);
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr133:
                                                                  continue loop5;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                      §§goto(addr235);
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
                     }
                  }
               }
            }
         }
      }
      
      public function §"!N§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2MassData = null;
         if(!(_loc6_ && _loc2_))
         {
            this.§?j§ = 0;
         }
         loop0:
         while(true)
         {
            this.§@"!§ = 0;
            while(true)
            {
               this.§,q§ = 0;
               loop2:
               for(; _loc5_; if(!(_loc5_ || _loc1_))
               {
                  continue;
               },if(false)
               {
                  §§goto(addr78);
               },§§goto(addr123))
               {
                  this.§=!N§ = 0;
                  loop3:
                  while(true)
                  {
                     this.m_sweep.localCenter.§?b§();
                     loop4:
                     for(; !_loc6_; if(!(_loc6_ && _loc2_))
                     {
                        return;
                     })
                     {
                        while(true)
                        {
                           §§push(this.§0!,§);
                           addr81:
                           while(true)
                           {
                              §§push(b2_staticBody);
                              addr82:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 addr83:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop3;
                                       }
                                       addr85:
                                    }
                                    else
                                    {
                                       while(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop4;
                                          }
                                          if(!(_loc6_ && _loc1_))
                                          {
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       addr123:
                                       var _loc1_:b2Vec2 = b2Vec2.§[]§(0,0);
                                       var _loc2_:b2Fixture = this.§%!9§;
                                       addr244:
                                       if(_loc2_)
                                       {
                                          §§push(_loc2_.§-k§);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(0);
                                             if(_loc5_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      addr240:
                                                      _loc2_ = _loc2_.§7!'§;
                                                      §§goto(addr244);
                                                   }
                                                   addr290:
                                                   if(false)
                                                   {
                                                      addr292:
                                                   }
                                                   var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                   if(_loc5_)
                                                   {
                                                      addr676:
                                                      this.m_sweep.localCenter.SetV(_loc1_);
                                                      addr679:
                                                      §§push(this.m_sweep);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§pop().c0.SetV(b2Math.§#!K§(this.m_xf,this.m_sweep.localCenter));
                                                         addr673:
                                                         §§push(this.m_sweep);
                                                         if(_loc5_)
                                                         {
                                                            §§pop().c.SetV(this.m_sweep.c0);
                                                            addr641:
                                                            if(_loc5_)
                                                            {
                                                               addr629:
                                                               this.§]!g§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
                                                               addr630:
                                                               addr619:
                                                               addr628:
                                                               addr626:
                                                               addr627:
                                                               addr625:
                                                               addr623:
                                                               addr622:
                                                               addr621:
                                                               addr617:
                                                               addr616:
                                                               §§push(this.§]!g§);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(this.§]!g§);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              §§push(this.m_angularVelocity);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §§push(this.m_sweep);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().c);
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(_loc3_.x);
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc5_ || _loc1_)
                                                                                                   {
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         addr577:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr588:
                                                                                                               §§pop().y = §§pop() + §§pop();
                                                                                                               if(_loc5_ || this)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc5_ || _loc1_))
                                                                                                                     {
                                                                                                                        §§goto(addr673);
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr641);
                                                                                                               }
                                                                                                               §§goto(addr630);
                                                                                                            }
                                                                                                            §§goto(addr619);
                                                                                                         }
                                                                                                         §§goto(addr628);
                                                                                                      }
                                                                                                      §§goto(addr626);
                                                                                                   }
                                                                                                   §§goto(addr627);
                                                                                                }
                                                                                                §§goto(addr577);
                                                                                             }
                                                                                             §§goto(addr625);
                                                                                          }
                                                                                          §§goto(addr623);
                                                                                       }
                                                                                       §§goto(addr577);
                                                                                    }
                                                                                    §§goto(addr622);
                                                                                 }
                                                                                 §§goto(addr621);
                                                                              }
                                                                              §§goto(addr577);
                                                                           }
                                                                           §§goto(addr617);
                                                                        }
                                                                        §§goto(addr629);
                                                                     }
                                                                     §§goto(addr588);
                                                                  }
                                                                  §§goto(addr616);
                                                               }
                                                               addr614:
                                                               §§goto(addr614);
                                                               addr643:
                                                            }
                                                         }
                                                         §§goto(addr679);
                                                      }
                                                      §§goto(addr676);
                                                   }
                                                   §§goto(addr643);
                                                }
                                                _loc4_ = _loc2_.§!!o§();
                                                if(!_loc6_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§?j§);
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      §§push(§§pop() + _loc4_.§3,§);
                                                   }
                                                   §§pop().§?j§ = §§pop();
                                                   §§push(_loc1_);
                                                   §§push(_loc1_.x);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc4_.center.x);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * _loc4_.§3,§);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().x = §§pop();
                                                   addr217:
                                                   if(_loc5_ || this)
                                                   {
                                                      addr177:
                                                      §§push(_loc1_);
                                                      §§push(_loc1_.y);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc4_.center.y);
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop() * _loc4_.§3,§);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().y = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§,q§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() + _loc4_.I);
                                                         }
                                                         §§pop().§,q§ = §§pop();
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr177);
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                         §§goto(addr177);
                                                         addr195:
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   addr239:
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr195);
                                             }
                                             addr429:
                                             §§push(§§pop() > §§pop());
                                             if(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr434:
                                                   §§pop();
                                                   addr435:
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push((this.§]!+§ & b2internal::&v) == 0);
                                                      if(!_loc6_)
                                                      {
                                                         addr384:
                                                         if(§§pop())
                                                         {
                                                            addr386:
                                                            §§push(this);
                                                            §§push(this.§,q§);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(this.§?j§);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(_loc1_.x);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(_loc1_.x);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr419:
                                                                        addr420:
                                                                        addr421:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc5_ || _loc1_)
                                                                        {
                                                                           §§push(_loc1_.y);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() * _loc1_.y);
                                                                           }
                                                                        }
                                                                        §§pop().§,q§ = §§pop() - §§pop() * §§pop();
                                                                        addr422:
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§,q§);
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * this.§9!?§);
                                                                           }
                                                                           §§pop().§,q§ = §§pop();
                                                                           addr372:
                                                                           if(_loc5_)
                                                                           {
                                                                              b2Settings.b2Assert(this.§,q§ > 0);
                                                                              addr347:
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    this.§=!N§ = 1 / this.§,q§;
                                                                                    addr315:
                                                                                    if(!(_loc6_ && _loc1_))
                                                                                    {
                                                                                       if(_loc6_ && _loc3_)
                                                                                       {
                                                                                          §§goto(addr372);
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 addr425:
                                                                                 §§goto(addr429);
                                                                                 §§push(this.§,q§);
                                                                                 §§push(0);
                                                                                 addr447:
                                                                              }
                                                                              §§goto(addr422);
                                                                              addr374:
                                                                           }
                                                                           §§goto(addr386);
                                                                           addr424:
                                                                        }
                                                                        §§goto(addr435);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr419);
                                                               }
                                                               §§goto(addr420);
                                                            }
                                                            §§goto(addr421);
                                                         }
                                                         this.§,q§ = 0;
                                                         addr298:
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               this.§=!N§ = 0;
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     §§goto(addr315);
                                                                  }
                                                                  §§goto(addr290);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            §§push(_loc1_);
                                                            §§push(_loc1_.y);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() * this.§@"!§);
                                                            }
                                                            §§pop().y = §§pop();
                                                            §§goto(addr425);
                                                            addr464:
                                                            addr474:
                                                         }
                                                         this.§@"!§ = 1;
                                                         §§goto(addr447);
                                                         addr453:
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr464);
                                                }
                                                §§goto(addr384);
                                             }
                                             §§goto(addr434);
                                          }
                                          §§goto(addr425);
                                       }
                                       if(_loc5_)
                                       {
                                          §§push(this.§?j§);
                                          if(!_loc6_)
                                          {
                                             §§push(0);
                                             if(_loc5_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      this.§@"!§ = 1 / this.§?j§;
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§push(_loc1_);
                                                         §§push(_loc1_.x);
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop() * this.§@"!§);
                                                         }
                                                         §§pop().x = §§pop();
                                                         §§goto(addr474);
                                                         addr276:
                                                      }
                                                      §§goto(addr424);
                                                   }
                                                   §§goto(addr276);
                                                }
                                                else
                                                {
                                                   this.§?j§ = 1;
                                                }
                                                §§goto(addr453);
                                             }
                                             §§goto(addr429);
                                          }
                                          §§goto(addr425);
                                       }
                                       §§goto(addr374);
                                       addr50:
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
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
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1.x);
            if(!(_loc5_ && _loc2_))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  §§push(_loc2_.col2.x);
                  if(!_loc5_)
                  {
                     §§push(param1.y);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr82);
               }
               addr62:
               §§push(§§pop() + §§pop());
               §§push(_loc2_.col1.y);
               if(_loc4_ || param1)
               {
                  addr82:
                  §§push(param1.x);
                  if(!_loc5_)
                  {
                     addr86:
                     §§push(§§pop() * §§pop());
                     if(_loc5_ && _loc3_)
                     {
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr99);
               }
               addr103:
               §§goto(addr94);
            }
            addr94:
            §§push(_loc2_.col2.y);
            if(!_loc5_)
            {
               addr99:
               §§push(§§pop() * param1.y);
            }
            var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
            if(!(_loc5_ && this))
            {
               §§push(_loc3_);
               §§push(_loc3_.x);
               if(_loc4_)
               {
                  §§push(§§pop() + this.m_xf.position.x);
               }
               §§pop().x = §§pop();
            }
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
            
            return _loc3_;
         }
         §§goto(addr62);
      }
      
      public function §!!7§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§<!G§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"!O§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#"-§(this.m_xf.R,param1);
      }
      
      public function §7V§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§]!g§.x);
         if(_loc3_)
         {
            §§push(this.m_angularVelocity);
            if(_loc3_ || param1)
            {
               §§push(param1.y);
               if(!_loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(!(_loc2_ && param1))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr68);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr107);
               }
               §§goto(addr113);
            }
            addr68:
            §§goto(addr69);
         }
         addr69:
         §§push(§§pop() - §§pop());
         §§push(this.§]!g§.y);
         if(!(_loc2_ && this))
         {
            addr79:
            §§push(this.m_angularVelocity);
            if(_loc3_ || param1)
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
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §["+§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!_loc5_)
         {
            §§push(param1.x);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && _loc2_))
               {
                  addr44:
                  §§push(_loc2_.col2.x);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(param1.y);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           addr66:
                           addr67:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc5_ && param1)
                           {
                           }
                           §§goto(addr103);
                        }
                        §§push(param1.x);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc5_ && param1))
                           {
                              §§push(_loc2_.col2.y);
                              if(_loc4_)
                              {
                                 addr99:
                                 §§push(§§pop() * param1.y);
                              }
                           }
                           §§goto(addr103);
                        }
                        addr103:
                        var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.x);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() + this.m_xf.position.x);
                           }
                           §§pop().x = §§pop();
                        }
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
                        
                        §§push(§§findproperty(b2Vec2));
                        §§push(this.§]!g§.x);
                        if(!_loc5_)
                        {
                           §§push(this.m_angularVelocity);
                           if(_loc4_)
                           {
                              §§push(_loc3_.y);
                              if(!_loc5_)
                              {
                                 §§push(this.m_sweep.c.y);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc4_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc5_ && this))
                                       {
                                          §§goto(addr161);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr161);
                        }
                        addr161:
                        §§push(§§pop() - §§pop());
                        §§push(this.§]!g§.y);
                        if(!_loc5_)
                        {
                           addr167:
                           §§push(this.m_angularVelocity);
                           if(_loc4_ || _loc3_)
                           {
                              addr176:
                              §§push(_loc3_.x);
                              if(_loc4_)
                              {
                                 addr185:
                                 §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                              }
                              §§goto(addr185);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr66);
               }
               §§goto(addr67);
            }
            §§goto(addr66);
         }
         §§goto(addr44);
      }
      
      public function §%!$§() : Number
      {
         return this.§6!D§;
      }
      
      public function § set§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§6!D§ = param1;
         }
      }
      
      public function §@!I§() : Number
      {
         return this.§4">§;
      }
      
      public function §23§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§4">§ = param1;
         }
      }
      
      public function §;!X§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§0!,§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr123:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr124:
                     return;
                  }
                  addr115:
                  while(true)
                  {
                     this.§0!,§ = param1;
                     addr119:
                     while(true)
                     {
                        this.§"!N§();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §;!F§() : uint
      {
         return this.§0!,§;
      }
      
      public function §?z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§]!+§ &= ~b2internal::9G;
               if(!(_loc3_ && param1))
               {
                  if(!(_loc2_ || _loc3_))
                  {
                     addr70:
                     this.§]!+§ |= b2internal::9G;
                     addr76:
                  }
                  else
                  {
                     addr57:
                  }
                  return;
               }
               §§goto(addr76);
            }
            §§goto(addr70);
         }
         §§goto(addr57);
      }
      
      public function §>S§() : Boolean
      {
         return (this.§]!+§ & b2internal::9G) == b2internal::9G;
      }
      
      public function §5Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!param1)
            {
               this.§]!+§ &= ~b2internal:: f;
               while(!(_loc3_ && _loc3_))
               {
                  this.SetAwake(true);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!(_loc2_ || param1))
                  {
                     addr82:
                     this.§]!+§ |= b2internal:: f;
                     break;
                  }
                  addr24:
                  return;
                  addr51:
               }
               §§goto(addr24);
            }
            §§goto(addr82);
         }
         §§goto(addr51);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!param1)
            {
               this.§]!+§ &= ~b2internal::>J;
               loop0:
               while(true)
               {
                  this.§>"'§ = 0;
                  loop1:
                  while(!_loc3_)
                  {
                     this.§]!g§.§?b§();
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           this.m_angularVelocity = 0;
                           while(!(_loc3_ && _loc3_))
                           {
                              this.§1!3§.§?b§();
                              while(_loc2_)
                              {
                                 this.§ !v§ = 0;
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    addr38:
                                 }
                                 else
                                 {
                                    §§goto(addr72);
                                 }
                                 §§goto(addr24);
                              }
                           }
                           continue loop1;
                        }
                        addr122:
                        addr128:
                        this.§]!+§ |= b2internal::>J;
                        while(true)
                        {
                           this.§>"'§ = 0;
                           break loop1;
                        }
                     }
                     return;
                  }
                  while(_loc3_ && _loc2_)
                  {
                     §§goto(addr128);
                  }
                  §§goto(addr24);
               }
            }
            §§goto(addr122);
         }
         §§goto(addr38);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§]!+§ & b2internal::>J) == b2internal::>J;
      }
      
      public function §0!o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§]!+§ &= ~b2internal::&v;
               loop0:
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        continue;
                     }
                     addr72:
                     while(true)
                     {
                        this.§]!+§ |= b2internal::&v;
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      public function §8"+§() : Boolean
      {
         return (this.§]!+§ & b2internal::&v) == b2internal::&v;
      }
      
      public function §=T§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§0w§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() == this.§0!9§())
               {
                  if(_loc6_ || _loc2_)
                  {
                     return;
                  }
                  addr61:
                  _loc2_ = this.m_world.§>"7§.§58§;
                  _loc3_ = this.§%!9§;
                  while(_loc3_)
                  {
                     _loc3_.§1S§(_loc2_,this.m_xf);
                     if(_loc7_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§7!'§;
                  }
               }
               else
               {
                  addr52:
                  if(param1)
                  {
                     if(!_loc7_)
                     {
                        addr55:
                        this.§]!+§ |= b2internal::&!";
                     }
                     §§goto(addr61);
                  }
                  else
                  {
                     this.§]!+§ &= ~b2internal::&!";
                     _loc2_ = this.m_world.§>"7§.§58§;
                     _loc3_ = this.§%!9§;
                     if(!(_loc7_ && _loc3_))
                     {
                        loop1:
                        while(_loc3_)
                        {
                           _loc3_.§`q§(_loc2_);
                           if(!_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              _loc3_ = _loc3_.§7!'§;
                              continue loop1;
                           }
                        }
                        _loc4_ = this.§<W§;
                        if(!(_loc7_ && _loc3_))
                        {
                           while(_loc4_)
                           {
                              _loc5_ = _loc4_;
                              _loc4_ = _loc4_.§>"2§;
                              if(_loc6_ || _loc2_)
                              {
                                 this.m_world.§>"7§.§3!0§(_loc5_.§6M§);
                              }
                           }
                           if(_loc6_ || this)
                           {
                              this.§<W§ = null;
                           }
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr128);
                  }
               }
               addr189:
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr55);
      }
      
      public function §0!9§() : Boolean
      {
         return (this.§]!+§ & b2internal::&!") == b2internal::&!";
      }
      
      public function §1!$§() : Boolean
      {
         return (this.§]!+§ & b2internal:: f) == b2internal:: f;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§%!9§;
      }
      
      public function §-]§() : b2JointEdge
      {
         return this.§,!j§;
      }
      
      public function §"!_§() : b2ControllerEdge
      {
         return this.§`"=§;
      }
      
      public function §3!$§() : b2ContactEdge
      {
         return this.§<W§;
      }
      
      public function §7"3§() : b2Body
      {
         return this.§7!'§;
      }
      
      public function GetUserData() : *
      {
         return this.§5![§;
      }
      
      public function §"%§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5![§ = param1;
         }
      }
      
      public function §4K§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §]"!§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §6V§;
         if(_loc6_ || _loc2_)
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
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc1_.position);
               if(_loc6_ || _loc3_)
               {
                  §§push(this.m_sweep);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop().c0);
                     if(_loc6_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc7_ && this))
                        {
                           §§push(_loc2_.col1);
                           if(_loc6_)
                           {
                              §§push(§§pop().x);
                              if(_loc6_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc7_)
                                          {
                                             §§push(_loc3_.y);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   addr135:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc6_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            addr149:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(_loc6_)
                                                            {
                                                               addr154:
                                                               §§push(_loc2_.col1.y);
                                                               if(_loc6_)
                                                               {
                                                                  addr157:
                                                                  §§push(_loc3_.x);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr171:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(_loc7_ && _loc2_)
                                                                        {
                                                                        }
                                                                        addr184:
                                                                        §§pop().y = §§pop() - (§§pop() + §§pop());
                                                                        addr185:
                                                                        var _loc5_:§0w§ = this.m_world.§>"7§.§58§;
                                                                        _loc4_ = this.§%!9§;
                                                                        while(_loc4_)
                                                                        {
                                                                           _loc4_.§0Z§(_loc5_,_loc1_,this.m_xf);
                                                                           if(!(_loc6_ || _loc1_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc4_ = _loc4_.§7!'§;
                                                                        }
                                                                        return;
                                                                        addr183:
                                                                        addr182:
                                                                     }
                                                                     §§goto(addr183);
                                                                  }
                                                                  §§push(§§pop() * _loc3_.y);
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            §§goto(addr184);
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr135);
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr171);
                     }
                  }
               }
               §§goto(addr149);
            }
            §§goto(addr171);
         }
         §§goto(addr37);
      }
      
      b2internal function §=&§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.m_xf);
            if(!_loc3_)
            {
               §§push(§§pop().R);
               if(_loc4_ || _loc2_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr42:
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
                              if(!_loc3_)
                              {
                                 §§push(_loc1_.col1);
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr181:
                                    addr97:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       addr183:
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(_loc1_.col2);
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr204:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr206:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr207:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                }
                                                addr137:
                                                §§push(_loc1_.col2);
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc4_)
                                                {
                                                   addr149:
                                                   §§push(_loc2_.y);
                                                   if(_loc4_)
                                                   {
                                                      addr154:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc3_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc4_)
                                                      {
                                                         addr160:
                                                         §§pop().y = §§pop() - §§pop();
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            return;
                                                            addr168:
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr206);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr209:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr208:
                                                }
                                                §§goto(addr154);
                                             }
                                          }
                                          §§goto(addr208);
                                       }
                                    }
                                    §§push(_loc1_.col1);
                                    if(_loc3_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop().y);
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(_loc2_.x);
                                          if(!_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§goto(addr137);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr149);
                                       }
                                       else
                                       {
                                          §§goto(addr181);
                                       }
                                    }
                                    §§goto(addr157);
                                 }
                              }
                              §§goto(addr209);
                           }
                        }
                     }
                  }
               }
               §§goto(addr168);
            }
         }
         §§goto(addr42);
      }
      
      b2internal function §5"8§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§0!,§);
            if(!_loc4_)
            {
               §§push(b2_dynamicBody);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr45:
                              §§pop();
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr56:
                                 §§push(param1.§0!,§ == b2_dynamicBody);
                                 if(_loc3_)
                                 {
                                    addr69:
                                    §§push(!§§pop());
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr77:
                                       if(§§pop())
                                       {
                                          if(_loc4_ && param1)
                                          {
                                             addr87:
                                             var _loc2_:b2JointEdge = this.§,!j§;
                                             for(; _loc2_; _loc2_ = _loc2_.§>"2§)
                                             {
                                                if(_loc2_.§;5§ == param1)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(_loc2_.§"!3§.§6I§);
                                                      if(_loc3_)
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
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr136);
                                                         }
                                                      }
                                                      return §§pop();
                                                   }
                                                   break;
                                                }
                                             }
                                             addr136:
                                             return §§pop();
                                             §§push(true);
                                          }
                                       }
                                       §§goto(addr87);
                                    }
                                    §§goto(addr86);
                                 }
                                 §§goto(addr77);
                              }
                              §§push(false);
                           }
                           addr86:
                           return §§pop();
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr45);
               }
            }
            §§goto(addr56);
         }
         §§goto(addr87);
      }
      
      b2internal function §%E§(param1:Number) : void
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
               addr105:
               while(true)
               {
                  §§pop().§%E§(§§pop());
                  addr106:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     loop3:
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        addr101:
                        while(true)
                        {
                           §§push(this.m_sweep);
                           if(_loc3_ || param1)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
   }
}
