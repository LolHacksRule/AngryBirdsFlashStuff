package §3!R§
{
   import §!4§.§!s§;
   import §"d§.b2JointEdge;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Sweep;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §7q§.b2EdgeShape;
   import §7q§.b2MassData;
   import §7q§.b2Shape;
   import §=0§.b2Contact;
   import §=0§.b2ContactEdge;
   import §]!8§.b2ControllerEdge;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §?!Y§:b2Transform;
      
      b2internal static var §!3§:uint = 1;
      
      b2internal static var §7<§:uint = 2;
      
      b2internal static var §8"§:uint = 4;
      
      b2internal static var §^&§:uint = 8;
      
      b2internal static var §"u§:uint = 16;
      
      b2internal static var §,!a§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?!Y§ = new b2Transform();
            while(true)
            {
               §!3§ = 1;
               addr85:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               b2_kinematicBody = 1;
               loop8:
               while(_loc2_ || _loc2_)
               {
                  b2_dynamicBody = 2;
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr35:
                  if(_loc2_ || _loc1_)
                  {
                     return;
                  }
                  loop7:
                  while(true)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        if(_loc2_)
                        {
                           addr78:
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr85);
                           }
                           else
                           {
                              while(true)
                              {
                                 §8"§ = 4;
                                 addr126:
                                 while(true)
                                 {
                                    §^&§ = 8;
                                    break loop7;
                                 }
                                 §§goto(addr78);
                              }
                              addr131:
                           }
                        }
                        break;
                     }
                     addr109:
                     while(true)
                     {
                        §,!a§ = 32;
                        break loop8;
                     }
                     §§goto(addr35);
                  }
                  while(_loc2_ || _loc1_)
                  {
                     §"u§ = 16;
                     §§goto(addr109);
                  }
                  §§goto(addr126);
                  addr59:
               }
               while(_loc2_ || _loc1_)
               {
                  b2_staticBody = 0;
                  §§goto(addr59);
                  §§goto(addr47);
               }
               addr47:
               while(true)
               {
                  §7<§ = 2;
                  §§goto(addr131);
                  §§goto(addr97);
               }
               addr97:
               addr146:
            }
         }
         §§goto(addr146);
      }
      
      b2internal var §5!5§:uint;
      
      b2internal var §2!]§:int;
      
      b2internal var §]4§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §@S§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §5l§:b2Vec2;
      
      b2internal var §'!K§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §8s§:b2Body;
      
      b2internal var §>W§:b2Body;
      
      b2internal var §%c§:b2Fixture;
      
      b2internal var §]>§:int;
      
      b2internal var §2w§:b2ControllerEdge;
      
      b2internal var §'D§:int;
      
      b2internal var §4b§:b2JointEdge;
      
      b2internal var §`W§:b2ContactEdge;
      
      b2internal var §`!6§:Number;
      
      b2internal var §",§:Number;
      
      b2internal var §0!K§:Number;
      
      b2internal var §-2§:Number;
      
      b2internal var §4!,§:Number;
      
      b2internal var §0N§:Number;
      
      b2internal var §"!V§:Number;
      
      b2internal var §^!`§:Number;
      
      private var §,!&§;
      
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
               loop1:
               while(true)
               {
                  this.§@S§ = new b2Vec2();
                  while(true)
                  {
                     this.§5l§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        addr241:
                        while(true)
                        {
                           this.§5!5§ = 0;
                           if(!(_loc7_ && this))
                           {
                              continue loop3;
                           }
                           addr277:
                           var _loc3_:b2Mat22 = this.m_xf.R;
                           var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                           if(!_loc7_)
                           {
                              addr787:
                              this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
                              addr788:
                              addr763:
                              addr783:
                              addr767:
                              addr780:
                              addr769:
                              addr764:
                              addr785:
                              addr782:
                              addr786:
                              §§push(this.m_sweep.c);
                              §§push(_loc3_.col1);
                              if(!_loc7_)
                              {
                                 addr731:
                                 §§push(§§pop().y);
                                 §§push(_loc4_.x);
                                 if(!(_loc7_ && param1))
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       addr748:
                                       §§push(§§pop() * §§pop());
                                       §§push(_loc3_.col2);
                                       if(!_loc7_)
                                       {
                                          addr753:
                                          §§push(§§pop().y);
                                          §§push(_loc4_.y);
                                          if(_loc6_)
                                          {
                                             addr759:
                                             §§pop().y = §§pop() + §§pop() * §§pop();
                                             addr760:
                                             addr758:
                                             §§push(this.m_sweep.c);
                                             if(!_loc7_)
                                             {
                                                addr687:
                                                §§push(this.m_sweep.c.x);
                                                if(!_loc7_)
                                                {
                                                   addr694:
                                                   §§push(this.m_xf.position.x);
                                                   if(!_loc7_)
                                                   {
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         addr704:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            if(!(_loc7_ && this))
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  addr721:
                                                                  §§push(this.m_sweep.c);
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(this.m_sweep);
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop().c);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(this.m_xf);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(§§pop().position);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr674:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            addr677:
                                                                                                            §§push(this.m_sweep);
                                                                                                            if(!(_loc7_ && param1))
                                                                                                            {
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                        this.§4b§ = null;
                                                                                                                        addr619:
                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                        {
                                                                                                                           this.§2w§ = null;
                                                                                                                           this.§`W§ = null;
                                                                                                                           this.§'D§ = 0;
                                                                                                                           this.§8s§ = null;
                                                                                                                           this.§>W§ = null;
                                                                                                                           this.§@S§.SetV(param1.§ ;§);
                                                                                                                           addr570:
                                                                                                                           addr555:
                                                                                                                           addr560:
                                                                                                                           addr550:
                                                                                                                           addr565:
                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                           {
                                                                                                                              this.m_angularVelocity = param1.§ ![§;
                                                                                                                              this.§0N§ = param1.§8,§;
                                                                                                                              addr523:
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 this.§"!V§ = param1.§5!T§;
                                                                                                                                 addr515:
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    this.§5l§.Set(0,0);
                                                                                                                                    addr507:
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       this.§'!K§ = 0;
                                                                                                                                       this.§^!`§ = 0;
                                                                                                                                       addr500:
                                                                                                                                       if(!(_loc7_ && this))
                                                                                                                                       {
                                                                                                                                          this.§2!]§ = param1.type;
                                                                                                                                          addr469:
                                                                                                                                          if(_loc6_ || this)
                                                                                                                                          {
                                                                                                                                             if(!(_loc7_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(this.§2!]§ == b2_dynamicBody)
                                                                                                                                                {
                                                                                                                                                   addr453:
                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      this.§`!6§ = 1;
                                                                                                                                                      this.§",§ = 1;
                                                                                                                                                      addr463:
                                                                                                                                                      if(_loc6_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr394:
                                                                                                                                                            this.§0!K§ = 0;
                                                                                                                                                            addr398:
                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                            {
                                                                                                                                                               this.§-2§ = 0;
                                                                                                                                                               addr381:
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  this.§4!,§ = param1.§`d§;
                                                                                                                                                                  addr365:
                                                                                                                                                                  if(_loc6_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§,!&§ = param1.§<!B§;
                                                                                                                                                                           addr346:
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc7_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§%c§ = null;
                                                                                                                                                                                       addr326:
                                                                                                                                                                                       if(!(_loc7_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc7_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§]>§ = 0;
                                                                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc7_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc7_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr453);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      return;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr463);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr398);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr326);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr381);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr346);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr570);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr555);
                                                                                                                                                                              }
                                                                                                                                                                              addr410:
                                                                                                                                                                              if(!(_loc7_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr394);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr560);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr550);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr463);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr365);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr721);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr500);
                                                                                                                                                                  }
                                                                                                                                                                  this.§",§ = 0;
                                                                                                                                                                  §§goto(addr410);
                                                                                                                                                                  addr433:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr523);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr507);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr565);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr469);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr500);
                                                                                                                                                }
                                                                                                                                                this.§`!6§ = 0;
                                                                                                                                                §§goto(addr433);
                                                                                                                                             }
                                                                                                                                             §§goto(addr760);
                                                                                                                                          }
                                                                                                                                          §§goto(addr619);
                                                                                                                                       }
                                                                                                                                       §§goto(addr515);
                                                                                                                                    }
                                                                                                                                    §§goto(addr788);
                                                                                                                                 }
                                                                                                                                 §§goto(addr570);
                                                                                                                                 addr525:
                                                                                                                              }
                                                                                                                              addr531:
                                                                                                                              §§goto(addr531);
                                                                                                                           }
                                                                                                                           §§goto(addr619);
                                                                                                                        }
                                                                                                                        §§goto(addr677);
                                                                                                                     }
                                                                                                                     §§goto(addr763);
                                                                                                                  }
                                                                                                                  §§goto(addr788);
                                                                                                               }
                                                                                                               §§goto(addr760);
                                                                                                            }
                                                                                                            §§goto(addr721);
                                                                                                         }
                                                                                                         §§goto(addr748);
                                                                                                      }
                                                                                                      §§goto(addr783);
                                                                                                   }
                                                                                                   §§goto(addr758);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr694);
                                                                                       }
                                                                                       §§goto(addr767);
                                                                                    }
                                                                                    §§goto(addr759);
                                                                                 }
                                                                                 §§goto(addr704);
                                                                              }
                                                                              §§goto(addr674);
                                                                           }
                                                                        }
                                                                        §§goto(addr687);
                                                                     }
                                                                     §§goto(addr788);
                                                                  }
                                                                  §§goto(addr759);
                                                               }
                                                               §§goto(addr780);
                                                            }
                                                            §§goto(addr787);
                                                         }
                                                         §§goto(addr731);
                                                      }
                                                      §§goto(addr769);
                                                   }
                                                   §§goto(addr753);
                                                }
                                                §§goto(addr704);
                                             }
                                             §§goto(addr764);
                                          }
                                          §§goto(addr785);
                                       }
                                       §§goto(addr782);
                                    }
                                    §§goto(addr786);
                                 }
                                 §§goto(addr753);
                              }
                              addr766:
                              §§goto(addr766);
                           }
                           §§goto(addr525);
                        }
                     }
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                     §§push(param1.§,r§);
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc6_ || param1)
                           {
                              this.§5!5§ |= b2internal::^&;
                              loop6:
                              while(true)
                              {
                                 addr174:
                                 while(true)
                                 {
                                    §§push(param1.§[! §);
                                    loop8:
                                    while(_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             this.§5!5§ |= b2internal::"u;
                                             loop9:
                                             while(true)
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(this.m_sweep);
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().§#z§ = 1;
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr37:
                                                               if(_loc6_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     §§push(this.m_sweep);
                                                                     break;
                                                                  }
                                                                  addr91:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.m_sweep);
                                                                     addr44:
                                                                     while(true)
                                                                     {
                                                                        §§pop().localCenter.§^!,§();
                                                                        continue loop21;
                                                                     }
                                                                     §§goto(addr37);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.§?L§);
                                                                        while(_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 addr162:
                                                                                 while(true)
                                                                                 {
                                                                                    addr72:
                                                                                    if(_loc7_ && _loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr41);
                                                                                 }
                                                                                 addr162:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§40§);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       this.§5!5§ |= b2internal::,!a;
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr277);
                                                                                 }
                                                                                 this.m_world = param2;
                                                                                 for(; !_loc7_; §§goto(addr91))
                                                                                 {
                                                                                    §§push(this.m_xf);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§pop().position.SetV(param1.position);
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr277);
                                                                                 }
                                                                                 §§goto(addr241);
                                                                                 §§goto(addr162);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        addr166:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§5!5§ |= b2internal::8";
                                                                              continue loop22;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr41:
                                                                  addr91:
                                                                  addr173:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr91);
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(this.m_xf);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(§§pop().R);
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              §§pop().Set(param1.angle);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr72);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                     §§goto(addr167);
                                                                  }
                                                                  §§goto(addr173);
                                                               }
                                                               §§goto(addr112);
                                                            }
                                                            §§goto(addr277);
                                                         }
                                                         §§goto(addr44);
                                                      }
                                                      break;
                                                   }
                                                   continue loop9;
                                                }
                                                §§pop().a0 = this.m_sweep.a = param1.angle;
                                                §§goto(addr277);
                                             }
                                             addr193:
                                          }
                                          §§goto(addr277);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr166);
                                          §§goto(addr193);
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr174);
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      private function §%^§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.§#!%§().y,param2.§#!%§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§'!J§(_loc5_,param2.§#!%§());
         _loc6_ = b2Math.§8!Y§(_loc6_,param2.§3>§());
         _loc6_ = b2Math.§'!J§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§>>§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§>>§(param1.§#!%§(),param2.§#!%§())).Normalize();
         var _loc8_:* = b2Math.§[!N§(param1.§#!%§(),param2.§3>§()) > 0;
         if(_loc10_ || this)
         {
            param1.§!n§(param2,_loc6_,_loc7_,_loc8_);
            do
            {
               param2.§?$§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(!(_loc10_ || param2));
            
         }
         return _loc4_;
      }
      
      public function §!l§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§!s§ = null;
         if(!(_loc6_ && this))
         {
            if(this.m_world.§-!§() == true)
            {
               if(_loc7_ || _loc2_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Fixture = new b2Fixture();
         if(_loc7_ || this)
         {
            _loc2_.§;O§(this,this.m_xf,param1);
            if(!(_loc6_ && _loc2_))
            {
               if(this.§5!5§ & b2internal::,!a)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§push(this.m_world);
                     if(!(_loc6_ && this))
                     {
                        _loc3_ = §§pop().§"s§.§-E§;
                        if(!_loc6_)
                        {
                           _loc2_.§+!#§(_loc3_,this.m_xf);
                           addr107:
                           _loc2_.§>W§ = this.§%c§;
                           if(!(_loc6_ && _loc3_))
                           {
                              this.§%c§ = _loc2_;
                              if(!_loc6_)
                              {
                                 var _loc4_:*;
                                 §§push((_loc4_ = this).§]>§);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!_loc6_)
                                 {
                                    _loc4_.§]>§ = _loc5_;
                                 }
                                 if(!_loc6_)
                                 {
                                    _loc2_.m_body = this;
                                    addr140:
                                    while(true)
                                    {
                                       if(_loc2_.§6!A§ > 0)
                                       {
                                          if(!_loc6_)
                                          {
                                             this.§,q§();
                                             addr197:
                                             while(true)
                                             {
                                             }
                                             addr197:
                                          }
                                          §§goto(addr197);
                                       }
                                       while(true)
                                       {
                                          §§push(this.m_world);
                                          §§goto(addr149);
                                       }
                                    }
                                    addr140:
                                    addr201:
                                 }
                                 §§goto(addr197);
                              }
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr107);
                     }
                     addr149:
                     while(true)
                     {
                        §§push(this.m_world.§5!5§);
                        if(_loc7_ || _loc2_)
                        {
                           §§push(§§pop() | b2World.§ z§);
                        }
                        §§pop().§5!5§ = §§pop();
                        if(_loc7_ || this)
                        {
                           if(_loc7_ || this)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     return _loc2_;
                  }
                  §§goto(addr140);
               }
               §§goto(addr107);
            }
         }
         §§goto(addr201);
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(_loc5_ || this)
         {
            _loc3_.shape = param1;
         }
         do
         {
            _loc3_.density = param2;
         }
         while(!_loc5_);
         
         return this.§!l§(_loc3_);
      }
      
      public function §&!D§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§!s§ = null;
         if(_loc12_)
         {
            if(this.m_world.§-!§() == true)
            {
               if(!(_loc13_ && _loc3_))
               {
                  §§goto(addr42);
               }
            }
            var _loc2_:b2Fixture = this.§%c§;
            var _loc3_:b2Fixture = null;
            var _loc4_:Boolean = false;
            loop0:
            while(_loc2_ != null)
            {
               if(_loc2_ == param1)
               {
                  if(_loc12_)
                  {
                     if(!_loc3_)
                     {
                        this.§%c§ = param1.§>W§;
                        loop1:
                        while(true)
                        {
                           if(!_loc13_)
                           {
                              if(_loc13_)
                              {
                                 while(true)
                                 {
                                    _loc3_.§>W§ = param1.§>W§;
                                    addr92:
                                    while(true)
                                    {
                                       addr67:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr88:
                              }
                              while(true)
                              {
                                 _loc4_ = true;
                                 if(_loc13_)
                                 {
                                    break loop0;
                                 }
                                 continue loop1;
                                 §§goto(addr67);
                              }
                              continue;
                           }
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr88);
                  }
                  break;
               }
               _loc3_ = _loc2_;
               _loc2_ = _loc2_.§>W§;
            }
            var _loc5_:b2ContactEdge = this.§`W§;
            if(_loc12_ || _loc2_)
            {
               while(_loc5_)
               {
                  _loc6_ = _loc5_.§-!$§;
                  _loc5_ = _loc5_.§+m§;
                  _loc7_ = _loc6_.§#!D§();
                  _loc8_ = _loc6_.§''§();
                  if(!_loc13_)
                  {
                     §§push(param1 == _loc7_);
                     if(_loc12_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc13_)
                           {
                              §§pop();
                              if(_loc13_ && _loc2_)
                              {
                                 continue;
                              }
                              addr162:
                              §§push(param1 == _loc8_);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc13_)
                        {
                           this.m_world.§"s§.§;!^§(_loc6_);
                        }
                     }
                     continue;
                  }
                  §§goto(addr162);
               }
               if(!_loc13_)
               {
                  addr177:
                  if(this.§5!5§ & b2internal::,!a)
                  {
                     if(!(_loc13_ && this))
                     {
                        _loc9_ = this.m_world.§"s§.§-E§;
                        if(!_loc13_)
                        {
                           param1.§&R§(_loc9_);
                           addr200:
                           param1.§;!^§();
                           if(_loc12_ || this)
                           {
                              param1.m_body = null;
                              if(_loc12_ || this)
                              {
                                 param1.§>W§ = null;
                                 if(_loc12_ || this)
                                 {
                                 }
                                 addr261:
                                 this.§,q§();
                                 §§goto(addr263);
                              }
                              var _loc10_:*;
                              §§push((_loc10_ = this).§]>§);
                              if(_loc12_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc11_:* = §§pop();
                              if(!(_loc13_ && _loc2_))
                              {
                                 _loc10_.§]>§ = _loc11_;
                              }
                              if(!_loc12_)
                              {
                              }
                              addr263:
                              return;
                           }
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr261);
                  }
                  §§goto(addr200);
               }
               §§goto(addr261);
            }
            §§goto(addr177);
         }
         addr42:
      }
      
      public function § !a§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2Fixture = null;
         if(_loc8_)
         {
            if(this.m_world.§-!§() != true)
            {
               loop0:
               while(true)
               {
                  §§push(this.m_xf);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().R);
                     if(_loc8_ || param2)
                     {
                        §§pop().Set(param2);
                        while(true)
                        {
                           if(_loc8_)
                           {
                              §§push(this.m_xf);
                              if(!(_loc9_ && param2))
                              {
                                 if(_loc9_)
                                 {
                                    continue loop1;
                                 }
                                 §§pop().position.SetV(param1);
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                                 if(!_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       §§push(this.m_xf);
                                    }
                                    continue loop0;
                                 }
                              }
                              break;
                           }
                           addr64:
                           return;
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
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    while(true)
                                    {
                                       §§push(_loc4_.col2);
                                       addr346:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                       }
                                       addr145:
                                       if(!(_loc8_ || param1))
                                       {
                                          continue;
                                       }
                                       addr152:
                                       §§push(this.m_xf);
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§push(§§pop().position);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop().y);
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      addr177:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc8_ || param1)
                                                      {
                                                         §§pop().y = §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§push(this.m_sweep);
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     §§pop().c0.SetV(this.m_sweep.c);
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(true)
                                                                        {
                                                                           §§push(this.m_sweep);
                                                                           break;
                                                                        }
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.m_sweep);
                                                                           addr115:
                                                                           addr314:
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr117:
                                                                                 §§push(§§pop().c);
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    addr125:
                                                                                    §§push(this.m_sweep);
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             §§goto(addr145);
                                                                                          }
                                                                                          §§goto(addr177);
                                                                                       }
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             if(_loc8_ || this)
                                                                                             {
                                                                                                if(!(_loc8_ || param1))
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§push(this.m_xf);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().position);
                                                                                                   addr249:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr250:
                                                                                                      addr347:
                                                                                                      while(_loc8_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               while(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               loop13:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.m_sweep);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().c);
                                                                                                                     addr273:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        §§push(_loc4_.col1);
                                                                                                                        if(_loc9_ && _loc3_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.x);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_.col2);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr296:
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(_loc9_ && this)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    break loop29;
                                                                                                                                 }
                                                                                                                                 break loop26;
                                                                                                                              }
                                                                                                                              addr292:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.y);
                                                                                                                              if(!(_loc9_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 break loop29;
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              §§goto(addr296);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr350:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr351:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr349:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr206:
                                                                                                                     continue loop4;
                                                                                                                     while(!(_loc9_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop().c);
                                                                                                                        while(_loc8_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.m_sweep);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop22;
                                                                                                                              §§goto(addr125);
                                                                                                                           }
                                                                                                                           §§goto(addr117);
                                                                                                                        }
                                                                                                                        §§goto(addr273);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr261:
                                                                                                               addr352:
                                                                                                            }
                                                                                                            §§goto(addr292);
                                                                                                            §§goto(addr177);
                                                                                                         }
                                                                                                         §§goto(addr346);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr349);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr152);
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr258);
                                                                                       }
                                                                                       while(_loc8_ || _loc3_)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          if(_loc9_ && param1)
                                                                                          {
                                                                                             §§goto(addr364);
                                                                                          }
                                                                                          §§goto(addr206);
                                                                                          §§push(this.m_sweep);
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                       addr315:
                                                                                    }
                                                                                    §§goto(addr223);
                                                                                 }
                                                                                 §§goto(addr214);
                                                                              }
                                                                              §§goto(addr206);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr315);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr364);
                                                                  }
                                                                  §§goto(addr115);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         §§goto(addr355);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr314);
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr249);
                                       }
                                       §§goto(addr248);
                                    }
                                 }
                                 §§goto(addr347);
                              }
                           }
                        }
                     }
                     addr355:
                     §§pop().a0 = this.m_sweep.a = param2;
                     addr364:
                     var _loc6_:§!s§ = this.m_world.§"s§.§-E§;
                     _loc3_ = this.§%c§;
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc9_)
                           {
                              this.m_world.§"s§.§<o§();
                              break;
                           }
                           break;
                        }
                        _loc3_.§8!6§(_loc6_,this.m_xf,this.m_xf);
                        if(!_loc8_)
                        {
                           break;
                        }
                        _loc3_ = _loc3_.§>W§;
                     }
                     return;
                  }
                  §§goto(addr352);
               }
            }
            §§goto(addr64);
         }
         §§goto(addr41);
      }
      
      public function §&!$§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !a§(param1.position,param1.GetAngle());
         }
      }
      
      public function §6V§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §5!@§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§ !a§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §7&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !a§(this.GetPosition(),param1);
         }
      }
      
      public function § g§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §?N§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§2!]§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.§@S§.SetV(param1);
                  if(!(_loc3_ && _loc2_))
                  {
                     break;
                  }
                  addr73:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc3_ && param1))
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§@S§;
      }
      
      public function §"l§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§2!]§ == b2_staticBody)
            {
               if(_loc2_ || param1)
               {
                  §§goto(addr71);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr38);
                  }
               }
            }
            addr38:
            while(true)
            {
               this.m_angularVelocity = param1;
               if(_loc2_ || param1)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr71:
      }
      
      public function §4^§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §%f§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc2_ || _loc2_)
         {
            _loc1_.type = this.§0i§();
            while(true)
            {
               _loc1_.§>6§ = (this.§5!5§ & b2internal::8") == b2internal::8";
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  while(true)
                  {
                     _loc1_.§5!T§ = this.§"!V§;
                     loop3:
                     while(_loc2_ || _loc1_)
                     {
                        while(true)
                        {
                           _loc1_.§ ![§ = this.m_angularVelocity;
                           while(true)
                           {
                              _loc1_.§[! § = (this.§5!5§ & b2internal::"u) == b2internal::"u;
                              loop6:
                              while(!_loc3_)
                              {
                                 _loc1_.§,r§ = (this.§5!5§ & b2internal::^&) == b2internal::^&;
                                 loop7:
                                 while(!_loc3_)
                                 {
                                    _loc1_.§?L§ = (this.§5!5§ & b2internal::7<) == b2internal::7<;
                                    do
                                    {
                                       _loc1_.§8,§ = this.§0N§;
                                       loop9:
                                       while(_loc2_ || _loc3_)
                                       {
                                          _loc1_.§ ;§.SetV(this.GetLinearVelocity());
                                          while(true)
                                          {
                                             if(_loc2_ || _loc1_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                _loc1_.position = this.GetPosition();
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          continue loop6;
                                       }
                                       continue loop7;
                                    }
                                    while(!_loc2_);
                                    
                                    return _loc1_;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr64);
            }
         }
         §§goto(addr156);
      }
      
      public function §>!c§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(this.§2!]§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(!(_loc4_ && this))
                     {
                        this.SetAwake(true);
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr183:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this.§5l§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§5l§);
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
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§5l§);
                                       if(_loc4_ && _loc3_)
                                       {
                                          break;
                                       }
                                       §§push(this.§5l§);
                                       if(_loc3_ || param1)
                                       {
                                          §§push(§§pop().y);
                                          if(!_loc4_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop7;
                                             }
                                             §§push(param1.y);
                                             if(_loc4_ && param2)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          if(!(_loc4_ && param1))
                                          {
                                             §§pop().y = §§pop();
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop8;
                                                }
                                                if(_loc3_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§'!K§);
                                                   if(!_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(param2.x);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(this.m_sweep.c.x);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            addr57:
                                                            §§push(param1.y);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(param2.y);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(this.m_sweep.c.y);
                                                                     if(_loc3_ || param2)
                                                                     {
                                                                        addr91:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           addr89:
                                                                           §§push(§§pop() * param1.x);
                                                                        }
                                                                        §§push(§§pop() + (§§pop() - §§pop()));
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr89);
                                                               }
                                                            }
                                                            §§goto(addr89);
                                                         }
                                                         §§goto(addr91);
                                                      }
                                                      §§goto(addr89);
                                                   }
                                                   §§goto(addr57);
                                                }
                                                else
                                                {
                                                   §§goto(addr183);
                                                }
                                             }
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
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
            return;
         }
         §§goto(addr203);
      }
      
      public function §;P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§2!]§ == b2_dynamicBody)
            {
               loop0:
               do
               {
                  if(this.IsAwake() == false)
                  {
                     if(!_loc2_)
                     {
                        this.SetAwake(true);
                     }
                     loop1:
                     while(_loc3_ || _loc3_)
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§'!K§);
                           if(!(_loc2_ && this))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§'!K§ = §§pop();
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr24);
               }
               while(_loc2_);
               
               return;
               addr57:
            }
            addr90:
            return;
         }
         §§goto(addr57);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§2!]§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(_loc4_)
                     {
                        this.SetAwake(true);
                     }
                     loop1:
                     while(_loc4_ || param2)
                     {
                        loop9:
                        while(true)
                        {
                           if(!(_loc4_ || param2))
                           {
                              continue loop1;
                           }
                           addr208:
                           §§push(this.§@S§);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(this.§@S§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop().y);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(this.§",§);
                                       if(_loc4_ || this)
                                       {
                                          addr150:
                                          §§push(param1.y);
                                          if(_loc4_ || param2)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                          else
                                          {
                                             addr198:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                break loop9;
                                                §§goto(addr150);
                                             }
                                             addr198:
                                          }
                                       }
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       addr163:
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc3_ && param1))
                                       {
                                          §§pop().y = §§pop();
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop9;
                                             }
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                break;
                                             }
                                             §§push(this);
                                             §§push(this.m_angularVelocity);
                                             if(_loc4_ || param1)
                                             {
                                                §§push(this.§-2§);
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§push(param2.x);
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.m_sweep.c.x);
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr67:
                                                            §§push(param1.y);
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  addr79:
                                                                  §§push(param2.y);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(this.m_sweep.c.y);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr95:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr92:
                                                                           §§push(param1.x);
                                                                        }
                                                                        §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr95);
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                               }
                                                               §§goto(addr95);
                                                            }
                                                            §§goto(addr92);
                                                         }
                                                         §§goto(addr79);
                                                      }
                                                      §§goto(addr95);
                                                   }
                                                   §§goto(addr67);
                                                }
                                             }
                                             §§goto(addr95);
                                          }
                                          §§goto(addr241);
                                       }
                                       addr200:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop9;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§",§);
                                          if(_loc4_ || this)
                                          {
                                             §§goto(addr198);
                                             §§push(param1.x);
                                          }
                                          break loop9;
                                       }
                                       addr187:
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr163);
                              }
                              else
                              {
                                 while(true)
                                 {
                                 }
                                 addr186:
                              }
                              §§goto(addr187);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§goto(addr208);
                              }
                              addr184:
                           }
                           §§goto(addr186);
                        }
                        while(true)
                        {
                           §§goto(addr200);
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     §§goto(addr184);
                  }
               }
            }
         }
         addr241:
      }
      
      public function §<`§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.§4^§());
         if(!(_loc17_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§ g§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§#m§(this.§%f§());
         var _loc8_:b2Fixture = _loc5_.§%c§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc16_ || _loc3_)
               {
                  _loc5_.§,q§();
                  if(_loc16_)
                  {
                     _loc6_.§,q§();
                     break;
                  }
                  break;
               }
               break;
            }
            if(!param1(_loc8_))
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§>W§;
               continue;
            }
            if(_loc17_)
            {
               break;
            }
            _loc13_ = _loc8_.§>W§;
            if(!_loc17_)
            {
               if(_loc7_)
               {
                  if(_loc16_)
                  {
                     _loc7_.§>W§ = _loc13_;
                     if(_loc16_ || this)
                     {
                        addr91:
                        var _loc14_:*;
                        §§push((_loc14_ = _loc5_).§]>§);
                        if(_loc16_ || this)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc15_:* = §§pop();
                        if(_loc16_)
                        {
                           _loc14_.§]>§ = _loc15_;
                        }
                        if(!(_loc17_ && _loc3_))
                        {
                           _loc8_.§>W§ = _loc6_.§%c§;
                           if(_loc16_ || _loc2_)
                           {
                              addr129:
                              _loc6_.§%c§ = _loc8_;
                              if(!(_loc17_ && param1))
                              {
                                 §§push((_loc14_ = _loc6_).§]>§);
                                 if(_loc16_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc15_ = §§pop();
                                 if(!_loc17_)
                                 {
                                    _loc14_.§]>§ = _loc15_;
                                 }
                                 if(!_loc17_)
                                 {
                                    addr166:
                                    _loc8_.m_body = _loc6_;
                                 }
                              }
                              §§goto(addr166);
                           }
                           _loc8_ = _loc13_;
                           continue;
                        }
                        §§goto(addr129);
                        addr85:
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr91);
               }
               else
               {
                  _loc5_.§%c§ = _loc13_;
                  if(!_loc17_)
                  {
                     §§goto(addr91);
                  }
               }
               §§goto(addr129);
            }
            §§goto(addr85);
         }
         var _loc9_:b2Vec2 = _loc5_.§ g§();
         var _loc10_:b2Vec2 = _loc6_.§ g§();
         var _loc11_:b2Vec2 = b2Math.§>>§(_loc2_,b2Math.§8V§(_loc3_,b2Math.§8!Y§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§>>§(_loc2_,b2Math.§8V§(_loc3_,b2Math.§8!Y§(_loc10_,_loc4_)));
         if(_loc16_)
         {
            _loc5_.SetLinearVelocity(_loc11_);
            while(true)
            {
               _loc6_.SetLinearVelocity(_loc12_);
               loop2:
               for(; !(_loc17_ && _loc3_); if(_loc17_ && this)
               {
                  continue;
               },§§goto(addr254))
               {
                  _loc5_.§"l§(_loc3_);
                  while(true)
                  {
                     _loc6_.§"l§(_loc3_);
                     loop4:
                     while(!(_loc17_ && this))
                     {
                        while(true)
                        {
                           _loc5_.§@i§();
                           do
                           {
                              _loc6_.§@i§();
                           }
                           while(!_loc16_);
                           
                           if(_loc16_ || _loc2_)
                           {
                              continue loop2;
                           }
                           continue loop4;
                        }
                        return _loc6_;
                     }
                  }
               }
            }
         }
         §§goto(addr270);
      }
      
      public function §3!P§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§%c§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§>W§;
            if(_loc14_)
            {
               continue;
            }
            var _loc12_:*;
            §§push((_loc12_ = param1).§]>§);
            if(!_loc14_)
            {
               §§push(§§pop() - 1);
            }
            var _loc13_:* = §§pop();
            if(!_loc14_)
            {
               _loc12_.§]>§ = _loc13_;
            }
            if(!_loc14_)
            {
               _loc2_.§>W§ = this.§%c§;
               if(_loc15_ || _loc3_)
               {
                  addr69:
                  this.§%c§ = _loc2_;
                  if(_loc15_)
                  {
                     §§push((_loc12_ = this).§]>§);
                     if(!_loc14_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc13_ = §§pop();
                     if(_loc15_)
                     {
                        _loc12_.§]>§ = _loc13_;
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
            §§goto(addr69);
         }
         if(!(_loc14_ && _loc2_))
         {
            _loc3_.§]>§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§ g§();
         var _loc6_:b2Vec2 = _loc4_.§ g§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.§4^§());
         if(!(_loc14_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§4^§());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(_loc15_ || _loc3_)
         {
            _loc3_.§,q§();
         }
         do
         {
            this.§@i§();
         }
         while(!_loc15_);
         
      }
      
      public function GetMass() : Number
      {
         return this.§`!6§;
      }
      
      public function § !K§() : Number
      {
         return this.§0!K§;
      }
      
      public function §3_§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            param1.§9h§ = this.§`!6§;
         }
         do
         {
            param1.§5!W§ = this.§0!K§;
            do
            {
               param1.center.SetV(this.m_sweep.localCenter);
            }
            while(_loc2_ && this);
            
         }
         while(!_loc3_);
         
      }
      
      public function §4!d§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§-!§());
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§-!§());
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§2!]§);
                        while(true)
                        {
                           if(§§pop() != b2_dynamicBody)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 break;
                              }
                              while(!_loc4_)
                              {
                                 loop7:
                                 while(_loc3_ || this)
                                 {
                                    this.§0!K§ = 0;
                                    while(true)
                                    {
                                       this.§-2§ = 0;
                                       while(true)
                                       {
                                          this.§`!6§ = param1.§9h§;
                                          loop10:
                                          for(; !_loc4_; while(!(_loc4_ && _loc3_))
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr164);
                                          })
                                          {
                                             while(true)
                                             {
                                                §§push(this.§`!6§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr183:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            this.§`!6§ = 1;
                                                            continue loop10;
                                                         }
                                                         addr184:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§",§ = 1 / this.§`!6§;
                                                            addr171:
                                                            while(true)
                                                            {
                                                               if(_loc4_ && param1)
                                                               {
                                                                  break loop2;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop12;
                                                         }
                                                         addr164:
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop7;
                                          if(!(_loc3_ || param1))
                                          {
                                             continue;
                                          }
                                          §§goto(addr141);
                                       }
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          §§goto(addr50);
                                       }
                                       §§goto(addr276);
                                    }
                                 }
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                              this.§",§ = 0;
                              §§goto(addr219);
                           }
                        }
                        return;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr204);
      }
      
      public function §,q§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(!_loc5_)
         {
            this.§`!6§ = 0;
            while(true)
            {
               this.§",§ = 0;
               loop2:
               for(; !(_loc5_ && this); if(!(_loc6_ || _loc2_))
               {
                  continue;
               },if(false)
               {
                  §§goto(addr83);
               },§§goto(addr124))
               {
                  this.§-2§ = 0;
                  loop3:
                  while(true)
                  {
                     this.m_sweep.localCenter.§^!,§();
                     loop4:
                     while(true)
                     {
                        addr83:
                        while(true)
                        {
                           §§push(this.§2!]§);
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
                                          addr91:
                                          while(true)
                                          {
                                             §§push(this.§2!]§);
                                             if(_loc5_ && _loc1_)
                                             {
                                                break;
                                             }
                                             §§push(b2_kinematicBody);
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                continue loop7;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(!_loc6_)
                                             {
                                                continue loop9;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop8;
                                             }
                                          }
                                          continue loop6;
                                       }
                                    }
                                    while(§§pop())
                                    {
                                       if(!(_loc6_ || _loc1_))
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc5_ && this))
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc5_)
                                          {
                                             continue loop3;
                                          }
                                          addr66:
                                          if(!(_loc5_ && this))
                                          {
                                             return;
                                          }
                                          addr119:
                                          while(true)
                                          {
                                             this.§0!K§ = 0;
                                             continue loop2;
                                             §§goto(addr66);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr91);
                                       }
                                    }
                                    addr124:
                                    var _loc1_:b2Vec2 = b2Vec2.§ !Q§(0,0);
                                    var _loc2_:b2Fixture = this.§%c§;
                                    addr255:
                                    if(_loc2_)
                                    {
                                       §§push(_loc2_.§6!A§);
                                       if(!(_loc5_ && _loc1_))
                                       {
                                          §§push(0);
                                          if(_loc6_ || this)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr251:
                                                   _loc2_ = _loc2_.§>W§;
                                                   §§goto(addr255);
                                                }
                                                this.§",§ = 1;
                                                addr466:
                                                addr494:
                                                addr488:
                                                §§push(this.§0!K§ > 0);
                                                if(_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr475:
                                                      §§pop();
                                                      addr476:
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push((this.§5!5§ & b2internal::"u) == 0);
                                                         if(_loc6_)
                                                         {
                                                            addr386:
                                                            if(§§pop())
                                                            {
                                                               addr388:
                                                               §§push(this);
                                                               §§push(this.§0!K§);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  §§push(this.§`!6§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(_loc1_.x);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§push(_loc1_.x);
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           addr441:
                                                                           addr442:
                                                                           addr443:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              §§push(_loc1_.y);
                                                                              if(_loc6_ || _loc1_)
                                                                              {
                                                                                 §§push(§§pop() * _loc1_.y);
                                                                              }
                                                                           }
                                                                           §§pop().§0!K§ = §§pop() - §§pop() * §§pop();
                                                                           addr444:
                                                                           if(!(_loc5_ && _loc1_))
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(_loc6_ || _loc1_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§0!K§);
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop() * this.§4!,§);
                                                                                    }
                                                                                    §§pop().§0!K§ = §§pop();
                                                                                    addr374:
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       b2Settings.b2Assert(this.§0!K§ > 0);
                                                                                       this.§-2§ = 1 / this.§0!K§;
                                                                                       addr333:
                                                                                       if(!(_loc6_ || _loc1_))
                                                                                       {
                                                                                          §§goto(addr388);
                                                                                       }
                                                                                       addr526:
                                                                                       var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          addr727:
                                                                                          this.m_sweep.localCenter.SetV(_loc1_);
                                                                                          this.m_sweep.c0.SetV(b2Math.§,p§(this.m_xf,this.m_sweep.localCenter));
                                                                                          addr730:
                                                                                          addr724:
                                                                                          §§push(this.m_sweep);
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§pop().c.SetV(this.m_sweep.c0);
                                                                                                addr687:
                                                                                                if(!(_loc5_ && _loc1_))
                                                                                                {
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      addr642:
                                                                                                      §§push(this.§@S§);
                                                                                                      §§push(this.§@S§.x);
                                                                                                      §§push(this.m_angularVelocity);
                                                                                                      §§push(this.m_sweep.c.y);
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         addr668:
                                                                                                         addr666:
                                                                                                         addr657:
                                                                                                         addr667:
                                                                                                         §§push(§§pop() - _loc3_.y);
                                                                                                         if(_loc6_ || _loc2_)
                                                                                                         {
                                                                                                            addr665:
                                                                                                            §§push(-§§pop());
                                                                                                         }
                                                                                                         §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                                         addr669:
                                                                                                         §§push(this.§@S§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(this.§@S§);
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(this.m_angularVelocity);
                                                                                                                  if(_loc6_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(this.m_sweep);
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(_loc6_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.x);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!(_loc5_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr605:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          addr608:
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             addr611:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr687);
                                                                                                                                                      }
                                                                                                                                                      return;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr669);
                                                                                                                                                }
                                                                                                                                                §§goto(addr642);
                                                                                                                                             }
                                                                                                                                             §§goto(addr668);
                                                                                                                                          }
                                                                                                                                          §§goto(addr642);
                                                                                                                                       }
                                                                                                                                       §§goto(addr666);
                                                                                                                                    }
                                                                                                                                    §§goto(addr605);
                                                                                                                                 }
                                                                                                                                 §§goto(addr657);
                                                                                                                              }
                                                                                                                              §§goto(addr605);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr642);
                                                                                                                     }
                                                                                                                     §§goto(addr667);
                                                                                                                  }
                                                                                                                  §§goto(addr608);
                                                                                                               }
                                                                                                               §§goto(addr611);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr642);
                                                                                                      }
                                                                                                      §§goto(addr665);
                                                                                                   }
                                                                                                   §§goto(addr730);
                                                                                                }
                                                                                                §§goto(addr724);
                                                                                             }
                                                                                             §§goto(addr727);
                                                                                          }
                                                                                          addr705:
                                                                                          §§goto(addr705);
                                                                                       }
                                                                                       §§goto(addr668);
                                                                                       addr303:
                                                                                       addr348:
                                                                                       addr340:
                                                                                    }
                                                                                    §§goto(addr444);
                                                                                 }
                                                                                 §§push(_loc1_);
                                                                                 §§push(_loc1_.y);
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() * this.§",§);
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 addr525:
                                                                              }
                                                                              §§goto(addr466);
                                                                           }
                                                                           §§goto(addr476);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr441);
                                                                  }
                                                                  §§goto(addr442);
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            this.§0!K§ = 0;
                                                            addr309:
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     this.§-2§ = 0;
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr374);
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr526);
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr494);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr475);
                                                      }
                                                      §§goto(addr488);
                                                   }
                                                   §§goto(addr386);
                                                }
                                                §§goto(addr475);
                                             }
                                             _loc4_ = _loc2_.§3_§();
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(this);
                                                §§push(this.§`!6§);
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(§§pop() + _loc4_.§9h§);
                                                }
                                                §§pop().§`!6§ = §§pop();
                                                §§push(_loc1_);
                                                §§push(_loc1_.x);
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc4_.center.x);
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      §§push(§§pop() * _loc4_.§9h§);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().x = §§pop();
                                                addr233:
                                                if(_loc6_)
                                                {
                                                   addr195:
                                                   §§push(_loc1_);
                                                   §§push(_loc1_.y);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc4_.center.y);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() * _loc4_.§9h§);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().y = §§pop();
                                                   §§push(this);
                                                   §§push(this.§0!K§);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(§§pop() + _loc4_.§5!W§);
                                                   }
                                                   §§pop().§0!K§ = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr195);
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   addr211:
                                                   §§goto(addr211);
                                                   addr235:
                                                }
                                                addr250:
                                                §§goto(addr250);
                                             }
                                             §§goto(addr235);
                                          }
                                       }
                                       §§goto(addr466);
                                    }
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       §§push(this.§`!6§);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(0);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   this.§",§ = 1 / this.§`!6§;
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc1_);
                                                      §§push(_loc1_.x);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§push(§§pop() * this.§",§);
                                                      }
                                                      §§pop().x = §§pop();
                                                      §§goto(addr525);
                                                      addr292:
                                                   }
                                                   §§goto(addr466);
                                                }
                                                §§goto(addr292);
                                             }
                                             else
                                             {
                                                this.§`!6§ = 1;
                                             }
                                          }
                                       }
                                       §§goto(addr466);
                                    }
                                    §§goto(addr340);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr119);
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
            if(!(_loc5_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  addr44:
                  §§push(_loc2_.col2.x);
                  if(!_loc5_)
                  {
                     addr49:
                     §§push(param1.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr82);
               }
               addr62:
               §§push(§§pop() + §§pop());
               §§push(_loc2_.col1.y);
               if(!(_loc5_ && param1))
               {
                  addr82:
                  §§push(param1.x);
                  if(_loc4_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc4_ || _loc2_)
                     {
                        addr94:
                        §§push(_loc2_.col2.y);
                        if(!(_loc5_ && _loc2_))
                        {
                           addr104:
                           §§push(§§pop() * param1.y);
                        }
                        §§push(§§pop() + §§pop());
                     }
                  }
                  §§goto(addr104);
               }
               var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  §§push(_loc3_.x);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() + this.m_xf.position.x);
                  }
                  §§pop().x = §§pop();
               }
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
               while(!_loc4_);
               
               return _loc3_;
            }
            §§goto(addr49);
         }
         §§goto(addr44);
      }
      
      public function §7c§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ !$§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ U§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`q§(this.m_xf.R,param1);
      }
      
      public function §8X§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§@S§.x);
         if(!_loc3_)
         {
            §§push(this.m_angularVelocity);
            if(!_loc3_)
            {
               §§push(param1.y);
               if(!(_loc3_ && param1))
               {
                  §§push(this.m_sweep.c.y);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr86);
               }
               §§goto(addr72);
            }
            §§goto(addr62);
         }
         addr62:
         §§push(§§pop() - §§pop());
         §§push(this.§@S§.y);
         if(_loc2_)
         {
            addr68:
            §§push(this.m_angularVelocity);
            if(!_loc3_)
            {
               addr72:
               §§push(param1.x);
               if(_loc2_)
               {
                  addr86:
                  §§push(§§pop() - this.m_sweep.c.x);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §5&§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_ || param1)
         {
            §§push(param1.x);
            if(_loc4_ || this)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || _loc2_)
               {
                  addr49:
                  §§push(_loc2_.col2.x);
                  if(_loc4_)
                  {
                     §§push(param1.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr62:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!_loc5_)
                           {
                              §§push(param1.x);
                              if(_loc4_)
                              {
                                 addr71:
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    addr88:
                                    addr74:
                                    §§push(_loc2_.col2.y);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       addr84:
                                       §§push(§§pop() * param1.y);
                                    }
                                    var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                    if(_loc4_ || param1)
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
                                          if(_loc4_ || param1)
                                          {
                                             §§push(§§pop() + this.m_xf.position.y);
                                          }
                                          §§pop().y = §§pop();
                                       }
                                       while(_loc5_);
                                       
                                    }
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(this.§@S§.x);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(this.m_angularVelocity);
                                       if(_loc4_)
                                       {
                                          §§push(_loc3_.y);
                                          if(_loc4_)
                                          {
                                             §§push(this.m_sweep.c.y);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc4_ || param1)
                                                   {
                                                      addr151:
                                                      §§push(§§pop() - §§pop());
                                                      §§push(this.§@S§.y);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(this.m_angularVelocity);
                                                         if(_loc4_)
                                                         {
                                                            addr176:
                                                            §§push(_loc3_.x);
                                                            if(!_loc5_)
                                                            {
                                                               addr170:
                                                               §§push(§§pop() - this.m_sweep.c.x);
                                                            }
                                                            §§push(§§pop() + §§pop() * §§pop());
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                   }
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                }
                                                §§goto(addr176);
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr176);
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr84);
                           }
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr88);
               }
               §§goto(addr62);
            }
            §§goto(addr88);
         }
         §§goto(addr49);
      }
      
      public function §`c§() : Number
      {
         return this.§0N§;
      }
      
      public function §;k§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§0N§ = param1;
         }
      }
      
      public function §4h§() : Number
      {
         return this.§"!V§;
      }
      
      public function §,y§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§"!V§ = param1;
         }
      }
      
      public function §4!#§(param1:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§2!]§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr124:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     this.§2!]§ = param1;
                  }
               }
               addr125:
               return;
               loop4:
               while(true)
               {
                  §§push(this.§2!]§);
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  §§push(b2_staticBody);
                  if(_loc3_)
                  {
                     break;
                  }
                  if(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        loop9:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 do
                                 {
                                    this.§5l§.§^!,§();
                                    continue loop9;
                                 }
                                 while(false);
                                 
                                 var _loc2_:b2ContactEdge = this.§`W§;
                                 addr152:
                                 if(_loc2_)
                                 {
                                    _loc2_.§-!$§.§[!R§();
                                    if(!_loc3_)
                                    {
                                       _loc2_ = _loc2_.§+m§;
                                       §§goto(addr152);
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr125);
                           }
                        }
                        continue loop4;
                     }
                  }
                  while(!(_loc3_ && _loc2_))
                  {
                     this.§@S§.§^!,§();
                     continue loop4;
                  }
                  §§goto(addr116);
               }
               §§goto(addr124);
            }
         }
         §§goto(addr120);
      }
      
      public function §0i§() : uint
      {
         return this.§2!]§;
      }
      
      public function §97§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!param1)
            {
               this.§5!5§ &= ~b2internal::^&;
               if(_loc2_ && _loc2_)
               {
                  addr82:
               }
               return;
            }
            if(!(_loc2_ && _loc2_))
            {
               this.§5!5§ |= b2internal::^&;
            }
         }
         §§goto(addr82);
      }
      
      public function §,!Q§() : Boolean
      {
         return (this.§5!5§ & b2internal::^&) == b2internal::^&;
      }
      
      public function §1W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  addr77:
                  this.§5!5§ |= b2internal::8";
               }
            }
            else
            {
               this.§5!5§ &= ~b2internal::8";
               do
               {
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               while(this.SetAwake(true), !(_loc2_ || _loc3_));
               
               §§goto(addr24);
            }
            addr24:
            return;
         }
         §§goto(addr77);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  addr112:
                  this.§5!5§ |= b2internal::7<;
               }
               this.§^!`§ = 0;
               addr118:
            }
            else
            {
               this.§5!5§ &= ~b2internal::7<;
               loop0:
               while(true)
               {
                  this.§^!`§ = 0;
                  loop1:
                  while(true)
                  {
                     this.§@S§.§^!,§();
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              this.m_angularVelocity = 0;
                              loop3:
                              while(true)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    this.§5l§.§^!,§();
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr24);
                           }
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr24);
            }
            addr24:
            return;
         }
         §§goto(addr112);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§5!5§ & b2internal::7<) == b2internal::7<;
      }
      
      public function §,o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr81:
                  this.§5!5§ |= b2internal::"u;
               }
               while(true)
               {
                  §§goto(addr28);
               }
               addr87:
            }
            else
            {
               this.§5!5§ &= ~b2internal::"u;
            }
            while(true)
            {
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr61);
               }
               else
               {
                  §§goto(addr87);
               }
               return;
            }
         }
         §§goto(addr81);
      }
      
      public function §-§() : Boolean
      {
         return (this.§5!5§ & b2internal::"u) == b2internal::"u;
      }
      
      public function §'!^§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§!s§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() == this.§5!B§())
               {
                  if(!(_loc7_ && param1))
                  {
                     return;
                  }
                  addr71:
                  _loc2_ = this.m_world.§"s§.§-E§;
                  _loc3_ = this.§%c§;
                  while(_loc3_)
                  {
                     _loc3_.§+!#§(_loc2_,this.m_xf);
                     if(!(_loc6_ || _loc3_))
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§>W§;
                  }
               }
               else
               {
                  addr57:
                  if(param1)
                  {
                     if(!(_loc7_ && param1))
                     {
                        this.§5!5§ |= b2internal::,!a;
                     }
                     §§goto(addr71);
                  }
                  else
                  {
                     this.§5!5§ &= ~b2internal::,!a;
                     _loc2_ = this.m_world.§"s§.§-E§;
                     _loc3_ = this.§%c§;
                     if(!_loc7_)
                     {
                        while(_loc3_)
                        {
                           _loc3_.§&R§(_loc2_);
                           if(!_loc6_)
                           {
                              break;
                           }
                           _loc3_ = _loc3_.§>W§;
                        }
                     }
                     _loc4_ = this.§`W§;
                     if(!(_loc7_ && param1))
                     {
                        while(_loc4_)
                        {
                           _loc5_ = _loc4_;
                           _loc4_ = _loc4_.§+m§;
                           if(_loc6_ || _loc3_)
                           {
                              this.m_world.§"s§.§;!^§(_loc5_.§-!$§);
                           }
                        }
                        if(!(_loc7_ && _loc3_))
                        {
                           this.§`W§ = null;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr71);
      }
      
      public function §5!B§() : Boolean
      {
         return (this.§5!5§ & b2internal::,!a) == b2internal::,!a;
      }
      
      public function §0!d§() : Boolean
      {
         return (this.§5!5§ & b2internal::8") == b2internal::8";
      }
      
      public function §=!?§() : b2Fixture
      {
         return this.§%c§;
      }
      
      public function §!O§() : b2JointEdge
      {
         return this.§4b§;
      }
      
      public function § !#§() : b2ControllerEdge
      {
         return this.§2w§;
      }
      
      public function §!+§() : b2ContactEdge
      {
         return this.§`W§;
      }
      
      public function §5!J§() : b2Body
      {
         return this.§>W§;
      }
      
      public function GetUserData() : *
      {
         return this.§,!&§;
      }
      
      public function §-N§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§,!&§ = param1;
         }
      }
      
      public function §+&§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §@i§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §?!Y§;
         if(!(_loc6_ && _loc2_))
         {
            §§push(_loc1_.R);
            if(_loc7_ || this)
            {
               §§pop().Set(this.m_sweep.a0);
               addr43:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!(_loc6_ && this))
            {
               §§push(_loc1_.position);
               if(!_loc6_)
               {
                  §§push(this.m_sweep);
                  if(_loc7_)
                  {
                     §§push(§§pop().c0);
                     if(_loc7_ || this)
                     {
                        §§push(§§pop().x);
                        if(_loc7_ || _loc1_)
                        {
                           §§push(_loc2_.col1);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop().x);
                              if(!_loc6_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_ || _loc1_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(_loc3_.y);
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_)
                                                   {
                                                      addr154:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr157);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr203);
                                       }
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr178);
                        }
                        addr157:
                        §§pop().x = §§pop();
                        if(_loc7_ || this)
                        {
                           addr170:
                           addr169:
                           addr167:
                           addr165:
                           §§push(_loc1_.position);
                           §§push(this.m_sweep.c0.y);
                           if(_loc7_ || this)
                           {
                              addr178:
                              §§push(_loc2_.col1.y);
                              if(!_loc6_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_)
                                 {
                                    addr187:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       addr192:
                                       §§push(_loc2_.col2.y);
                                       if(_loc7_ || _loc2_)
                                       {
                                          addr203:
                                          §§push(§§pop() - (§§pop() + §§pop() * _loc3_.y));
                                       }
                                    }
                                 }
                              }
                              §§goto(addr203);
                           }
                           §§pop().y = §§pop();
                        }
                        var _loc5_:§!s§ = this.m_world.§"s§.§-E§;
                        _loc4_ = this.§%c§;
                        while(_loc4_)
                        {
                           _loc4_.§8!6§(_loc5_,_loc1_,this.m_xf);
                           if(!(_loc7_ || this))
                           {
                              break;
                           }
                           _loc4_ = _loc4_.§>W§;
                        }
                        return;
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr169);
               }
               §§goto(addr167);
            }
            §§goto(addr165);
         }
         §§goto(addr43);
      }
      
      b2internal function §-W§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.m_xf);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop().R);
               if(_loc3_ || _loc3_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr41:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(!(_loc4_ && _loc2_))
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr188:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr190:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr191:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr192:
                              loop4:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr194:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr124:
                                                §§push(_loc1_.col2);
                                                if(_loc4_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc3_)
                                                {
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      §§push(_loc2_.y);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr153:
                                                         §§push(§§pop() + §§pop() * §§pop());
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               addr169:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc3_ || this)
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     return;
                                                                     addr184:
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr221:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                         addr220:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr223:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                      addr218:
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr153);
                                             }
                                          }
                                          addr205:
                                       }
                                       §§goto(addr218);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr187:
               }
               while(true)
               {
                  §§push(this.m_xf);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop().position);
                     if(!_loc4_)
                     {
                        §§push(this.m_sweep);
                        if(!_loc4_)
                        {
                           §§push(§§pop().c);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(§§pop().y);
                              if(!_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(_loc1_.col1);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop().y);
                                       if(_loc3_)
                                       {
                                          §§push(_loc2_.x);
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr124);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr153);
                                             }
                                             §§goto(addr221);
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr169);
                           }
                           else
                           {
                              §§goto(addr191);
                           }
                        }
                        else
                        {
                           §§goto(addr190);
                        }
                        §§goto(addr191);
                     }
                     else
                     {
                        §§goto(addr188);
                     }
                  }
                  else
                  {
                     §§goto(addr187);
                  }
                  §§goto(addr188);
               }
               §§goto(addr184);
            }
         }
         §§goto(addr41);
      }
      
      b2internal function §3!C§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§2!]§);
            if(_loc3_ || this)
            {
               §§push(b2_dynamicBody);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        addr41:
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr45:
                              §§pop();
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr56:
                                 §§push(param1.§2!]§ == b2_dynamicBody);
                                 if(_loc3_ || this)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_ || param1)
                                    {
                                       addr82:
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             §§goto(addr91);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr91);
                              }
                              var _loc2_:b2JointEdge = this.§4b§;
                              for(; _loc2_; _loc2_ = _loc2_.§+m§)
                              {
                                 if(_loc2_.§=!"§ == param1)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(_loc2_.dynamic.§1S§);
                                       if(!(_loc4_ && _loc3_))
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
                                          if(_loc3_ || _loc2_)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       §§goto(addr146);
                                    }
                                    break;
                                 }
                              }
                              addr146:
                              return §§pop();
                              §§push(true);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr45);
                  }
                  §§goto(addr41);
               }
            }
            §§goto(addr56);
         }
         addr91:
         return false;
      }
      
      b2internal function §3!Z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.m_sweep);
            while(true)
            {
               §§push(param1);
               addr90:
               while(true)
               {
                  §§pop().§3!Z§(§§pop());
               }
            }
            addr89:
         }
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
                  if(_loc2_)
                  {
                     continue loop3;
                  }
                  if(_loc3_)
                  {
                     §§push(this.m_sweep.a0);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§pop().a = §§pop();
                     continue;
                  }
                  §§goto(addr89);
               }
               §§goto(addr90);
            }
         }
      }
   }
}
