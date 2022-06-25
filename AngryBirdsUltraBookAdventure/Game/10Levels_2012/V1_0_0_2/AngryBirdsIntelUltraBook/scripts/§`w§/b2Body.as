package §`w§
{
   import §!!R§.b2ControllerEdge;
   import §2!+§.b2EdgeShape;
   import §2!+§.b2MassData;
   import §2!+§.b2Shape;
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.§<X§;
   import §9!"§.b2JointEdge;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Sweep;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   import §break§.b2Contact;
   import §break§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §%!`§:b2Transform;
      
      b2internal static var §#!`§:uint = 1;
      
      b2internal static var §1"§:uint = 2;
      
      b2internal static var §?!O§:uint = 4;
      
      b2internal static var §%6§:uint = 8;
      
      b2internal static var §'U§:uint = 16;
      
      b2internal static var §1T§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §%!`§ = new b2Transform();
         }
         loop0:
         while(true)
         {
            §#!`§ = 1;
            while(true)
            {
               §1"§ = 2;
               addr135:
               while(true)
               {
                  §?!O§ = 4;
                  continue loop0;
               }
               addr72:
               if(!(_loc2_ && _loc2_))
               {
                  b2_dynamicBody = 2;
                  addr79:
                  if(_loc1_ || _loc2_)
                  {
                     return;
                  }
                  loop8:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        addr46:
                        if(_loc1_ || b2Body)
                        {
                           addr53:
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§goto(addr72);
                           }
                           else
                           {
                              while(true)
                              {
                                 §'U§ = 16;
                                 loop5:
                                 while(true)
                                 {
                                    §1T§ = 32;
                                    addr89:
                                    while(true)
                                    {
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       b2_staticBody = 0;
                                       while(true)
                                       {
                                          b2_kinematicBody = 1;
                                          continue loop8;
                                       }
                                       §§goto(addr46);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr53);
                              }
                              addr118:
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr84);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      b2internal var §;!R§:uint;
      
      b2internal var §+!?§:int;
      
      b2internal var §>!c§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §^O§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §84§:b2Vec2;
      
      b2internal var §3!T§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §-!I§:b2Body;
      
      b2internal var §3=§:b2Body;
      
      b2internal var §92§:b2Fixture;
      
      b2internal var §+q§:int;
      
      b2internal var §-_§:b2ControllerEdge;
      
      b2internal var § !>§:int;
      
      b2internal var §"O§:b2JointEdge;
      
      b2internal var §]3§:b2ContactEdge;
      
      b2internal var §,0§:Number;
      
      b2internal var §7n§:Number;
      
      b2internal var §'v§:Number;
      
      b2internal var §;5§:Number;
      
      b2internal var §'!x§:Number;
      
      b2internal var §[s§:Number;
      
      b2internal var §[!j§:Number;
      
      b2internal var §@!#§:Number;
      
      private var §?f§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.m_xf = new b2Transform();
            loop0:
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§^O§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§84§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(_loc6_)
                        {
                           this.§;!R§ = 0;
                           loop5:
                           while(true)
                           {
                              §§push(param1.§,$§);
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       this.§;!R§ |= b2internal::%6;
                                       loop7:
                                       while(true)
                                       {
                                          addr188:
                                          while(true)
                                          {
                                             §§push(param1.§do§);
                                             loop9:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop10:
                                                   while(_loc6_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      this.§;!R§ |= b2internal::'U;
                                                      while(true)
                                                      {
                                                         addr107:
                                                         if(!(_loc6_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(this.m_xf);
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().position.SetV(param1.position);
                                                            addr91:
                                                            §§push(this.m_xf);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop().R);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§pop().Set(param1.angle);
                                                                  addr37:
                                                                  addr81:
                                                                  §§push(this.m_sweep);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§pop().localCenter.§`!5§();
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§push(this.m_sweep);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              §§pop().§3J§ = 1;
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr37);
                                                                                    }
                                                                                    addr257:
                                                                                    this.m_sweep.a0 = this.m_sweep.a = param1.angle;
                                                                                    addr270:
                                                                                    var _loc3_:b2Mat22 = this.m_xf.R;
                                                                                    var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                                                    addr267:
                                                                                    addr269:
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       addr807:
                                                                                       §§push(this.m_sweep.c);
                                                                                       §§push(_loc3_.col1.x);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr785:
                                                                                          §§push(§§pop() * _loc4_.x);
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             addr806:
                                                                                             §§push(_loc3_.col2.x);
                                                                                             if(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                addr805:
                                                                                                §§push(§§pop() * _loc4_.y);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                       }
                                                                                       §§pop().x = §§pop();
                                                                                    }
                                                                                    addr808:
                                                                                    §§push(this.m_sweep.c);
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       §§push(_loc3_.col1);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr732:
                                                                                          §§push(§§pop().y * _loc4_.x);
                                                                                          §§push(_loc3_.col2);
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             addr743:
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                §§push(_loc4_.y);
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   addr760:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr763:
                                                                                                      §§pop().y = §§pop() + §§pop();
                                                                                                      addr764:
                                                                                                      §§push(this.m_sweep);
                                                                                                      if(!(_loc7_ && param2))
                                                                                                      {
                                                                                                         addr685:
                                                                                                         §§push(§§pop().c);
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            addr696:
                                                                                                            §§push(this.m_sweep.c.x);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr702:
                                                                                                               §§push(this.m_xf.position.x);
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr705:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc6_ || param2)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     addr713:
                                                                                                                     §§push(this.m_sweep);
                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(this.m_sweep);
                                                                                                                              if(!(_loc7_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ && param2))
                                                                                                                                       {
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§push(this.m_xf);
                                                                                                                                             if(_loc6_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().position);
                                                                                                                                                if(!(_loc7_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc7_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr668:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  addr673:
                                                                                                                                                                  §§push(this.m_sweep);
                                                                                                                                                                  if(!(_loc7_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                                                     this.§"O§ = null;
                                                                                                                                                                     this.§-_§ = null;
                                                                                                                                                                     this.§]3§ = null;
                                                                                                                                                                     this.§ !>§ = 0;
                                                                                                                                                                     this.§-!I§ = null;
                                                                                                                                                                     this.§3=§ = null;
                                                                                                                                                                     addr567:
                                                                                                                                                                     addr562:
                                                                                                                                                                     addr588:
                                                                                                                                                                     addr552:
                                                                                                                                                                     addr557:
                                                                                                                                                                     if(_loc6_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        this.§^O§.SetV(param1.§,W§);
                                                                                                                                                                        this.m_angularVelocity = param1.§"!T§;
                                                                                                                                                                        addr519:
                                                                                                                                                                        addr535:
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              this.§[s§ = param1.§2!s§;
                                                                                                                                                                              addr511:
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§[!j§ = param1.§!!J§;
                                                                                                                                                                                 addr496:
                                                                                                                                                                                 if(_loc6_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§84§.Set(0,0);
                                                                                                                                                                                       this.§3!T§ = 0;
                                                                                                                                                                                       addr490:
                                                                                                                                                                                       if(!(_loc7_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc6_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§@!#§ = 0;
                                                                                                                                                                                             this.§+!?§ = param1.type;
                                                                                                                                                                                             addr464:
                                                                                                                                                                                             addr459:
                                                                                                                                                                                             if(this.§+!?§ == b2_dynamicBody)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr441:
                                                                                                                                                                                                if(_loc6_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§,0§ = 1;
                                                                                                                                                                                                   addr451:
                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§7n§ = 1;
                                                                                                                                                                                                      addr433:
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr412:
                                                                                                                                                                                                         this.§'v§ = 0;
                                                                                                                                                                                                         this.§;5§ = 0;
                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§'!x§ = param1.§4!D§;
                                                                                                                                                                                                               addr353:
                                                                                                                                                                                                               if(!(_loc7_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc7_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc6_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc6_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc6_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§?f§ = param1.§+!+§;
                                                                                                                                                                                                                                    addr345:
                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§92§ = null;
                                                                                                                                                                                                                                       addr323:
                                                                                                                                                                                                                                       if(_loc6_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc6_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§+q§ = 0;
                                                                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc7_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc7_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc7_ && this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr519);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            return;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr496);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr441);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr345);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr323);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr464);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr451);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr353);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    this.§7n§ = 0;
                                                                                                                                                                                                                                    addr421:
                                                                                                                                                                                                                                    §§goto(addr412);
                                                                                                                                                                                                                                    addr428:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr567);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr511);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr490);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr433);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr421);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr412);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr459);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr416:
                                                                                                                                                                                                         §§goto(addr416);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr764);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr535);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr808);
                                                                                                                                                                                             }
                                                                                                                                                                                             this.§,0§ = 0;
                                                                                                                                                                                             §§goto(addr428);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr713);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr562);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr588);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr567);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr552);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr673);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr557);
                                                                                                                                                                     }
                                                                                                                                                                     addr572:
                                                                                                                                                                     §§goto(addr572);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr713);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr807);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr696);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr732);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr760);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr702);
                                                                                                                                          }
                                                                                                                                          §§goto(addr732);
                                                                                                                                       }
                                                                                                                                       §§goto(addr705);
                                                                                                                                    }
                                                                                                                                    §§goto(addr668);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr696);
                                                                                                                           }
                                                                                                                           §§goto(addr685);
                                                                                                                        }
                                                                                                                        §§goto(addr807);
                                                                                                                     }
                                                                                                                     §§goto(addr764);
                                                                                                                  }
                                                                                                                  §§goto(addr732);
                                                                                                               }
                                                                                                               §§goto(addr743);
                                                                                                            }
                                                                                                            §§goto(addr763);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr808);
                                                                                                   }
                                                                                                   §§goto(addr806);
                                                                                                }
                                                                                                §§goto(addr805);
                                                                                             }
                                                                                             §§goto(addr785);
                                                                                          }
                                                                                          §§goto(addr806);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr807);
                                                                                 }
                                                                                 §§goto(addr81);
                                                                              }
                                                                              §§goto(addr267);
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§goto(addr91);
                                                                     }
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr270);
                                                            }
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§import§);
                                                   loop13:
                                                   for(; _loc6_; loop16:
                                                   while(_loc6_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         addr167:
                                                         while(true)
                                                         {
                                                            addr100:
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr107);
                                                         }
                                                         addr167:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param1.§,O§);
                                                         if(!_loc6_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop5;
                                                            }
                                                            addr140:
                                                            while(true)
                                                            {
                                                            }
                                                            addr140:
                                                         }
                                                         while(true)
                                                         {
                                                            this.m_world = param2;
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr100);
                                                            }
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr187);
                                                   })
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue loop0;
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(param1.§!,§);
                                                         continue loop13;
                                                         addr187:
                                                         while(true)
                                                         {
                                                            continue loop15;
                                                         }
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr188);
                              }
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              this.§;!R§ |= b2internal::1T;
                              §§goto(addr140);
                           }
                           if(!(_loc6_ || param2))
                           {
                              continue;
                           }
                           this.§;!R§ |= b2internal::1";
                           §§goto(addr167);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr187);
      }
      
      private function §1R§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§'!!§().y,param2.§'!!§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§3!O§(_loc5_,param2.§'!!§());
         _loc6_ = b2Math.§54§(_loc6_,param2.§77§());
         _loc6_ = b2Math.§3!O§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§,x§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§,x§(param1.§'!!§(),param2.§'!!§())).Normalize();
         var _loc8_:* = b2Math.§'l§(param1.§'!!§(),param2.§77§()) > 0;
         if(_loc9_ || this)
         {
            param1.§-!g§(param2,_loc6_,_loc7_,_loc8_);
         }
         do
         {
            param2.§?d§(param1,_loc6_,_loc7_,_loc8_);
         }
         while(!_loc9_);
         
         return _loc4_;
      }
      
      public function §'[§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§<X§ = null;
         if(!_loc6_)
         {
            if(this.m_world.§3C§() == true)
            {
               if(_loc7_ || this)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Fixture = new b2Fixture();
         if(_loc7_ || _loc3_)
         {
            _loc2_.§`4§(this,this.m_xf,param1);
            if(!(_loc6_ && this))
            {
               if(this.§;!R§ & b2internal::1T)
               {
                  if(_loc7_)
                  {
                     §§push(this.m_world);
                     if(!(_loc6_ && param1))
                     {
                        _loc3_ = §§pop().§`!n§.§<Z§;
                        if(_loc7_)
                        {
                           _loc2_.§0!S§(_loc3_,this.m_xf);
                           addr97:
                           _loc2_.§3=§ = this.§92§;
                           if(_loc7_)
                           {
                              this.§92§ = _loc2_;
                              if(_loc7_ || _loc3_)
                              {
                                 addr113:
                                 var _loc4_:*;
                                 §§push((_loc4_ = this).§+q§);
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(_loc7_ || _loc3_)
                                 {
                                    _loc4_.§+q§ = _loc5_;
                                 }
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    _loc2_.m_body = this;
                                    addr201:
                                    loop2:
                                    for(; _loc2_.§7!%§ > 0; if(!(_loc7_ || this))
                                    {
                                       continue;
                                    })
                                    {
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       addr197:
                                       while(true)
                                       {
                                          break loop2;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.m_world);
                                       §§goto(addr154);
                                    }
                                    addr201:
                                 }
                                 §§goto(addr201);
                              }
                              this.§2!D§();
                              §§goto(addr197);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr97);
                     }
                     addr154:
                     §§goto(addr180);
                  }
                  §§goto(addr113);
               }
               §§goto(addr97);
            }
            §§goto(addr201);
         }
         addr180:
         while(true)
         {
            §§push(this.m_world.§;!R§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() | b2World.§?!;§);
            }
            §§pop().§;!R§ = §§pop();
            if(_loc7_)
            {
               break;
            }
            §§goto(addr197);
            continue loop3;
         }
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(!(_loc5_ && param2))
         {
            _loc3_.shape = param1;
            do
            {
               _loc3_.density = param2;
            }
            while(_loc5_);
            
         }
         return this.§'[§(_loc3_);
      }
      
      public function §?E§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§<X§ = null;
         if(!_loc12_)
         {
            if(this.m_world.§3C§() == true)
            {
               if(_loc13_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§92§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§3=§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            while(true)
            {
               if(!_loc3_)
               {
                  this.§92§ = param1.§3=§;
                  if(!(_loc12_ && _loc2_))
                  {
                     if(!(_loc12_ && param1))
                     {
                        loop2:
                        while(true)
                        {
                           _loc4_ = true;
                           if(!_loc13_)
                           {
                              break loop0;
                           }
                           if(!_loc13_)
                           {
                              break;
                           }
                           if(true)
                           {
                              break loop0;
                           }
                           addr58:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        continue;
                     }
                     addr87:
                     _loc3_.§3=§ = param1.§3=§;
                     if(_loc12_)
                     {
                     }
                     break loop0;
                     §§goto(addr58);
                  }
                  break loop0;
               }
               §§goto(addr87);
            }
         }
         var _loc5_:b2ContactEdge = this.§]3§;
         if(_loc13_ || this)
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§+2§;
               _loc5_ = _loc5_.§-!3§;
               _loc7_ = _loc6_.§?!l§();
               _loc8_ = _loc6_.§0+§();
               if(!(_loc13_ || this))
               {
                  continue;
               }
               §§push(param1 == _loc7_);
               if(_loc13_ || param1)
               {
                  if(!§§pop())
                  {
                     if(!(_loc12_ && this))
                     {
                        §§pop();
                        if(_loc13_)
                        {
                           addr176:
                           if(param1 != _loc8_)
                           {
                              continue;
                           }
                           if(!_loc13_)
                           {
                              continue;
                           }
                        }
                        this.m_world.§`!n§.§[M§(_loc6_);
                        continue;
                     }
                  }
               }
               §§goto(addr176);
            }
            if(!_loc12_)
            {
               if(this.§;!R§ & b2internal::1T)
               {
                  if(!_loc12_)
                  {
                     addr195:
                     _loc9_ = this.m_world.§`!n§.§<Z§;
                     if(_loc13_)
                     {
                        param1.§!O§(_loc9_);
                        addr206:
                        param1.§[M§();
                        if(_loc13_ || param1)
                        {
                           param1.m_body = null;
                           if(_loc13_ || this)
                           {
                              param1.§3=§ = null;
                              §§goto(addr225);
                           }
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr206);
                  }
                  addr225:
                  if(_loc13_)
                  {
                     addr240:
                     var _loc10_:*;
                     §§push((_loc10_ = this).§+q§);
                     if(!_loc12_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc11_:* = §§pop();
                     if(_loc13_)
                     {
                        _loc10_.§+q§ = _loc11_;
                     }
                     if(!(_loc12_ && _loc2_))
                     {
                        addr262:
                        this.§2!D§();
                     }
                  }
                  return;
               }
               §§goto(addr206);
            }
            §§goto(addr195);
         }
         §§goto(addr262);
      }
      
      public function §5!N§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(!(_loc8_ && _loc3_))
         {
            if(this.m_world.§3C§() == true)
            {
               if(!(_loc8_ && _loc3_))
               {
                  return;
               }
               loop0:
               while(true)
               {
                  while(true)
                  {
                     if(!(_loc8_ && param2))
                     {
                        §§push(this.m_xf);
                        if(!_loc9_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr45);
         }
         §§goto(addr43);
      }
      
      public function §>v§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§5!N§(param1.position,param1.GetAngle());
         }
      }
      
      public function §2!0§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §`!'§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§5!N§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §,v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§5!N§(this.GetPosition(),param1);
         }
      }
      
      public function §[!S§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function § !&§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§+!?§ != b2_staticBody)
            {
               do
               {
                  this.§^O§.SetV(param1);
               }
               while(!(_loc3_ || param1));
               
               if(!(_loc2_ && param1))
               {
                  return;
               }
            }
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§^O§;
      }
      
      public function §@X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§+!?§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.m_angularVelocity = param1;
                  if(_loc3_)
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
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §-!]§() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc3_)
         {
            _loc1_.type = this.§2!r§();
            loop0:
            while(true)
            {
               _loc1_.§import§ = (this.§;!R§ & b2internal::?!O) == b2internal::?!O;
               loop1:
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  loop2:
                  while(true)
                  {
                     _loc1_.§!!J§ = this.§[!j§;
                     while(true)
                     {
                        _loc1_.§"!T§ = this.m_angularVelocity;
                        continue loop0;
                        addr126:
                        if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        }
                        _loc1_.§,$§ = (this.§;!R§ & b2internal::%6) == b2internal::%6;
                        loop6:
                        while(true)
                        {
                           _loc1_.§!,§ = (this.§;!R§ & b2internal::1") == b2internal::1";
                           loop7:
                           while(true)
                           {
                              _loc1_.§2!s§ = this.§[s§;
                              addr75:
                              addr119:
                              while(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.§,W§.SetV(this.GetLinearVelocity());
                                    loop9:
                                    while(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop7;
                                          while(true)
                                          {
                                             _loc1_.position = this.GetPosition();
                                             do
                                             {
                                                _loc1_.§+!+§ = this.GetUserData();
                                             }
                                             while(!(_loc3_ || _loc2_));
                                             
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop6;
                                          return _loc1_;
                                       }
                                       continue loop1;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              while(_loc3_ || _loc3_)
                              {
                                 §§goto(addr126);
                                 §§goto(addr75);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §^=§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§+!?§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr214:
                        while(true)
                        {
                        }
                     }
                     addr211:
                  }
                  while(true)
                  {
                     §§push(this.§84§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§84§);
                        addr200:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr201:
                           while(true)
                           {
                              §§push(param1.x);
                              addr203:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr204:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr219);
         }
         §§goto(addr205);
      }
      
      public function §>F§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§+!?§ == b2_dynamicBody)
            {
               loop0:
               do
               {
                  if(this.IsAwake() == false)
                  {
                     if(_loc2_)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr84);
                        }
                        while(true)
                        {
                           this.SetAwake(true);
                        }
                     }
                     loop1:
                     while(true)
                     {
                        addr23:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§3!T§);
                           if(_loc2_ || param1)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§3!T§ = §§pop();
                           if(!(_loc3_ && this))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr23);
               }
               while(_loc3_);
               
               return;
            }
            addr84:
            return;
         }
         §§goto(addr76);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§+!?§ == b2_dynamicBody)
            {
               loop0:
               while(this.IsAwake() == false)
               {
                  if(!_loc4_)
                  {
                     if(!(_loc3_ || param2))
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
                  §§push(this.§^O§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§^O§);
                     addr177:
                     while(true)
                     {
                        §§push(§§pop().x);
                        if(_loc3_ || _loc3_)
                        {
                           addr197:
                           §§push(this.§7n§);
                           while(true)
                           {
                              §§push(param1.x);
                              addr199:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr200:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                 }
                              }
                           }
                           addr197:
                        }
                        addr201:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr225);
         }
         §§goto(addr115);
      }
      
      public function §>!$§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(!(_loc16_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§[!S§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§04§(this.§-!]§());
         var _loc8_:b2Fixture = _loc5_.§92§;
         while(true)
         {
            if(!_loc8_)
            {
               if(!(_loc16_ && _loc3_))
               {
                  _loc5_.§2!D§();
                  if(!(_loc16_ && this))
                  {
                     addr204:
                     _loc6_.§2!D§();
                     break;
                  }
                  break;
               }
               §§goto(addr204);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§3=§;
                  continue;
               }
               if(_loc16_ && this)
               {
                  break;
               }
               _loc13_ = _loc8_.§3=§;
               if(!_loc16_)
               {
                  if(_loc7_)
                  {
                     if(!_loc16_)
                     {
                        _loc7_.§3=§ = _loc13_;
                        if(_loc17_ || _loc3_)
                        {
                        }
                        addr97:
                        var _loc14_:*;
                        §§push((_loc14_ = _loc5_).§+q§);
                        if(_loc17_ || param1)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc15_:* = §§pop();
                        if(_loc17_)
                        {
                           _loc14_.§+q§ = _loc15_;
                        }
                        if(_loc17_)
                        {
                           _loc8_.§3=§ = _loc6_.§92§;
                           if(_loc17_ || _loc3_)
                           {
                           }
                           addr175:
                           _loc8_ = _loc13_;
                           continue;
                        }
                        _loc6_.§92§ = _loc8_;
                        if(!_loc16_)
                        {
                           addr135:
                           §§push((_loc14_ = _loc6_).§+q§);
                           if(_loc17_ || param1)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc15_ = §§pop();
                           if(!_loc16_)
                           {
                              _loc14_.§+q§ = _loc15_;
                           }
                           if(!(_loc16_ && _loc2_))
                           {
                              addr172:
                              _loc8_.m_body = _loc6_;
                           }
                        }
                     }
                     §§goto(addr175);
                  }
                  else
                  {
                     _loc5_.§92§ = _loc13_;
                     if(!_loc16_)
                     {
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr172);
               }
               §§goto(addr135);
            }
         }
         var _loc9_:b2Vec2 = _loc5_.§[!S§();
         var _loc10_:b2Vec2 = _loc6_.§[!S§();
         var _loc11_:b2Vec2 = b2Math.§,x§(_loc2_,b2Math.§;C§(_loc3_,b2Math.§54§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§,x§(_loc2_,b2Math.§;C§(_loc3_,b2Math.§54§(_loc10_,_loc4_)));
         if(!(_loc16_ && _loc3_))
         {
            _loc5_.SetLinearVelocity(_loc11_);
            loop1:
            while(true)
            {
               _loc6_.SetLinearVelocity(_loc12_);
               while(true)
               {
                  _loc5_.§@X§(_loc3_);
                  loop4:
                  for(; _loc17_ || param1; if(_loc17_ || param1)
                  {
                     return _loc6_;
                  })
                  {
                     _loc5_.§-!6§();
                     while(!_loc16_)
                     {
                        if(_loc17_)
                        {
                           _loc6_.§-!6§();
                           if(_loc17_)
                           {
                              continue loop4;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        _loc6_.§@X§(_loc3_);
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr298);
      }
      
      public function §39§(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§92§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§3=§;
            if(!_loc15_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§+q§);
               if(!(_loc15_ && this))
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!(_loc15_ && this))
               {
                  _loc12_.§+q§ = _loc13_;
               }
               if(_loc14_ || _loc2_)
               {
                  _loc2_.§3=§ = this.§92§;
                  if(_loc15_ && param1)
                  {
                     continue;
                  }
                  this.§92§ = _loc2_;
                  if(!(_loc15_ && _loc2_))
                  {
                     addr93:
                     §§push((_loc12_ = this).§+q§);
                     if(_loc14_ || this)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc13_ = §§pop();
                     if(!_loc15_)
                     {
                        _loc12_.§+q§ = _loc13_;
                     }
                     if(_loc15_ && param1)
                     {
                        continue;
                     }
                  }
               }
               _loc2_.m_body = _loc4_;
               continue;
            }
            §§goto(addr93);
         }
         if(_loc14_)
         {
            _loc3_.§+q§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§[!S§();
         var _loc6_:b2Vec2 = _loc4_.§[!S§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(_loc14_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(!(_loc15_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!(_loc15_ && param1))
         {
            _loc3_.§2!D§();
         }
         do
         {
            this.§-!6§();
         }
         while(!(_loc14_ || _loc3_));
         
      }
      
      public function GetMass() : Number
      {
         return this.§,0§;
      }
      
      public function §[D§() : Number
      {
         return this.§'v§;
      }
      
      public function §!!+§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§@K§ = this.§,0§;
            while(true)
            {
               param1.§8`§ = this.§'v§;
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            param1.center.SetV(this.m_sweep.localCenter);
            if(!(_loc2_ && this))
            {
               if(!(_loc2_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §"!&§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§3C§());
            if(_loc3_ || param1)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§3C§());
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§+!?§);
                        while(true)
                        {
                           if(§§pop() != b2_dynamicBody)
                           {
                              return;
                              addr262:
                           }
                           while(true)
                           {
                              this.§7n§ = 0;
                              loop6:
                              while(_loc3_)
                              {
                                 this.§'v§ = 0;
                                 while(_loc3_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§;5§ = 0;
                                       while(true)
                                       {
                                          this.§,0§ = param1.§@K§;
                                          while(_loc3_ || _loc3_)
                                          {
                                             §§push(this.§,0§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr217:
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§,0§ = 1;
                                                         addr221:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr218:
                                                   }
                                                   while(true)
                                                   {
                                                      this.§7n§ = 1 / this.§,0§;
                                                      addr205:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            break loop2;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue loop6;
                                             }
                                             §§push(this);
                                             §§push(param1.§8`§);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(this.§,0§);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(param1.center.x);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(param1.center);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            addr141:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr127:
                                                               §§push(param1.center.y);
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  addr135:
                                                                  §§push(§§pop() * param1.center.y);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§'v§ = §§pop() - §§pop() * §§pop();
                                                            §§goto(addr143);
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                   }
                                                   §§goto(addr127);
                                                }
                                             }
                                             §§goto(addr141);
                                          }
                                       }
                                    }
                                    if(_loc3_ || this)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr35);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           continue loop0;
                        }
                     }
                  }
                  return;
                  while(_loc3_ || this)
                  {
                     §§pop();
                     §§goto(addr181);
                  }
               }
            }
         }
         §§goto(addr261);
      }
      
      public function §2!D§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§,0§ = 0;
            loop0:
            while(true)
            {
               this.§7n§ = 0;
               while(true)
               {
                  this.§'v§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§;5§ = 0;
                     addr119:
                     while(true)
                     {
                        this.m_sweep.localCenter.§`!5§();
                        continue loop0;
                        addr63:
                        if(_loc6_ || _loc3_)
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(_loc6_ || _loc1_)
                  {
                     return;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr79);
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
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  §§push(_loc2_.col2.x);
                  if(!_loc5_)
                  {
                     §§push(param1.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           addr52:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_)
                           {
                              addr67:
                              §§push(param1.x);
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr88);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           addr88:
                           §§goto(addr76);
                        }
                        §§goto(addr79);
                     }
                     addr76:
                     §§push(§§pop() * §§pop());
                     if(!_loc5_)
                     {
                        addr79:
                        §§push(_loc2_.col2.y);
                        if(_loc4_)
                        {
                           §§push(§§pop() * param1.y);
                        }
                     }
                     var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                     if(!_loc5_)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(_loc4_)
                        {
                           §§push(§§pop() + this.m_xf.position.x);
                        }
                        §§pop().x = §§pop();
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
                        while(!(_loc4_ || _loc3_));
                        
                     }
                     return _loc3_;
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr67);
         }
         §§goto(addr52);
      }
      
      public function §!!U§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§'q§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0r§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§;%§(this.m_xf.R,param1);
      }
      
      public function §'M§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§^O§.x);
         if(!_loc2_)
         {
            §§push(this.m_angularVelocity);
            if(_loc3_ || _loc3_)
            {
               §§push(param1.y);
               if(_loc3_ || _loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(!_loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || this)
                        {
                           addr73:
                           §§push(§§pop() - §§pop());
                           §§push(this.§^O§.y);
                           if(_loc3_ || this)
                           {
                              §§push(this.m_angularVelocity);
                              if(_loc3_ || _loc3_)
                              {
                                 addr103:
                                 §§push(param1.x);
                                 if(!(_loc2_ && param1))
                                 {
                                    addr117:
                                    §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                                 }
                                 §§goto(addr117);
                              }
                              §§push(§§pop() + §§pop());
                           }
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr117);
               }
               §§goto(addr103);
            }
         }
         §§goto(addr73);
      }
      
      public function §8G§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_)
         {
            §§push(param1.x);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && this))
               {
                  §§push(_loc2_.col2.x);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(param1.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           addr62:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!_loc5_)
                           {
                              addr67:
                              §§push(param1.x);
                              if(!_loc5_)
                              {
                                 §§goto(addr93);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr79);
                        }
                        addr93:
                        §§goto(addr71);
                     }
                     addr71:
                     §§push(§§pop() * §§pop());
                     if(_loc4_ || _loc3_)
                     {
                        addr79:
                        §§push(_loc2_.col2.y);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop() * param1.y);
                        }
                     }
                     var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                     if(_loc4_ || param1)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() + this.m_xf.position.x);
                        }
                        §§pop().x = §§pop();
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
                        while(_loc5_);
                        
                     }
                     §§push(§§findproperty(b2Vec2));
                     §§push(this.§^O§.x);
                     if(_loc4_ || param1)
                     {
                        §§push(this.m_angularVelocity);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(_loc3_.y);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(this.m_sweep.c.y);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_ || this)
                                    {
                                       §§goto(addr167);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr177);
                     }
                     addr167:
                     §§push(§§pop() - §§pop());
                     §§push(this.§^O§.y);
                     if(_loc4_ || this)
                     {
                        addr177:
                        §§push(this.m_angularVelocity);
                        if(!(_loc5_ && param1))
                        {
                           addr186:
                           §§push(_loc3_.x);
                           if(_loc4_)
                           {
                              addr195:
                              §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                           }
                           §§goto(addr195);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                  }
                  §§goto(addr79);
               }
               §§goto(addr62);
            }
            §§goto(addr67);
         }
         §§goto(addr62);
      }
      
      public function §=Z§() : Number
      {
         return this.§[s§;
      }
      
      public function §!I§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[s§ = param1;
         }
      }
      
      public function §6!m§() : Number
      {
         return this.§[!j§;
      }
      
      public function §^!j§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§[!j§ = param1;
         }
      }
      
      public function §7!r§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§+!?§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr128:
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§+!?§ = param1;
                     addr114:
                     loop3:
                     while(true)
                     {
                        this.§2!D§();
                        while(true)
                        {
                           if(_loc4_)
                           {
                              break loop1;
                           }
                           continue loop0;
                           addr93:
                           loop5:
                           while(!(_loc4_ && _loc3_))
                           {
                              this.§^O§.§`!5§();
                              while(true)
                              {
                                 this.m_angularVelocity = 0;
                                 loop7:
                                 while(_loc3_)
                                 {
                                    while(true)
                                    {
                                       this.SetAwake(true);
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             this.§84§.§`!5§();
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   this.§3!T§ = 0;
                                                   if(_loc3_ || param1)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break loop10;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            if(true)
                                                            {
                                                               var _loc2_:b2ContactEdge = this.§]3§;
                                                               addr151:
                                                               if(_loc2_)
                                                               {
                                                                  _loc2_.§+2§.§=!<§();
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     _loc2_ = _loc2_.§-!3§;
                                                                     §§goto(addr151);
                                                                  }
                                                               }
                                                            }
                                                            continue loop10;
                                                            return;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue;
                                                }
                                                continue loop5;
                                             }
                                             continue loop3;
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
         }
         §§goto(addr114);
      }
      
      public function §2!r§() : uint
      {
         return this.§+!?§;
      }
      
      public function §&!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§;!R§ &= ~b2internal::%6;
               if(!(_loc2_ || this))
               {
                  addr61:
               }
               return;
            }
            if(!_loc3_)
            {
               addr55:
               this.§;!R§ |= b2internal::%6;
            }
            §§goto(addr61);
         }
         §§goto(addr55);
      }
      
      public function §<!l§() : Boolean
      {
         return (this.§;!R§ & b2internal::%6) == b2internal::%6;
      }
      
      public function §!!"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!param1)
            {
               this.§;!R§ &= ~b2internal::?!O;
               while(true)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               §§goto(addr34);
               addr78:
            }
            this.§;!R§ |= b2internal::?!O;
            §§goto(addr78);
         }
         §§goto(addr56);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§;!R§ &= ~b2internal::1";
               loop0:
               while(true)
               {
                  this.§@!#§ = 0;
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        if(!(_loc3_ || _loc2_))
                        {
                           this.§;!R§ |= b2internal::1";
                           break;
                        }
                        addr133:
                        this.§^O§.§`!5§();
                        loop2:
                        for(; !_loc2_; if(!(_loc3_ || this))
                        {
                           continue;
                        },§§goto(addr71))
                        {
                           while(true)
                           {
                              this.m_angularVelocity = 0;
                              loop4:
                              while(true)
                              {
                                 this.§84§.§`!5§();
                                 while(true)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop4;
                                    addr71:
                                    this.§3!T§ = 0;
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          §§goto(addr20);
                                       }
                                       break;
                                    }
                                 }
                                 §§goto(addr130);
                              }
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  this.§@!#§ = 0;
                  addr130:
                  addr20:
                  return;
               }
            }
            §§goto(addr133);
         }
         §§goto(addr83);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§;!R§ & b2internal::1") == b2internal::1";
      }
      
      public function §`y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§;!R§ &= ~b2internal::'U;
               loop0:
               while(true)
               {
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        continue loop0;
                     }
                     continue;
                     addr77:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.§;!R§ |= b2internal::'U;
               §§goto(addr77);
            }
         }
         §§goto(addr68);
      }
      
      public function §2!L§() : Boolean
      {
         return (this.§;!R§ & b2internal::'U) == b2internal::'U;
      }
      
      public function §#V§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§<X§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() == this.§8!f§())
               {
                  if(_loc6_)
                  {
                     return;
                  }
                  addr61:
                  _loc2_ = this.m_world.§`!n§.§<Z§;
                  _loc3_ = this.§92§;
                  while(_loc3_)
                  {
                     _loc3_.§0!S§(_loc2_,this.m_xf);
                     if(!(_loc6_ || _loc2_))
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§3=§;
                  }
               }
               else
               {
                  addr47:
                  if(param1)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        this.§;!R§ |= b2internal::1T;
                     }
                     §§goto(addr61);
                  }
                  else
                  {
                     this.§;!R§ &= ~b2internal::1T;
                     _loc2_ = this.m_world.§`!n§.§<Z§;
                     _loc3_ = this.§92§;
                     if(_loc6_ || _loc3_)
                     {
                        while(_loc3_)
                        {
                           _loc3_.§!O§(_loc2_);
                           if(_loc7_)
                           {
                              break;
                           }
                           _loc3_ = _loc3_.§3=§;
                        }
                     }
                     _loc4_ = this.§]3§;
                     if(!(_loc7_ && this))
                     {
                        while(_loc4_)
                        {
                           _loc5_ = _loc4_;
                           _loc4_ = _loc4_.§-!3§;
                           if(_loc6_ || this)
                           {
                              this.m_world.§`!n§.§[M§(_loc5_.§+2§);
                           }
                        }
                        if(!_loc7_)
                        {
                           this.§]3§ = null;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function §8!f§() : Boolean
      {
         return (this.§;!R§ & b2internal::1T) == b2internal::1T;
      }
      
      public function §3!r§() : Boolean
      {
         return (this.§;!R§ & b2internal::?!O) == b2internal::?!O;
      }
      
      public function §=!e§() : b2Fixture
      {
         return this.§92§;
      }
      
      public function §+!<§() : b2JointEdge
      {
         return this.§"O§;
      }
      
      public function §9!P§() : b2ControllerEdge
      {
         return this.§-_§;
      }
      
      public function §"x§() : b2ContactEdge
      {
         return this.§]3§;
      }
      
      public function §+!N§() : b2Body
      {
         return this.§3=§;
      }
      
      public function GetUserData() : *
      {
         return this.§?f§;
      }
      
      public function §`!N§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§?f§ = param1;
         }
      }
      
      public function §%!D§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §-!6§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §%!`§;
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
               if(!(_loc6_ && _loc2_))
               {
                  §§push(this.m_sweep);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop().c0);
                     if(!_loc6_)
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
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(_loc3_.y);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc7_ || this)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_ || _loc1_)
                                                   {
                                                      addr129:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr132);
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr173);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr148);
                        }
                        addr132:
                        §§pop().x = §§pop();
                        if(!_loc6_)
                        {
                           addr140:
                           addr139:
                           addr137:
                           §§push(_loc1_.position);
                           §§push(this.m_sweep.c0.y);
                           if(!(_loc6_ && _loc2_))
                           {
                              addr148:
                              §§push(_loc2_.col1.y);
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(_loc3_.x);
                                 if(!_loc6_)
                                 {
                                    addr162:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       addr167:
                                       §§push(_loc2_.col2.y);
                                       if(!_loc6_)
                                       {
                                          addr173:
                                          §§push(§§pop() - (§§pop() + §§pop() * _loc3_.y));
                                       }
                                    }
                                 }
                              }
                              §§goto(addr173);
                           }
                           §§pop().y = §§pop();
                           §§goto(addr186);
                        }
                        addr186:
                        var _loc5_:§<X§ = this.m_world.§`!n§.§<Z§;
                        _loc4_ = this.§92§;
                        while(_loc4_)
                        {
                           _loc4_.§'!@§(_loc5_,_loc1_,this.m_xf);
                           if(_loc6_)
                           {
                              break;
                           }
                           _loc4_ = _loc4_.§3=§;
                        }
                        return;
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr139);
               }
               §§goto(addr137);
            }
            §§goto(addr140);
         }
         §§goto(addr33);
      }
      
      b2internal function §0!y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.m_xf);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop().R);
               if(_loc4_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr42:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc4_ || _loc2_)
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr206:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr208:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr209:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr210:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr212:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr213:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       addr215:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
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
                  }
                  addr205:
               }
               while(true)
               {
                  §§push(this.m_xf);
                  if(_loc4_ || _loc1_)
                  {
                     §§push(§§pop().position);
                     if(!_loc3_)
                     {
                        §§push(this.m_sweep);
                        if(!_loc3_)
                        {
                           §§push(§§pop().c);
                           if(_loc4_)
                           {
                              §§push(§§pop().y);
                              if(_loc4_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(_loc1_.col1);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop().y);
                                       if(_loc4_ || _loc1_)
                                       {
                                          §§push(_loc2_.x);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc4_ || this)
                                                {
                                                   addr138:
                                                   if(!(_loc3_ && this))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(_loc1_.col2);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(_loc2_.y);
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr166:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        addr174:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           addr182:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr210);
                                                                        }
                                                                        §§goto(addr213);
                                                                     }
                                                                     §§goto(addr222);
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            §§goto(addr166);
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr174);
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr224);
                              }
                              §§goto(addr182);
                           }
                           else
                           {
                              §§goto(addr209);
                           }
                        }
                        else
                        {
                           §§goto(addr208);
                        }
                        §§goto(addr209);
                     }
                     else
                     {
                        §§goto(addr206);
                     }
                  }
                  else
                  {
                     §§goto(addr205);
                  }
                  §§goto(addr206);
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      b2internal function §9e§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§+!?§);
            if(!_loc4_)
            {
               §§push(b2_dynamicBody);
               if(!_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc3_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              if(!_loc4_)
                              {
                                 addr46:
                                 §§push(param1.§+!?§ == b2_dynamicBody);
                                 if(_loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc3_)
                                    {
                                    }
                                 }
                                 §§goto(addr71);
                              }
                              addr72:
                              var _loc2_:b2JointEdge = this.§"O§;
                              for(; _loc2_; _loc2_ = _loc2_.§-!3§)
                              {
                                 if(_loc2_.§,H§ == param1)
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       §§push(_loc2_.§2B§.§0e§);
                                       if(_loc3_)
                                       {
                                          if(§§pop() != false)
                                          {
                                             continue;
                                          }
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(false);
                                          if(_loc4_ && _loc2_)
                                          {
                                             §§goto(addr131);
                                          }
                                       }
                                       return §§pop();
                                    }
                                    break;
                                 }
                              }
                              addr131:
                              return §§pop();
                              §§push(true);
                           }
                           §§goto(addr71);
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(false);
                        }
                        else
                        {
                           §§goto(addr72);
                        }
                     }
                     §§goto(addr72);
                  }
                  addr71:
                  return §§pop();
               }
            }
            §§goto(addr46);
         }
         §§goto(addr72);
      }
      
      b2internal function §]!W§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.m_sweep);
            while(true)
            {
               §§push(param1);
               addr95:
               while(true)
               {
                  §§pop().§]!W§(§§pop());
               }
               addr57:
               if(!_loc3_)
               {
                  continue;
               }
               §§push(this.m_sweep.a0);
               if(!_loc2_)
               {
                  §§pop().a = §§pop();
                  loop5:
                  while(!(_loc2_ && _loc3_))
                  {
                     this.§0!y§();
                     if(_loc3_)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           while(true)
                           {
                              §§push(this.m_sweep);
                              addr86:
                              while(true)
                              {
                                 §§pop().c.SetV(this.m_sweep.c0);
                                 break loop5;
                              }
                           }
                           addr96:
                        }
                        return;
                     }
                  }
                  while(true)
                  {
                     §§push(this.m_sweep);
                     if(!_loc2_)
                     {
                        §§goto(addr57);
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr95);
            }
         }
         §§goto(addr96);
      }
   }
}
