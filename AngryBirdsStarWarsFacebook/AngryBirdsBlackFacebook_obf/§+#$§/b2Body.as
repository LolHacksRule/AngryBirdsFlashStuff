package §+#$§
{
   import §1!2§.b2JointEdge;
   import §3"5§.§8t§;
   import §4!$§.b2EdgeShape;
   import §4!$§.b2MassData;
   import §4!$§.b2Shape;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §8[§.b2Contact;
   import §8[§.b2ContactEdge;
   import §["3§.b2ControllerEdge;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Sweep;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §5"C§:b2Transform;
      
      b2internal static var §96§:uint = 1;
      
      b2internal static var §^"t§:uint = 2;
      
      b2internal static var §&J§:uint = 4;
      
      b2internal static var §-"%§:uint = 8;
      
      b2internal static var §;!4§:uint = 16;
      
      b2internal static var §<#M§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5"C§ = new b2Transform();
            while(true)
            {
               §96§ = 1;
               addr130:
               while(true)
               {
                  §^"t§ = 2;
               }
               addr74:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               b2_dynamicBody = 2;
               addr81:
               if(!(_loc2_ && _loc1_))
               {
                  addr34:
                  if(!(_loc2_ && b2Body))
                  {
                     addr41:
                     if(!_loc1_)
                     {
                        loop6:
                        while(_loc1_)
                        {
                           b2_staticBody = 0;
                           while(true)
                           {
                              b2_kinematicBody = 1;
                              addr48:
                              addr115:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    addr50:
                                    if(_loc1_ || _loc1_)
                                    {
                                       addr67:
                                       if(!(_loc1_ || b2Body))
                                       {
                                          break;
                                       }
                                       §§goto(addr74);
                                    }
                                    while(true)
                                    {
                                       §-"%§ = 8;
                                       break loop6;
                                       §§goto(addr50);
                                    }
                                    addr110:
                                 }
                                 addr98:
                                 while(true)
                                 {
                                    §<#M§ = 32;
                                    continue loop6;
                                 }
                                 §§goto(addr81);
                              }
                              while(true)
                              {
                                 §&J§ = 4;
                                 §§goto(addr110);
                                 §§goto(addr67);
                              }
                              §§goto(addr34);
                           }
                           §§goto(addr41);
                        }
                        while(!_loc2_)
                        {
                           §;!4§ = 16;
                           §§goto(addr98);
                        }
                        §§goto(addr130);
                     }
                     return;
                  }
                  §§goto(addr86);
               }
               §§goto(addr48);
            }
         }
         §§goto(addr115);
      }
      
      b2internal var §6b§:uint;
      
      b2internal var §%!9§:int;
      
      b2internal var §[5§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var § #`§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §#r§:b2Vec2;
      
      b2internal var §?"4§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var § #&§:b2Body;
      
      b2internal var §!"!§:b2Body;
      
      b2internal var §<"v§:b2Fixture;
      
      b2internal var §?"m§:int;
      
      b2internal var §?`§:b2ControllerEdge;
      
      b2internal var §'"g§:int;
      
      b2internal var §%#J§:b2JointEdge;
      
      b2internal var §'#H§:b2ContactEdge;
      
      b2internal var §9#6§:Number;
      
      b2internal var §3#>§:Number;
      
      b2internal var §6"=§:Number;
      
      b2internal var §3"y§:Number;
      
      b2internal var set:Number;
      
      b2internal var §6"H§:Number;
      
      b2internal var each:Number;
      
      b2internal var §9-§:Number;
      
      b2internal var §]"`§:Number;
      
      private var §0!+§;
      
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
               while(true)
               {
                  this.§ #`§ = new b2Vec2();
                  while(true)
                  {
                     this.§#r§ = new b2Vec2();
                     if(_loc7_ || param2)
                     {
                        super();
                        while(true)
                        {
                           this.§6b§ = 0;
                           loop4:
                           while(true)
                           {
                              §§push(param1.§%#2§);
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§6b§ |= b2internal::-"%;
                                       addr259:
                                       while(!_loc6_)
                                       {
                                       }
                                       continue loop0;
                                    }
                                    addr253:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§"D§);
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          do
                                          {
                                             this.§6b§ |= b2internal::;!4;
                                          }
                                          while(!(_loc6_ && param1));
                                          
                                          addr316:
                                          var _loc3_:b2Mat22 = this.m_xf.R;
                                          var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                          if(_loc7_ || _loc3_)
                                          {
                                             addr814:
                                             addr841:
                                             addr811:
                                             addr810:
                                             addr816:
                                             addr813:
                                             §§push(this.m_sweep.c);
                                             §§push(_loc3_.col1.x * _loc4_.x);
                                             if(_loc7_ || param1)
                                             {
                                                addr837:
                                                §§push(§§pop() + _loc3_.col2.x * _loc4_.y);
                                             }
                                             §§pop().x = §§pop();
                                             addr842:
                                             §§push(this.m_sweep.c);
                                             §§push(_loc3_.col1);
                                             if(!(_loc6_ && param2))
                                             {
                                                addr761:
                                                §§push(§§pop().y);
                                                §§push(_loc4_.x);
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      addr778:
                                                      §§push(§§pop() * §§pop());
                                                      §§push(_loc3_.col2);
                                                      if(_loc7_ || param1)
                                                      {
                                                         addr788:
                                                         §§push(§§pop().y);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(_loc4_.y);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr806:
                                                               §§pop().y = §§pop() + §§pop() * §§pop();
                                                               addr807:
                                                               addr805:
                                                               §§push(this.m_sweep);
                                                               if(_loc7_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr709:
                                                                     §§push(§§pop().c);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        addr720:
                                                                        §§push(this.m_sweep.c.x);
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           addr731:
                                                                           §§push(this.m_xf.position.x);
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr738:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       addr746:
                                                                                       §§push(this.m_sweep);
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop().c);
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(this.m_sweep);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         if(_loc7_ || param1)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(this.m_xf);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().position);
                                                                                                                     if(_loc7_ || param2)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr688:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 addr693:
                                                                                                                                 if(_loc7_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(this.m_sweep);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                       this.§%#J§ = null;
                                                                                                                                       addr625:
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          this.§?`§ = null;
                                                                                                                                          this.§'#H§ = null;
                                                                                                                                          addr595:
                                                                                                                                          if(_loc7_ || param2)
                                                                                                                                          {
                                                                                                                                             this.§'"g§ = 0;
                                                                                                                                             this.§ #&§ = null;
                                                                                                                                             addr578:
                                                                                                                                             addr590:
                                                                                                                                             if(_loc7_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                this.§!"!§ = null;
                                                                                                                                                addr571:
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   this.§ #`§.SetV(param1.§1#1§);
                                                                                                                                                   addr559:
                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                   {
                                                                                                                                                      this.m_angularVelocity = param1.§,t§;
                                                                                                                                                      this.§6"H§ = param1.§?"M§;
                                                                                                                                                      addr552:
                                                                                                                                                      if(_loc7_ || param1)
                                                                                                                                                      {
                                                                                                                                                         this.each = param1.§>!f§;
                                                                                                                                                         addr531:
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            this.§]"`§ = param1.§"n§;
                                                                                                                                                            this.§#r§.Set(0,0);
                                                                                                                                                            this.§?"4§ = 0;
                                                                                                                                                            this.§9-§ = 0;
                                                                                                                                                            addr512:
                                                                                                                                                            addr525:
                                                                                                                                                            addr519:
                                                                                                                                                            if(!(_loc6_ && this))
                                                                                                                                                            {
                                                                                                                                                               this.§%!9§ = param1.type;
                                                                                                                                                               addr495:
                                                                                                                                                               if(this.§%!9§ == b2_dynamicBody)
                                                                                                                                                               {
                                                                                                                                                                  addr470:
                                                                                                                                                                  if(!(_loc6_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§9#6§ = 1;
                                                                                                                                                                        addr487:
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§3#>§ = 1;
                                                                                                                                                                           addr434:
                                                                                                                                                                           this.§6"=§ = 0;
                                                                                                                                                                           this.§3"y§ = 0;
                                                                                                                                                                           addr464:
                                                                                                                                                                           addr438:
                                                                                                                                                                           if(_loc7_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.set = param1.§6"z§;
                                                                                                                                                                                 addr399:
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§0!+§ = param1.§@"g§;
                                                                                                                                                                                                addr379:
                                                                                                                                                                                                if(!(_loc6_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§<"v§ = null;
                                                                                                                                                                                                      addr359:
                                                                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc6_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§?"m§ = 0;
                                                                                                                                                                                                            if(_loc7_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr512);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr443:
                                                                                                                                                                                                                     if(_loc7_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr434);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr464);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     this.§3#>§ = 0;
                                                                                                                                                                                                                     §§goto(addr443);
                                                                                                                                                                                                                     addr459:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr434);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr379);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr359);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr438);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr399);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr525);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr495);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr693);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr625);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr559);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr552);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr470);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr512);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr487);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr519);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr552);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr531);
                                                                                                                                                               }
                                                                                                                                                               this.§9#6§ = 0;
                                                                                                                                                               §§goto(addr459);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr578);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr590);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr571);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr595);
                                                                                                                                                }
                                                                                                                                                §§goto(addr625);
                                                                                                                                             }
                                                                                                                                             §§goto(addr746);
                                                                                                                                          }
                                                                                                                                          addr607:
                                                                                                                                          §§goto(addr607);
                                                                                                                                       }
                                                                                                                                       §§goto(addr807);
                                                                                                                                    }
                                                                                                                                    §§goto(addr746);
                                                                                                                                 }
                                                                                                                                 §§goto(addr842);
                                                                                                                              }
                                                                                                                              §§goto(addr806);
                                                                                                                           }
                                                                                                                           §§goto(addr720);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr731);
                                                                                                               }
                                                                                                               §§goto(addr814);
                                                                                                            }
                                                                                                            §§goto(addr778);
                                                                                                         }
                                                                                                         §§goto(addr738);
                                                                                                      }
                                                                                                      §§goto(addr688);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr720);
                                                                                             }
                                                                                             §§goto(addr814);
                                                                                          }
                                                                                          §§goto(addr709);
                                                                                       }
                                                                                       §§goto(addr806);
                                                                                    }
                                                                                    §§goto(addr841);
                                                                                 }
                                                                                 §§goto(addr837);
                                                                              }
                                                                              §§goto(addr788);
                                                                           }
                                                                           §§goto(addr805);
                                                                        }
                                                                        §§goto(addr761);
                                                                     }
                                                                     §§goto(addr811);
                                                                  }
                                                                  §§goto(addr810);
                                                               }
                                                               §§goto(addr814);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr837);
                                                   }
                                                   §§goto(addr816);
                                                }
                                                §§goto(addr788);
                                             }
                                             §§goto(addr813);
                                          }
                                          §§goto(addr625);
                                          addr235:
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§@!'§);
                                          loop12:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§6b§ |= b2internal::&J;
                                                   continue loop4;
                                                }
                                                addr217:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(param1.§4!@§);
                                                   continue loop12;
                                                }
                                                addr179:
                                             }
                                          }
                                       }
                                       if(!(_loc7_ || this))
                                       {
                                          continue;
                                       }
                                       if(§§pop())
                                       {
                                          §§goto(addr197);
                                       }
                                       §§goto(addr145);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr316);
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr45);
                  }
                  while(!(_loc6_ && this))
                  {
                     this.§6b§ |= b2internal::<#M;
                     §§goto(addr171);
                     §§goto(addr125);
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      private function §0# §(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.§7!&§().y,param2.§7!&§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§]!b§(_loc5_,param2.§7!&§());
         _loc6_ = b2Math.§8!3§(_loc6_,param2.§+!s§());
         _loc6_ = b2Math.§]!b§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§6!<§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§6!<§(param1.§7!&§(),param2.§7!&§())).Normalize();
         var _loc8_:* = b2Math.§+#>§(param1.§7!&§(),param2.§+!s§()) > 0;
         if(_loc10_)
         {
            param1.§ "H§(param2,_loc6_,_loc7_,_loc8_);
         }
         do
         {
            param2.§'"x§(param1,_loc6_,_loc7_,_loc8_);
         }
         while(_loc9_ && param3);
         
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§8t§ = null;
         if(_loc7_ || _loc2_)
         {
            if(this.m_world.§]#`§() == true)
            {
               if(_loc7_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Fixture = new b2Fixture();
         if(!_loc6_)
         {
            _loc2_.§=!S§(this,this.m_xf,param1);
            if(!(_loc6_ && this))
            {
               if(this.§6b§ & b2internal::<#M)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     addr67:
                     §§push(this.m_world);
                     if(!_loc6_)
                     {
                        _loc3_ = §§pop().§1P§.§7#U§;
                        if(_loc7_)
                        {
                           _loc2_.§ #Q§(_loc3_,this.m_xf);
                           addr92:
                           _loc2_.§!"!§ = this.§<"v§;
                           if(!_loc6_)
                           {
                              this.§<"v§ = _loc2_;
                              if(!_loc6_)
                              {
                                 var _loc4_:*;
                                 §§push((_loc4_ = this).§?"m§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!(_loc6_ && this))
                                 {
                                    _loc4_.§?"m§ = _loc5_;
                                 }
                                 if(!(_loc6_ && param1))
                                 {
                                    _loc2_.m_body = this;
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc2_.§7!P§ > 0)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             if(!(_loc7_ || this))
                                             {
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                this.ResetMassData();
                                                addr182:
                                                while(true)
                                                {
                                                   break loop3;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          addr163:
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.m_world);
                                          addr139:
                                          while(true)
                                          {
                                             §§push(this.m_world.§6b§);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() | b2World.§#h§);
                                             }
                                             §§pop().§6b§ = §§pop();
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc7_)
                                                {
                                                   break loop2;
                                                }
                                                §§goto(addr163);
                                             }
                                          }
                                       }
                                       §§goto(addr157);
                                    }
                                    addr130:
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr180);
               }
               §§goto(addr92);
            }
            §§goto(addr67);
         }
         addr157:
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(!(_loc5_ && param1))
         {
            _loc3_.shape = param1;
         }
         do
         {
            _loc3_.density = param2;
         }
         while(!_loc4_);
         
         return this.CreateFixture(_loc3_);
      }
      
      public function §[!`§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§8t§ = null;
         if(_loc13_)
         {
            if(this.m_world.§]#`§() == true)
            {
               if(_loc13_ || _loc2_)
               {
                  §§goto(addr43);
               }
            }
            var _loc2_:b2Fixture = this.§<"v§;
            var _loc3_:b2Fixture = null;
            var _loc4_:Boolean = false;
            loop0:
            while(_loc2_ != null)
            {
               if(_loc2_ == param1)
               {
                  if(_loc13_ || _loc2_)
                  {
                     if(_loc3_)
                     {
                        if(_loc13_)
                        {
                           _loc3_.§!"!§ = param1.§!"!§;
                           while(true)
                           {
                              addr73:
                              while(true)
                              {
                              }
                           }
                           addr108:
                        }
                        break;
                     }
                     this.§<"v§ = param1.§!"!§;
                     if(_loc12_ && _loc3_)
                     {
                     }
                     break;
                     while(true)
                     {
                        _loc4_ = true;
                        if(_loc13_ || this)
                        {
                           if(_loc13_ || _loc2_)
                           {
                              if(true)
                              {
                                 break loop0;
                              }
                              continue;
                           }
                           §§goto(addr108);
                        }
                        break loop0;
                     }
                  }
                  break;
               }
               _loc3_ = _loc2_;
               _loc2_ = _loc2_.§!"!§;
            }
            var _loc5_:b2ContactEdge = this.§'#H§;
            if(_loc13_)
            {
               while(_loc5_)
               {
                  _loc6_ = _loc5_.§>"6§;
                  _loc5_ = _loc5_.§]!D§;
                  _loc7_ = _loc6_.§?!@§();
                  _loc8_ = _loc6_.§;"R§();
                  if(!(_loc12_ && this))
                  {
                     §§push(param1 == _loc7_);
                     if(_loc13_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc12_)
                           {
                              addr170:
                              §§pop();
                              addr179:
                              if(!_loc12_)
                              {
                                 §§push(param1 == _loc8_);
                              }
                              this.m_world.§1P§.§;!"§(_loc6_);
                              continue;
                           }
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(!_loc13_)
                        {
                           continue;
                        }
                        §§goto(addr179);
                     }
                  }
                  §§goto(addr170);
               }
               if(_loc13_)
               {
                  if(this.§6b§ & b2internal::<#M)
                  {
                     if(!(_loc12_ && _loc2_))
                     {
                        _loc9_ = this.m_world.§1P§.§7#U§;
                        if(!(_loc12_ && _loc2_))
                        {
                           param1.§,X§(_loc9_);
                        }
                     }
                     §§goto(addr267);
                  }
                  param1.§;!"§();
                  if(_loc13_)
                  {
                     param1.m_body = null;
                     if(!(_loc12_ && this))
                     {
                        addr230:
                        param1.§!"!§ = null;
                        if(!_loc12_)
                        {
                           addr235:
                           var _loc10_:*;
                           §§push((_loc10_ = this).§?"m§);
                           if(_loc13_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc11_:* = §§pop();
                           if(!(_loc12_ && _loc2_))
                           {
                              _loc10_.§?"m§ = _loc11_;
                           }
                           if(!_loc12_)
                           {
                              §§goto(addr267);
                           }
                        }
                     }
                     §§goto(addr267);
                  }
                  §§goto(addr235);
               }
               addr267:
               this.ResetMassData();
               return;
            }
            §§goto(addr230);
         }
         addr43:
      }
      
      public function SetPositionAndAngle(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(_loc9_)
         {
            if(this.m_world.§]#`§() != true)
            {
               loop0:
               while(true)
               {
                  §§push(this.m_xf);
                  if(_loc9_ || param2)
                  {
                     §§push(§§pop().R);
                     if(_loc9_ || _loc3_)
                     {
                        §§pop().Set(param2);
                        while(true)
                        {
                           §§push(this.m_xf);
                           if(_loc8_ && param2)
                           {
                              break loop0;
                           }
                           §§pop().position.SetV(param1);
                           if(_loc9_ || param2)
                           {
                              if(!(_loc8_ && _loc3_))
                              {
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(true)
                                    {
                                       §§push(this.m_xf);
                                    }
                                    continue loop0;
                                    break loop0;
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        addr85:
                        return;
                        addr79:
                     }
                     addr90:
                     var _loc4_:b2Mat22 = §§pop();
                     var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                     if(!_loc8_)
                     {
                        §§push(this.m_sweep);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(§§pop().c);
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_.col1);
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc5_.x);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr340:
                                       while(true)
                                       {
                                          §§push(_loc4_.col2);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             loop7:
                                             while(true)
                                             {
                                                §§push(_loc5_.y);
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(this.m_sweep);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().c);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_.col1);
                                                                  if(_loc8_ && param2)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(_loc5_.x);
                                                                     while(_loc9_ || this)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     continue loop4;
                                                                     addr275:
                                                                  }
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.col2);
                                                                     if(_loc8_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        if(!(_loc9_ || param2))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(_loc5_.y);
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr313:
                                                                        while(_loc9_)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           loop18:
                                                                           for(; !(_loc8_ && param1); while(!(_loc8_ && param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.m_sweep);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§goto(addr138);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr236:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(!(_loc9_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr248);
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr275);
                                                                                    }
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                           })
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 addr215:
                                                                                 while(!_loc8_)
                                                                                 {
                                                                                    §§push(this.m_sweep);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       addr220:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          addr248:
                                                                                          addr248:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             continue loop18;
                                                                                          }
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                 }
                                                                                 addr138:
                                                                                 continue loop13;
                                                                                 if(!(_loc9_ || _loc3_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(§§pop().c);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§goto(addr215);
                                                                              }
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop2;
                                                               addr110:
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  §§pop().c0.SetV(this.m_sweep.c);
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        while(_loc9_ || param2)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              if(!(_loc8_ && param2))
                                                                              {
                                                                                 §§goto(addr110);
                                                                              }
                                                                              §§goto(addr351);
                                                                           }
                                                                        }
                                                                        §§goto(addr249);
                                                                        addr193:
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr133);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.m_sweep);
                                                                     }
                                                                     addr351:
                                                                     §§goto(addr360);
                                                                  }
                                                                  addr360:
                                                                  §§pop().a0 = this.m_sweep.a = param2;
                                                                  var _loc6_:§8t§ = this.m_world.§1P§.§7#U§;
                                                               }
                                                               continue;
                                                               _loc3_ = this.§<"v§;
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr408);
                                                                  }
                                                                  _loc3_.§4!A§(_loc6_,this.m_xf,this.m_xf);
                                                                  if(_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc3_ = _loc3_.§!"!§;
                                                               }
                                                               this.m_world.§1P§.§7"D§();
                                                               addr408:
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
                           }
                        }
                        §§goto(addr351);
                     }
                     §§goto(addr210);
                  }
                  break;
               }
               §§goto(addr90);
               §§push(§§pop().R);
            }
            §§goto(addr85);
         }
         §§goto(addr79);
      }
      
      public function §3!M§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.SetPositionAndAngle(param1.position,param1.GetAngle());
         }
      }
      
      public function GetTransform() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.SetPositionAndAngle(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.SetPositionAndAngle(this.GetPosition(),param1);
         }
      }
      
      public function §;#&§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §]";§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§%!9§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.§ #`§.SetV(param1);
                  if(!_loc3_)
                  {
                     break;
                  }
                  addr63:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc2_)
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
         return this.§ #`§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§%!9§ == b2_staticBody)
            {
               if(_loc3_ || _loc3_)
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
            if(!(_loc2_ && _loc3_))
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §4#+§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc2_)
         {
            _loc1_.type = this.§8! §();
            loop0:
            while(true)
            {
               _loc1_.§@!'§ = (this.§6b§ & b2internal::&J) == b2internal::&J;
               loop1:
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  addr57:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  _loc1_.§@"g§ = this.GetUserData();
                  addr66:
                  if(_loc2_ || _loc2_)
                  {
                     addr40:
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           loop8:
                           while(_loc2_)
                           {
                              _loc1_.§1#1§.SetV(this.GetLinearVelocity());
                              loop9:
                              while(true)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          _loc1_.position = this.GetPosition();
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr57);
                                             }
                                             §§goto(addr66);
                                          }
                                          continue loop1;
                                          addr55:
                                       }
                                       else
                                       {
                                          addr146:
                                       }
                                       while(true)
                                       {
                                          _loc1_.§,t§ = this.m_angularVelocity;
                                       }
                                       while(true)
                                       {
                                          _loc1_.§"D§ = (this.§6b§ & b2internal::;!4) == b2internal::;!4;
                                          addr134:
                                          while(true)
                                          {
                                             _loc1_.§%#2§ = (this.§6b§ & b2internal::-"%) == b2internal::-"%;
                                             break loop9;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 addr112:
                                 while(true)
                                 {
                                    _loc1_.§?"M§ = this.§6"H§;
                                    continue loop8;
                                 }
                                 §§goto(addr40);
                              }
                              while(!_loc3_)
                              {
                                 _loc1_.§4!@§ = (this.§6b§ & b2internal::^"t) == b2internal::^"t;
                                 §§goto(addr112);
                              }
                              §§goto(addr134);
                           }
                           while(true)
                           {
                              _loc1_.§>!f§ = this.each;
                              §§goto(addr146);
                           }
                           addr152:
                        }
                        return _loc1_;
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr55);
               }
            }
         }
         §§goto(addr152);
      }
      
      public function §^2§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§%!9§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(_loc3_ || this)
                     {
                        this.SetAwake(true);
                     }
                     loop1:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           if(_loc4_ && param1)
                           {
                              continue loop1;
                           }
                           §§push(this.§#r§);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(this.§#r§);
                           if(!(_loc4_ && param1))
                           {
                              §§push(§§pop().y);
                              if(!_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(param1.y);
                                    if(_loc3_ || param1)
                                    {
                                       addr132:
                                       §§push(§§pop() + §§pop());
                                       if(_loc3_ || param2)
                                       {
                                          §§pop().y = §§pop();
                                          loop9:
                                          while(!_loc4_)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§?"4§);
                                                   if(_loc3_ || param2)
                                                   {
                                                      §§push(param2.x);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(this.m_sweep.c.x);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               addr52:
                                                               §§push(param1.y);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr59:
                                                                     §§push(param2.y);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this.m_sweep.c.y);
                                                                        if(!(_loc4_ && param2))
                                                                        {
                                                                           addr85:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc3_ || param2)
                                                                           {
                                                                              addr82:
                                                                              §§push(param1.x);
                                                                           }
                                                                           §§pop().§?"4§ = §§pop() + (§§pop() - §§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        §§goto(addr85);
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§goto(addr82);
                                                                  }
                                                               }
                                                               §§goto(addr85);
                                                            }
                                                            §§goto(addr59);
                                                         }
                                                         §§goto(addr85);
                                                      }
                                                      §§goto(addr52);
                                                   }
                                                   §§goto(addr85);
                                                }
                                                return;
                                                addr149:
                                             }
                                             else
                                             {
                                                addr198:
                                             }
                                             return;
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§push(param1.x);
                                       }
                                       addr156:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop8;
                                 }
                              }
                              §§goto(addr132);
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr155:
                           }
                           §§goto(addr156);
                        }
                        addr153:
                        while(true)
                        {
                           §§goto(addr155);
                           §§goto(addr167);
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr153);
                  }
               }
            }
            §§goto(addr198);
         }
         §§goto(addr149);
      }
      
      public function §^"q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§%!9§ != b2_dynamicBody)
            {
               if(_loc2_)
               {
                  return;
               }
               while(true)
               {
               }
               addr85:
            }
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.SetAwake(true);
                  }
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§?"4§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§?"4§ = §§pop();
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue;
               }
               §§goto(addr28);
            }
         }
         §§goto(addr49);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§%!9§ != b2_dynamicBody)
            {
               if(!_loc4_)
               {
                  return;
               }
               while(true)
               {
                  addr198:
                  loop2:
                  while(!(_loc4_ && this))
                  {
                     this.SetAwake(true);
                     while(true)
                     {
                        addr173:
                        loop4:
                        while(true)
                        {
                           §§push(this.§ #`§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§ #`§);
                              addr178:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr179:
                                 while(true)
                                 {
                                    §§push(this.§3#>§);
                                    if(_loc3_)
                                    {
                                       §§push(param1.x);
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                       }
                                       addr185:
                                    }
                                    addr186:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr187:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr188:
                                          while(_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop5;
                                             }
                                             continue loop2;
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
               }
               addr226:
            }
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  §§goto(addr198);
               }
               §§goto(addr173);
               §§goto(addr226);
            }
         }
         §§goto(addr192);
      }
      
      public function §'"O§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(!_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§;#&§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§4#+§());
         var _loc8_:b2Fixture = _loc5_.§<"v§;
         while(true)
         {
            if(!_loc8_)
            {
               if(!_loc16_)
               {
                  break;
               }
               addr199:
               _loc6_.ResetMassData();
               var _loc9_:b2Vec2 = _loc5_.§;#&§();
               var _loc10_:b2Vec2 = _loc6_.§;#&§();
               var _loc11_:b2Vec2 = b2Math.§6!<§(_loc2_,b2Math.§7!m§(_loc3_,b2Math.§8!3§(_loc9_,_loc4_)));
               var _loc12_:b2Vec2 = b2Math.§6!<§(_loc2_,b2Math.§7!m§(_loc3_,b2Math.§8!3§(_loc10_,_loc4_)));
               if(!(_loc16_ && _loc3_))
               {
                  _loc5_.SetLinearVelocity(_loc11_);
                  while(true)
                  {
                     _loc6_.SetLinearVelocity(_loc12_);
                     loop4:
                     while(!(_loc16_ && this))
                     {
                        _loc5_.§7,§();
                        while(_loc17_ || _loc3_)
                        {
                           _loc6_.§7,§();
                           if(!(_loc16_ && _loc2_))
                           {
                              if(_loc17_)
                              {
                                 return _loc6_;
                              }
                              continue loop4;
                           }
                        }
                        loop3:
                        while(true)
                        {
                           if(_loc17_ || _loc3_)
                           {
                              _loc6_.SetAngularVelocity(_loc3_);
                              continue loop4;
                           }
                           addr308:
                           while(true)
                           {
                              _loc5_.SetAngularVelocity(_loc3_);
                              continue loop3;
                           }
                        }
                        addr262:
                     }
                  }
               }
               §§goto(addr308);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§!"!§;
                  continue;
               }
               if(!_loc17_)
               {
                  break;
               }
               _loc13_ = _loc8_.§!"!§;
               if(!_loc16_)
               {
                  if(_loc7_)
                  {
                     if(_loc17_ || this)
                     {
                        _loc7_.§!"!§ = _loc13_;
                        if(!_loc16_)
                        {
                           addr92:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§?"m§);
                           if(!(_loc16_ && _loc2_))
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(!(_loc16_ && _loc2_))
                           {
                              _loc14_.§?"m§ = _loc15_;
                           }
                           if(!(_loc16_ && _loc2_))
                           {
                              _loc8_.§!"!§ = _loc6_.§<"v§;
                              if(_loc17_)
                              {
                                 addr130:
                                 _loc6_.§<"v§ = _loc8_;
                                 if(_loc17_ || _loc2_)
                                 {
                                 }
                                 addr175:
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr130);
                        }
                        §§push((_loc14_ = _loc6_).§?"m§);
                        if(_loc17_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc15_ = §§pop();
                        if(_loc17_)
                        {
                           _loc14_.§?"m§ = _loc15_;
                        }
                        if(!(_loc16_ && this))
                        {
                           _loc8_.m_body = _loc6_;
                        }
                     }
                     §§goto(addr130);
                  }
                  else
                  {
                     _loc5_.§<"v§ = _loc13_;
                     if(!(_loc16_ && this))
                     {
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr130);
               }
               §§goto(addr92);
            }
         }
         _loc5_.ResetMassData();
         if(_loc17_ || this)
         {
         }
         §§goto(addr199);
      }
      
      public function §@"5§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§<"v§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§!"!§;
            if(_loc15_ || this)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§?"m§);
               if(_loc15_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!(_loc14_ && _loc2_))
               {
                  _loc12_.§?"m§ = _loc13_;
               }
               if(!_loc14_)
               {
                  _loc2_.§!"!§ = this.§<"v§;
                  if(_loc15_ || this)
                  {
                  }
                  addr121:
                  _loc2_.m_body = _loc4_;
                  continue;
               }
               this.§<"v§ = _loc2_;
               if(_loc15_)
               {
                  §§push((_loc12_ = this).§?"m§);
                  if(_loc15_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc13_ = §§pop();
                  if(!(_loc14_ && _loc2_))
                  {
                     _loc12_.§?"m§ = _loc13_;
                  }
                  if(!_loc15_)
                  {
                     continue;
                  }
               }
            }
            §§goto(addr121);
         }
         if(!(_loc14_ && param1))
         {
            _loc3_.§?"m§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§;#&§();
         var _loc6_:b2Vec2 = _loc4_.§;#&§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(_loc15_ || param1)
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
         if(_loc15_)
         {
            _loc3_.ResetMassData();
         }
         do
         {
            this.§7,§();
         }
         while(!_loc15_);
         
      }
      
      public function GetMass() : Number
      {
         return this.§9#6§;
      }
      
      public function §9z§() : Number
      {
         return this.§6"=§;
      }
      
      public function §5!O§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§5"Z§ = this.§9#6§;
         }
         while(true)
         {
            param1.I = this.§6"=§;
            while(!_loc3_)
            {
               param1.§+#K§.SetV(this.m_sweep.localCenter);
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §@!R§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§]#`§());
            if(_loc3_ || param1)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§]#`§());
               while(true)
               {
                  §§push(true);
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        while(true)
                        {
                           §§push(this.§%!9§);
                           while(true)
                           {
                              if(§§pop() == b2_dynamicBody)
                              {
                                 while(true)
                                 {
                                    this.§3#>§ = 0;
                                    while(_loc3_)
                                    {
                                       this.§6"=§ = 0;
                                       loop7:
                                       while(true)
                                       {
                                          this.§3"y§ = 0;
                                          loop8:
                                          while(true)
                                          {
                                             this.§9#6§ = param1.§5"Z§;
                                             while(!(_loc4_ && this))
                                             {
                                                §§push(this.§9#6§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr190:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         while(_loc3_)
                                                         {
                                                            this.§9#6§ = 1;
                                                            while(_loc3_)
                                                            {
                                                               continue loop0;
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                         addr191:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§3#>§ = 1 / this.§9#6§;
                                                            continue loop10;
                                                         }
                                                         addr178:
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr259);
                                          }
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                        }
                     }
                     addr259:
                     return;
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      public function ResetMassData() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(!(_loc5_ && this))
         {
            this.§9#6§ = 0;
            loop0:
            while(true)
            {
               this.§3#>§ = 0;
               loop1:
               while(true)
               {
                  this.§6"=§ = 0;
                  while(true)
                  {
                     this.§3"y§ = 0;
                     loop3:
                     for(; !_loc5_; if(!(_loc6_ || this))
                     {
                        continue;
                     })
                     {
                        this.m_sweep.localCenter.§&"Q§();
                        loop4:
                        while(true)
                        {
                           addr76:
                           while(true)
                           {
                              §§push(this.§%!9§);
                              loop6:
                              while(true)
                              {
                                 §§push(b2_staticBody);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             addr84:
                                             while(!_loc5_)
                                             {
                                                §§push(this.§%!9§);
                                                if(!_loc6_)
                                                {
                                                   continue loop6;
                                                }
                                                §§push(b2_kinematicBody);
                                                if(!_loc6_)
                                                {
                                                   continue loop7;
                                                }
                                                §§push(§§pop() == §§pop());
                                                if(_loc5_)
                                                {
                                                   continue loop9;
                                                }
                                                if(!(_loc6_ || this))
                                                {
                                                   continue loop8;
                                                }
                                             }
                                             continue loop1;
                                          }
                                       }
                                       while(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                          if(_loc6_ || _loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr84);
                                       }
                                       addr114:
                                       var _loc1_:b2Vec2 = b2Vec2.§+!S§(0,0);
                                       var _loc2_:b2Fixture = this.§<"v§;
                                       addr235:
                                       if(_loc2_)
                                       {
                                          §§push(_loc2_.§7!P§);
                                          if(!_loc5_)
                                          {
                                             §§push(0);
                                             if(!_loc5_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      addr231:
                                                      _loc2_ = _loc2_.§!"!§;
                                                      §§goto(addr235);
                                                   }
                                                   b2Settings.b2Assert(this.§6"=§ > 0);
                                                   this.§3"y§ = 1 / this.§6"=§;
                                                   addr364:
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  this.§3#>§ = 1;
                                                                  addr435:
                                                                  addr448:
                                                                  §§push(this.§6"=§ > 0);
                                                                  if(this.§6"=§ > 0)
                                                                  {
                                                                     addr442:
                                                                     §§pop();
                                                                     addr443:
                                                                     §§push((this.§6b§ & b2internal::;!4) == 0);
                                                                     if(!(_loc5_ && _loc1_))
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           addr386:
                                                                           if(§§pop())
                                                                           {
                                                                              addr388:
                                                                              §§push(this);
                                                                              §§push(this.§6"=§);
                                                                              if(!(_loc5_ && _loc1_))
                                                                              {
                                                                                 §§push(this.§9#6§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(_loc1_.x);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(_loc1_.x);
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr418:
                                                                                             §§push(_loc1_.y);
                                                                                             if(!(_loc5_ && _loc1_))
                                                                                             {
                                                                                                addr430:
                                                                                                §§push(§§pop() + §§pop() * _loc1_.y);
                                                                                             }
                                                                                             §§goto(addr430);
                                                                                          }
                                                                                          addr433:
                                                                                          §§pop().§6"=§ = §§pop() - §§pop() * §§pop();
                                                                                          §§push(this);
                                                                                          §§push(this.§6"=§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() * this.set);
                                                                                          }
                                                                                          §§pop().§6"=§ = §§pop();
                                                                                          §§goto(addr364);
                                                                                          addr432:
                                                                                          addr434:
                                                                                       }
                                                                                       §§goto(addr430);
                                                                                    }
                                                                                    §§goto(addr418);
                                                                                 }
                                                                                 §§goto(addr432);
                                                                              }
                                                                              §§goto(addr433);
                                                                           }
                                                                           this.§6"=§ = 0;
                                                                           addr296:
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    this.§3"y§ = 0;
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc5_ && _loc1_)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             §§push(_loc1_.y);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() * this.§3#>§);
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             §§goto(addr435);
                                                                                             addr465:
                                                                                             addr480:
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             addr290:
                                                                                          }
                                                                                          var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             addr672:
                                                                                             this.m_sweep.localCenter.SetV(_loc1_);
                                                                                             this.m_sweep.c0.SetV(b2Math.§""$§(this.m_xf,this.m_sweep.localCenter));
                                                                                             addr675:
                                                                                             addr669:
                                                                                             §§push(this.m_sweep);
                                                                                             if(_loc6_ || _loc1_)
                                                                                             {
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   §§pop().c.SetV(this.m_sweep.c0);
                                                                                                   addr644:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr618:
                                                                                                      this.§ #`§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
                                                                                                      addr619:
                                                                                                      addr606:
                                                                                                      addr608:
                                                                                                      addr617:
                                                                                                      addr612:
                                                                                                      addr616:
                                                                                                      addr615:
                                                                                                      addr614:
                                                                                                      addr611:
                                                                                                      addr610:
                                                                                                      addr605:
                                                                                                      addr603:
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(this.§ #`§);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(this.§ #`§);
                                                                                                            if(_loc6_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc6_ || _loc1_)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(this.m_angularVelocity);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(this.m_sweep);
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(!(_loc5_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(_loc6_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.x);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          addr567:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!(_loc5_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                addr577:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr587:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc6_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr675);
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                            addr599:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr619);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr606);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr608);
                                                                                                                                                }
                                                                                                                                                §§goto(addr617);
                                                                                                                                             }
                                                                                                                                             §§goto(addr612);
                                                                                                                                          }
                                                                                                                                          §§goto(addr616);
                                                                                                                                       }
                                                                                                                                       §§goto(addr615);
                                                                                                                                    }
                                                                                                                                    §§goto(addr567);
                                                                                                                                 }
                                                                                                                                 §§goto(addr614);
                                                                                                                              }
                                                                                                                              §§goto(addr567);
                                                                                                                           }
                                                                                                                           §§goto(addr611);
                                                                                                                        }
                                                                                                                        §§goto(addr610);
                                                                                                                     }
                                                                                                                     §§goto(addr577);
                                                                                                                  }
                                                                                                                  §§goto(addr618);
                                                                                                               }
                                                                                                               §§goto(addr587);
                                                                                                            }
                                                                                                            §§goto(addr605);
                                                                                                         }
                                                                                                         §§goto(addr603);
                                                                                                      }
                                                                                                      §§goto(addr644);
                                                                                                   }
                                                                                                   §§goto(addr669);
                                                                                                }
                                                                                                §§goto(addr672);
                                                                                             }
                                                                                             addr650:
                                                                                             §§goto(addr650);
                                                                                          }
                                                                                          §§goto(addr599);
                                                                                       }
                                                                                       §§goto(addr465);
                                                                                    }
                                                                                    §§goto(addr296);
                                                                                 }
                                                                                 §§goto(addr448);
                                                                              }
                                                                              §§goto(addr443);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr435);
                                                                     }
                                                                     §§goto(addr442);
                                                                  }
                                                                  §§goto(addr386);
                                                                  addr454:
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr434);
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                   addr353:
                                                   §§goto(addr353);
                                                }
                                                _loc4_ = _loc2_.§5!O§();
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(this);
                                                   §§push(this.§9#6§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() + _loc4_.§5"Z§);
                                                   }
                                                   §§pop().§9#6§ = §§pop();
                                                   §§push(_loc1_);
                                                   §§push(_loc1_.x);
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      §§push(_loc4_.§+#K§.x);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() * _loc4_.§5"Z§);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().x = §§pop();
                                                   addr218:
                                                   if(_loc6_)
                                                   {
                                                      addr175:
                                                      §§push(_loc1_);
                                                      §§push(_loc1_.y);
                                                      if(_loc6_)
                                                      {
                                                         §§push(_loc4_.§+#K§.y);
                                                         if(_loc6_ || _loc1_)
                                                         {
                                                            §§push(§§pop() * _loc4_.§5"Z§);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().y = §§pop();
                                                      §§push(this);
                                                      §§push(this.§6"=§);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(§§pop() + _loc4_.I);
                                                      }
                                                      §§pop().§6"=§ = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr175);
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      addr196:
                                                      §§goto(addr196);
                                                      addr220:
                                                   }
                                                   addr230:
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr220);
                                             }
                                          }
                                          §§goto(addr435);
                                       }
                                       if(_loc6_ || _loc1_)
                                       {
                                          §§push(this.§9#6§);
                                          if(_loc6_)
                                          {
                                             §§push(0);
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      this.§3#>§ = 1 / this.§9#6§;
                                                      if(_loc6_)
                                                      {
                                                         §§push(_loc1_);
                                                         §§push(_loc1_.x);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop() * this.§3#>§);
                                                         }
                                                         §§pop().x = §§pop();
                                                         §§goto(addr480);
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                   §§goto(addr433);
                                                }
                                                else
                                                {
                                                   this.§9#6§ = 1;
                                                }
                                                §§goto(addr454);
                                             }
                                          }
                                          §§goto(addr435);
                                       }
                                       §§goto(addr364);
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
                  §§push(_loc2_.col2.x);
                  if(!(_loc5_ && this))
                  {
                     §§push(param1.y);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && _loc2_))
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr99);
               }
            }
            §§goto(addr62);
         }
         addr62:
         §§push(§§pop() + §§pop());
         §§push(_loc2_.col1.y);
         if(!(_loc5_ && _loc2_))
         {
            addr82:
            §§push(param1.x);
            if(!(_loc5_ && param1))
            {
               §§goto(addr108);
            }
            §§push(§§pop() + §§pop());
         }
         addr108:
         §§push(§§pop() * §§pop());
         if(!(_loc5_ && _loc2_))
         {
            addr99:
            §§push(_loc2_.col2.y);
            if(!_loc5_)
            {
               addr104:
               §§push(§§pop() * param1.y);
            }
         }
         var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
         if(!_loc5_)
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
               if(_loc4_)
               {
                  §§push(§§pop() + this.m_xf.position.y);
               }
               §§pop().y = §§pop();
            }
            while(_loc5_);
            
         }
         return _loc3_;
      }
      
      public function §8!b§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§="L§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§'!B§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§9#A§(this.m_xf.R,param1);
      }
      
      public function §1"E§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§ #`§.x);
         if(_loc3_ || this)
         {
            §§push(this.m_angularVelocity);
            if(!_loc2_)
            {
               §§push(param1.y);
               if(!_loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc2_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc2_)
                        {
                           addr63:
                           §§push(§§pop() - §§pop());
                           §§push(this.§ #`§.y);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(this.m_angularVelocity);
                              if(!_loc2_)
                              {
                                 addr78:
                                 §§push(param1.x);
                                 if(!_loc2_)
                                 {
                                    addr92:
                                    §§push(§§pop() - this.m_sweep.c.x);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§push(§§pop() + §§pop());
                           }
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr92);
               }
               §§goto(addr78);
            }
         }
         §§goto(addr63);
      }
      
      public function §>!B§(param1:b2Vec2) : b2Vec2
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
               if(!(_loc4_ && _loc2_))
               {
                  addr45:
                  §§push(_loc2_.col2.x);
                  if(_loc5_)
                  {
                     §§push(param1.y);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && this))
                        {
                           addr68:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(param1.x);
                              if(_loc5_ || param1)
                              {
                                 addr87:
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_)
                                 {
                                    addr104:
                                    addr90:
                                    §§push(_loc2_.col2.y);
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr100:
                                       §§push(§§pop() * param1.y);
                                    }
                                    var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                    if(_loc5_)
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
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() + this.m_xf.position.y);
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    while(!_loc5_);
                                    
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(this.§ #`§.x);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(this.m_angularVelocity);
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(_loc3_.y);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(this.m_sweep.c.y);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      addr173:
                                                      §§push(§§pop() - §§pop());
                                                      §§push(this.§ #`§.y);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr183:
                                                         §§push(this.m_angularVelocity);
                                                         if(_loc5_)
                                                         {
                                                            addr187:
                                                            §§push(_loc3_.x);
                                                            if(_loc5_)
                                                            {
                                                               addr196:
                                                               §§push(§§pop() + §§pop() * (§§pop() - this.m_sweep.c.x));
                                                            }
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                   }
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                }
                                                §§goto(addr187);
                                             }
                                          }
                                          §§goto(addr196);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr68);
         }
         §§goto(addr45);
      }
      
      public function §1!&§() : Number
      {
         return this.§6"H§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§6"H§ = param1;
         }
      }
      
      public function §!#1§() : Number
      {
         return this.each;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.each = param1;
         }
      }
      
      public function §[!f§() : Number
      {
         return this.§]"`§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]"`§ = param1;
         }
      }
      
      public function §!"P§(param1:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§%!9§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr114:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr115:
                     return;
                  }
                  addr106:
                  while(true)
                  {
                     this.§%!9§ = param1;
                     while(true)
                     {
                        this.ResetMassData();
                        addr98:
                        while(_loc4_ || _loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §8! §() : uint
      {
         return this.§%!9§;
      }
      
      public function §@^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§6b§ &= ~b2internal::-"%;
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     addr60:
                     this.§6b§ |= b2internal::-"%;
                     addr66:
                  }
                  else
                  {
                     addr47:
                  }
                  return;
               }
               §§goto(addr66);
            }
            §§goto(addr60);
         }
         §§goto(addr47);
      }
      
      public function §^!J§() : Boolean
      {
         return (this.§6b§ & b2internal::-"%) == b2internal::-"%;
      }
      
      public function § 2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!param1)
            {
               this.§6b§ &= ~b2internal::&J;
               do
               {
                  this.SetAwake(true);
               }
               while(_loc2_);
               
               if(!_loc2_)
               {
                  addr47:
               }
               else
               {
                  addr84:
               }
               return;
            }
            if(_loc3_ || param1)
            {
               this.§6b§ |= b2internal::&J;
            }
            §§goto(addr84);
         }
         §§goto(addr47);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!param1)
            {
               this.§6b§ &= ~b2internal::^"t;
               loop0:
               while(true)
               {
                  this.§9-§ = 0;
                  while(true)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        this.§ #`§.§&"Q§();
                        continue;
                     }
                  }
                  addr148:
                  this.§9-§ = 0;
                  §§goto(addr129);
                  while(true)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        continue loop0;
                     }
                     if(!_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr24);
               }
            }
            this.§6b§ |= b2internal::^"t;
            §§goto(addr148);
         }
         §§goto(addr129);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§6b§ & b2internal::^"t) == b2internal::^"t;
      }
      
      public function §'#$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  this.§6b§ |= b2internal::;!4;
                  addr77:
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        this.ResetMassData();
                        if(_loc3_ && _loc2_)
                        {
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           addr54:
                        }
                        return;
                     }
                  }
                  addr77:
               }
               §§goto(addr77);
            }
            else
            {
               this.§6b§ &= ~b2internal::;!4;
            }
            §§goto(addr54);
         }
         §§goto(addr77);
      }
      
      public function §'#'§() : Boolean
      {
         return (this.§6b§ & b2internal::;!4) == b2internal::;!4;
      }
      
      public function §^#-§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§8t§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() == this.§%!L§())
               {
                  if(!(_loc7_ && param1))
                  {
                     return;
                  }
                  addr60:
                  this.§6b§ |= b2internal::<#M;
                  addr66:
                  _loc2_ = this.m_world.§1P§.§7#U§;
                  _loc3_ = this.§<"v§;
                  while(_loc3_)
                  {
                     _loc3_.§ #Q§(_loc2_,this.m_xf);
                     if(!(_loc6_ || _loc3_))
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§!"!§;
                  }
               }
               else
               {
                  addr52:
                  if(param1)
                  {
                     if(!(_loc7_ && param1))
                     {
                        §§goto(addr60);
                     }
                     §§goto(addr66);
                  }
                  else
                  {
                     this.§6b§ &= ~b2internal::<#M;
                     _loc2_ = this.m_world.§1P§.§7#U§;
                     _loc3_ = this.§<"v§;
                     if(!_loc7_)
                     {
                        loop0:
                        while(_loc3_)
                        {
                           _loc3_.§,X§(_loc2_);
                           if(!(_loc6_ || _loc3_))
                           {
                              break;
                           }
                           while(true)
                           {
                              _loc3_ = _loc3_.§!"!§;
                              continue loop0;
                           }
                        }
                        _loc4_ = this.§'#H§;
                        if(_loc6_)
                        {
                           while(_loc4_)
                           {
                              _loc5_ = _loc4_;
                              _loc4_ = _loc4_.§]!D§;
                              if(!(_loc7_ && param1))
                              {
                                 this.m_world.§1P§.§;!"§(_loc5_.§>"6§);
                              }
                           }
                           if(_loc6_ || _loc3_)
                           {
                              this.§'#H§ = null;
                           }
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr138);
                  }
               }
               addr194:
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr60);
      }
      
      public function §%!L§() : Boolean
      {
         return (this.§6b§ & b2internal::<#M) == b2internal::<#M;
      }
      
      public function §&"§() : Boolean
      {
         return (this.§6b§ & b2internal::&J) == b2internal::&J;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§<"v§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§%#J§;
      }
      
      public function §@#]§() : b2ControllerEdge
      {
         return this.§?`§;
      }
      
      public function §9!K§() : b2ContactEdge
      {
         return this.§'#H§;
      }
      
      public function §>!>§() : b2Body
      {
         return this.§!"!§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!+§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§0!+§ = param1;
         }
      }
      
      public function §2q§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §7,§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §5"C§;
         if(_loc7_ || this)
         {
            §§push(_loc1_.R);
            if(!_loc6_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr38:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(_loc7_ || _loc1_)
            {
               §§push(_loc1_.position);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(this.m_sweep);
                  if(!_loc6_)
                  {
                     §§push(§§pop().c0);
                     if(!(_loc6_ && _loc1_))
                     {
                        §§push(§§pop().x);
                        if(_loc7_)
                        {
                           §§push(_loc2_.col1);
                           if(_loc7_)
                           {
                              §§push(§§pop().x);
                              if(_loc7_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_ || this)
                                    {
                                       §§push(_loc2_.col2);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc7_)
                                          {
                                             §§push(_loc3_.y);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc7_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            addr150:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               addr160:
                                                               §§push(_loc2_.col1.y);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(_loc3_.x);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr177:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        addr180:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(_loc7_ || _loc1_)
                                                                        {
                                                                           addr193:
                                                                           §§push(§§pop() + §§pop() * _loc3_.y);
                                                                        }
                                                                        §§goto(addr193);
                                                                     }
                                                                     addr195:
                                                                     §§pop().y = §§pop() - §§pop();
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr193);
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                         }
                                                         addr196:
                                                         var _loc5_:§8t§ = this.m_world.§1P§.§7#U§;
                                                         _loc4_ = this.§<"v§;
                                                         while(_loc4_)
                                                         {
                                                            _loc4_.§4!A§(_loc5_,_loc1_,this.m_xf);
                                                            if(_loc6_ && this)
                                                            {
                                                               break;
                                                            }
                                                            _loc4_ = _loc4_.§!"!§;
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr177);
                                             }
                                          }
                                          §§goto(addr193);
                                       }
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr180);
                           }
                        }
                        §§goto(addr160);
                     }
                  }
               }
               §§goto(addr150);
            }
            §§goto(addr177);
         }
         §§goto(addr38);
      }
      
      b2internal function §`"a§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.m_xf);
            if(_loc3_)
            {
               §§push(§§pop().R);
               if(!_loc4_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr31:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc3_)
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr155:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr157:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr158:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr159:
                              loop4:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr161:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr162:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       addr164:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr165:
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr178:
                                                addr113:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr180:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr181:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr182:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr183:
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
                                                if(_loc4_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().y);
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc2_.y);
                                                   if(!_loc4_)
                                                   {
                                                      addr130:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr138:
                                                         §§push(§§pop() - (§§pop() + §§pop()));
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               §§pop().y = §§pop();
                                                               if(_loc3_)
                                                               {
                                                                  return;
                                                                  addr151:
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr130);
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
                  addr154:
               }
               while(true)
               {
                  §§push(this.m_xf);
                  if(_loc3_)
                  {
                     §§push(§§pop().position);
                     if(!_loc4_)
                     {
                        §§push(this.m_sweep);
                        if(_loc3_)
                        {
                           §§push(§§pop().c);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop().y);
                              if(_loc3_)
                              {
                                 §§push(_loc1_.col1);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop().y);
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(_loc2_.x);
                                                if(!_loc4_)
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr113);
                                                         }
                                                         §§goto(addr138);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr165);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr138);
                           }
                           else
                           {
                              §§goto(addr158);
                           }
                        }
                        else
                        {
                           §§goto(addr157);
                        }
                        §§goto(addr158);
                     }
                     else
                     {
                        §§goto(addr155);
                     }
                  }
                  else
                  {
                     §§goto(addr154);
                  }
                  §§goto(addr155);
               }
               §§goto(addr151);
            }
         }
         §§goto(addr31);
      }
      
      b2internal function §="N§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§%!9§);
            if(_loc3_)
            {
               §§push(b2_dynamicBody);
               if(!_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              addr40:
                              §§pop();
                              if(_loc3_)
                              {
                                 addr46:
                                 addr45:
                                 §§push(param1.§%!9§ == b2_dynamicBody);
                                 if(_loc3_ || param1)
                                 {
                                 }
                                 §§goto(addr67);
                              }
                              §§goto(addr75);
                           }
                           §§push(!§§pop());
                           if(_loc3_)
                           {
                              §§goto(addr67);
                           }
                           §§goto(addr76);
                        }
                        addr67:
                        if(§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr76:
                              return false;
                              addr75:
                           }
                        }
                        var _loc2_:b2JointEdge = this.§%#J§;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              §§push(true);
                              break;
                           }
                           if(_loc2_.other != param1)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              §§push(_loc2_.joint.§6"m§);
                              if(_loc4_)
                              {
                                 break;
                              }
                              if(§§pop() == false)
                              {
                                 if(!_loc4_)
                                 {
                                    addr98:
                                    §§push(false);
                                    if(_loc3_ || this)
                                    {
                                       return §§pop();
                                    }
                                    break;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr98);
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr40);
               }
               §§goto(addr46);
            }
            §§goto(addr45);
         }
         §§goto(addr76);
      }
      
      b2internal function §?!'§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.m_sweep);
            while(true)
            {
               §§push(param1);
               addr84:
               while(true)
               {
                  §§pop().§?!'§(§§pop());
               }
            }
            addr83:
         }
         loop2:
         while(true)
         {
            §§push(this.m_sweep);
            loop3:
            while(true)
            {
               §§pop().c.SetV(this.m_sweep.c0);
               loop4:
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
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§pop().a = §§pop();
                     while(!_loc3_)
                     {
                        this.§`"a§();
                        if(_loc2_)
                        {
                           continue loop4;
                        }
                     }
                     continue loop2;
                  }
                  §§goto(addr83);
               }
               §§goto(addr84);
            }
         }
      }
   }
}
