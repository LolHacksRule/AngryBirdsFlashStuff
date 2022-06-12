package §48§
{
   import §!D§.b2Contact;
   import §!D§.b2ContactEdge;
   import §#]§.b2Mat22;
   import §#]§.b2Math;
   import §#]§.b2Sweep;
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §55§.§0!K§;
   import §8k§.b2JointEdge;
   import §<!`§.b2EdgeShape;
   import §<!`§.b2MassData;
   import §<!`§.b2Shape;
   import §<!c§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §@";§:b2Transform;
      
      b2internal static var §1!t§:uint = 1;
      
      b2internal static var §+!#§:uint = 2;
      
      b2internal static var §9!t§:uint = 4;
      
      b2internal static var §'!V§:uint = 8;
      
      b2internal static var §2"A§:uint = 16;
      
      b2internal static var §+!!§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@";§ = new b2Transform();
            loop0:
            while(true)
            {
               §1!t§ = 1;
               loop1:
               while(true)
               {
                  §+!#§ = 2;
                  loop2:
                  while(true)
                  {
                     §9!t§ = 4;
                     while(!_loc1_)
                     {
                        continue loop0;
                        loop7:
                        while(_loc2_ || _loc2_)
                        {
                           loop8:
                           while(true)
                           {
                              b2_kinematicBody = 1;
                              while(_loc2_)
                              {
                                 b2_dynamicBody = 2;
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop8;
                                       }
                                       continue loop2;
                                    }
                                    continue loop7;
                                 }
                              }
                              addr73:
                              addr85:
                              while(!(_loc1_ && b2Body))
                              {
                                 b2_staticBody = 0;
                                 continue loop7;
                              }
                              addr102:
                              while(_loc2_)
                              {
                                 §+!!§ = 32;
                                 §§goto(addr73);
                              }
                              while(true)
                              {
                                 §2"A§ = 16;
                                 §§goto(addr85);
                              }
                           }
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      b2internal var §`">§:uint;
      
      b2internal var §<";§:int;
      
      b2internal var §]!E§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §="8§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §&e§:b2Vec2;
      
      b2internal var §;!+§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §-!Q§:b2Body;
      
      b2internal var §%"@§:b2Body;
      
      b2internal var §^F§:b2Fixture;
      
      b2internal var §<!b§:int;
      
      b2internal var §+q§:b2ControllerEdge;
      
      b2internal var §,"4§:int;
      
      b2internal var §3n§:b2JointEdge;
      
      b2internal var §>"#§:b2ContactEdge;
      
      b2internal var §+J§:Number;
      
      b2internal var §["A§:Number;
      
      b2internal var §;B§:Number;
      
      b2internal var §"g§:Number;
      
      b2internal var §>j§:Number;
      
      b2internal var §?Q§:Number;
      
      b2internal var §1f§:Number;
      
      b2internal var §4!@§:Number;
      
      private var §6r§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || _loc3_)
         {
            this.m_xf = new b2Transform();
            loop0:
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§="8§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§&e§ = new b2Vec2();
                     while(!_loc6_)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§`">§ = 0;
                           loop5:
                           while(!_loc6_)
                           {
                              §§push(param1.§=-§);
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(!_loc6_)
                                    {
                                       this.§`">§ |= b2internal::'!V;
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop5;
                                    addr231:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§1?§);
                                    loop10:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop11:
                                          while(_loc7_)
                                          {
                                             this.§`">§ |= b2internal::2"A;
                                             loop12:
                                             while(true)
                                             {
                                                addr85:
                                                if(!(_loc7_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc6_ && param1)
                                                {
                                                   continue loop11;
                                                }
                                                loop26:
                                                while(true)
                                                {
                                                   §§push(this.m_sweep);
                                                   while(true)
                                                   {
                                                      §§pop().localCenter.§;v§();
                                                      if(_loc7_)
                                                      {
                                                         §§push(this.m_sweep);
                                                         if(_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               continue;
                                                            }
                                                            §§pop().§0!O§ = 1;
                                                            if(_loc7_ || param2)
                                                            {
                                                               continue loop26;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr278:
                                                            §§pop().a0 = this.m_sweep.a = param1.angle;
                                                         }
                                                      }
                                                      addr290:
                                                      var _loc3_:b2Mat22 = this.m_xf.R;
                                                      var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         addr785:
                                                         §§push(this.m_sweep.c);
                                                         §§push(_loc3_.col1.x);
                                                         §§push(_loc4_.x);
                                                         if(!_loc6_)
                                                         {
                                                            addr803:
                                                            addr802:
                                                            addr796:
                                                            addr794:
                                                            §§push(§§pop() * §§pop());
                                                            §§push(_loc3_.col2.x);
                                                            if(!_loc6_)
                                                            {
                                                               addr801:
                                                               §§push(§§pop() * _loc4_.y);
                                                            }
                                                            §§pop().x = §§pop() + §§pop();
                                                            addr804:
                                                            §§push(this.m_sweep.c);
                                                            §§push(_loc3_.col1);
                                                            if(_loc7_ || this)
                                                            {
                                                               addr717:
                                                               §§push(§§pop().y);
                                                               if(_loc7_)
                                                               {
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§push(_loc4_.x);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        addr736:
                                                                        §§push(§§pop() * §§pop());
                                                                        §§push(_loc3_.col2);
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 §§push(_loc4_.y);
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    addr781:
                                                                                    §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                    addr782:
                                                                                    addr780:
                                                                                    §§push(this.m_sweep);
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       addr688:
                                                                                       §§push(§§pop().c);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr694:
                                                                                          §§push(this.m_sweep.c.x + this.m_xf.position.x);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             addr702:
                                                                                             §§push(this.m_sweep);
                                                                                             if(_loc7_ || param2)
                                                                                             {
                                                                                                §§push(§§pop().c);
                                                                                                if(_loc7_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(this.m_sweep);
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop().c);
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                            {
                                                                                                               if(!(_loc6_ && this))
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        §§push(this.m_xf);
                                                                                                                        if(_loc7_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop().position);
                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr661:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(_loc7_ || param1)
                                                                                                                                       {
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          addr676:
                                                                                                                                          §§push(this.m_sweep);
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                                addr569:
                                                                                                                                                if(_loc7_ || param2)
                                                                                                                                                {
                                                                                                                                                   this.§3n§ = null;
                                                                                                                                                   this.§+q§ = null;
                                                                                                                                                   this.§>"#§ = null;
                                                                                                                                                   this.§,"4§ = 0;
                                                                                                                                                   this.§-!Q§ = null;
                                                                                                                                                   this.§%"@§ = null;
                                                                                                                                                   this.§="8§.SetV(param1.§5"0§);
                                                                                                                                                   this.m_angularVelocity = param1.§!!a§;
                                                                                                                                                   this.§?Q§ = param1.§,!;§;
                                                                                                                                                   addr511:
                                                                                                                                                   addr519:
                                                                                                                                                   addr536:
                                                                                                                                                   addr556:
                                                                                                                                                   addr526:
                                                                                                                                                   addr551:
                                                                                                                                                   addr546:
                                                                                                                                                   addr531:
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      this.§1f§ = param1.§'!k§;
                                                                                                                                                      addr498:
                                                                                                                                                      if(_loc7_ || param1)
                                                                                                                                                      {
                                                                                                                                                         this.§&e§.Set(0,0);
                                                                                                                                                         this.§;!+§ = 0;
                                                                                                                                                         addr492:
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            this.§4!@§ = 0;
                                                                                                                                                            addr476:
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               this.§<";§ = param1.type;
                                                                                                                                                               addr469:
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  if(this.§<";§ == b2_dynamicBody)
                                                                                                                                                                  {
                                                                                                                                                                     addr439:
                                                                                                                                                                     if(_loc7_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc7_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              this.§+J§ = 1;
                                                                                                                                                                              this.§["A§ = 1;
                                                                                                                                                                              addr383:
                                                                                                                                                                              this.§;B§ = 0;
                                                                                                                                                                              addr463:
                                                                                                                                                                              addr433:
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc7_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§"g§ = 0;
                                                                                                                                                                                       addr380:
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§>j§ = param1.§-0§;
                                                                                                                                                                                          addr369:
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§6r§ = param1.§6"&§;
                                                                                                                                                                                                   addr347:
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc7_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc7_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§^F§ = null;
                                                                                                                                                                                                            addr328:
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc6_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§<!b§ = 0;
                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc6_ && _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr347);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr328);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr804);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr511);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr413:
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr383);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr439);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr383);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr463);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr433);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr369);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr519);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr492);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr380);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr536);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr569);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr476);
                                                                                                                                                                              }
                                                                                                                                                                              addr422:
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§["A§ = 0;
                                                                                                                                                                                       §§goto(addr413);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr676);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr556);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr526);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr702);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr498);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr469);
                                                                                                                                                                  }
                                                                                                                                                                  this.§+J§ = 0;
                                                                                                                                                                  §§goto(addr422);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr492);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr551);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr546);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr531);
                                                                                                                                                   }
                                                                                                                                                   addr541:
                                                                                                                                                   §§goto(addr541);
                                                                                                                                                }
                                                                                                                                                §§goto(addr782);
                                                                                                                                             }
                                                                                                                                             §§goto(addr785);
                                                                                                                                          }
                                                                                                                                          §§goto(addr702);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr694);
                                                                                                                                 }
                                                                                                                                 §§goto(addr780);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr694);
                                                                                                                     }
                                                                                                                     §§goto(addr803);
                                                                                                                  }
                                                                                                                  §§goto(addr717);
                                                                                                               }
                                                                                                               §§goto(addr781);
                                                                                                            }
                                                                                                            §§goto(addr661);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr694);
                                                                                                   }
                                                                                                   §§goto(addr803);
                                                                                                }
                                                                                                §§goto(addr688);
                                                                                             }
                                                                                             §§goto(addr781);
                                                                                          }
                                                                                          §§goto(addr736);
                                                                                       }
                                                                                       §§goto(addr785);
                                                                                    }
                                                                                    §§goto(addr803);
                                                                                 }
                                                                                 §§goto(addr801);
                                                                              }
                                                                              §§goto(addr802);
                                                                           }
                                                                           §§goto(addr781);
                                                                        }
                                                                        §§goto(addr796);
                                                                     }
                                                                     §§goto(addr781);
                                                                  }
                                                                  §§goto(addr785);
                                                               }
                                                               §§goto(addr794);
                                                            }
                                                            §§goto(addr785);
                                                         }
                                                         §§goto(addr801);
                                                      }
                                                      §§goto(addr511);
                                                   }
                                                }
                                                loop21:
                                                while(_loc7_ || param1)
                                                {
                                                   this.§`">§ |= b2internal::+!!;
                                                   while(true)
                                                   {
                                                      addr126:
                                                      loop23:
                                                      while(true)
                                                      {
                                                         this.m_world = param2;
                                                         if(_loc7_ || param2)
                                                         {
                                                            if(_loc7_ || param1)
                                                            {
                                                               continue loop4;
                                                            }
                                                            loop15:
                                                            while(true)
                                                            {
                                                               this.§`">§ |= b2internal::9!t;
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.§<_§);
                                                                     while(_loc7_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§`">§ |= b2internal::+!#;
                                                                                 break loop21;
                                                                                 addr109:
                                                                                 if(_loc6_ && _loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       §§push(this.m_xf);
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(§§pop().R);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§pop().Set(param1.angle);
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(!(_loc7_ || this))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         §§goto(addr109);
                                                                                                      }
                                                                                                      §§goto(addr290);
                                                                                                      addr107:
                                                                                                   }
                                                                                                   §§goto(addr85);
                                                                                                }
                                                                                                break loop15;
                                                                                             }
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().position.SetV(param1.position);
                                                                                             §§goto(addr107);
                                                                                          }
                                                                                          addr103:
                                                                                       }
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    §§goto(addr231);
                                                                                 }
                                                                                 §§goto(addr239);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.§'a§);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue;
                                                                           addr159:
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     addr204:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr159);
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr204);
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                        if(!(_loc7_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr103);
                        §§push(this.m_xf);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr213);
      }
      
      private function §+l§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§&!S§().y,param2.§&!S§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§7B§(_loc5_,param2.§&!S§());
         _loc6_ = b2Math.§0!1§(_loc6_,param2.§8e§());
         _loc6_ = b2Math.§7B§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§=!i§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§=!i§(param1.§&!S§(),param2.§&!S§())).Normalize();
         var _loc8_:* = b2Math.§+'§(param1.§&!S§(),param2.§8e§()) > 0;
         if(_loc9_)
         {
            param1.§+T§(param2,_loc6_,_loc7_,_loc8_);
         }
         do
         {
            param2.§%E§(param1,_loc6_,_loc7_,_loc8_);
         }
         while(!(_loc9_ || param2));
         
         return _loc4_;
      }
      
      public function §%!?§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§0!K§ = null;
         if(_loc6_ || _loc2_)
         {
            if(this.m_world.§8Z§() == true)
            {
               if(_loc6_)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(_loc6_)
            {
               _loc2_.§?!Q§(this,this.m_xf,param1);
               if(_loc6_ || _loc2_)
               {
                  if(this.§`">§ & b2internal::+!!)
                  {
                     if(_loc6_ || this)
                     {
                        §§push(this.m_world);
                        if(_loc6_ || this)
                        {
                           _loc3_ = §§pop().§1Y§.§"!q§;
                           if(_loc6_)
                           {
                              _loc2_.§'X§(_loc3_,this.m_xf);
                              addr96:
                              _loc2_.§%"@§ = this.§^F§;
                              if(!_loc7_)
                              {
                                 this.§^F§ = _loc2_;
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    var _loc4_:*;
                                    §§push((_loc4_ = this).§<!b§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!(_loc7_ && this))
                                    {
                                       _loc4_.§<!b§ = _loc5_;
                                    }
                                    if(!(_loc7_ && this))
                                    {
                                       _loc2_.m_body = this;
                                       addr190:
                                       while(true)
                                       {
                                          if(_loc2_.§]!l§ > 0)
                                          {
                                             if(_loc6_)
                                             {
                                                addr184:
                                                while(true)
                                                {
                                                   this.§5"4§();
                                                }
                                                addr184:
                                             }
                                             while(true)
                                             {
                                             }
                                             addr186:
                                          }
                                          addr145:
                                          while(true)
                                          {
                                             §§push(this.m_world);
                                          }
                                       }
                                       addr190:
                                    }
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr96);
                        }
                        while(true)
                        {
                           §§push(this.m_world.§`">§);
                           if(!_loc7_)
                           {
                              §§push(§§pop() | b2World.§3g§);
                           }
                           §§pop().§`">§ = §§pop();
                           if(!_loc7_)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 break;
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr186);
                           §§goto(addr145);
                        }
                        return _loc2_;
                        addr176:
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr96);
               }
               §§goto(addr176);
            }
            §§goto(addr184);
         }
         addr33:
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
            while(_loc5_);
            
         }
         return this.§%!?§(_loc3_);
      }
      
      public function §;!J§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§0!K§ = null;
         if(!_loc13_)
         {
            if(this.m_world.§8Z§() == true)
            {
               if(_loc12_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§^F§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§%"@§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            while(true)
            {
               if(!_loc3_)
               {
                  this.§^F§ = param1.§%"@§;
                  loop2:
                  for(; _loc12_; if(_loc13_ && param1)
                  {
                     continue;
                  },if(!_loc13_)
                  {
                     if(false)
                     {
                        §§goto(addr74);
                     }
                     break loop0;
                  })
                  {
                     loop3:
                     while(true)
                     {
                        _loc4_ = true;
                        if(_loc13_ && param1)
                        {
                           break loop0;
                        }
                        continue loop2;
                        addr74:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
                  continue;
               }
               while(true)
               {
                  _loc3_.§%"@§ = param1.§%"@§;
                  if(_loc12_ || param1)
                  {
                     §§goto(addr74);
                  }
                  break loop0;
               }
            }
         }
         var _loc5_:b2ContactEdge = this.§>"#§;
         if(_loc12_ || _loc3_)
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§0q§;
               _loc5_ = _loc5_.§5"&§;
               _loc7_ = _loc6_.§5§();
               _loc8_ = _loc6_.§]h§();
               if(_loc13_)
               {
                  continue;
               }
               §§push(param1 == _loc7_);
               if(_loc12_)
               {
                  if(!§§pop())
                  {
                     if(_loc12_ || _loc2_)
                     {
                        addr169:
                        §§pop();
                        if(_loc12_ || _loc2_)
                        {
                           addr180:
                           if(param1 != _loc8_)
                           {
                              continue;
                           }
                           if(!_loc12_)
                           {
                              continue;
                           }
                        }
                        this.m_world.§1Y§.§'S§(_loc6_);
                        continue;
                     }
                  }
                  §§goto(addr180);
               }
               §§goto(addr169);
            }
            if(_loc12_ || _loc2_)
            {
               addr197:
               if(this.§`">§ & b2internal::+!!)
               {
                  if(_loc12_ || this)
                  {
                     addr209:
                     _loc9_ = this.m_world.§1Y§.§"!q§;
                     if(!_loc13_)
                     {
                        param1.§,K§(_loc9_);
                        addr220:
                        param1.§'S§();
                        if(_loc12_)
                        {
                           param1.m_body = null;
                           if(_loc12_ || this)
                           {
                              param1.§%"@§ = null;
                              addr234:
                              if(!_loc13_)
                              {
                                 addr249:
                                 var _loc10_:*;
                                 §§push((_loc10_ = this).§<!b§);
                                 if(_loc12_ || param1)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc11_:* = §§pop();
                                 if(!_loc13_)
                                 {
                                    _loc10_.§<!b§ = _loc11_;
                                 }
                                 if(!_loc12_)
                                 {
                                 }
                                 §§goto(addr273);
                              }
                              this.§5"4§();
                           }
                           addr273:
                           return;
                        }
                        §§goto(addr249);
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr234);
               }
               §§goto(addr220);
            }
            §§goto(addr209);
         }
         §§goto(addr197);
      }
      
      public function §'%§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(_loc9_)
         {
            if(this.m_world.§8Z§() != true)
            {
               loop0:
               while(true)
               {
                  §§push(this.m_xf);
                  if(_loc9_)
                  {
                     §§push(§§pop().R);
                     if(!_loc8_)
                     {
                        §§pop().Set(param2);
                        loop1:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              return;
                           }
                           addr60:
                           §§push(this.m_xf);
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§pop().position.SetV(param1);
                           if(!(_loc9_ || this))
                           {
                              continue;
                           }
                           if(!_loc9_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              if(true)
                              {
                                 §§push(this.m_xf);
                                 break loop1;
                              }
                              continue loop0;
                           }
                        }
                        addr64:
                        §§push(§§pop().R);
                     }
                     var _loc4_:b2Mat22 = §§pop();
                     var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                     if(!_loc8_)
                     {
                        §§push(this.m_sweep);
                        if(!_loc8_)
                        {
                           §§push(§§pop().c);
                           loop2:
                           while(true)
                           {
                              §§push(_loc4_.col1);
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc5_.x);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop6:
                                       while(true)
                                       {
                                          §§push(_loc4_.col2);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc5_.y);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
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
                                                                  if(_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  loop15:
                                                                  while(!_loc8_)
                                                                  {
                                                                     §§push(_loc5_.x);
                                                                     loop16:
                                                                     while(_loc9_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.col2);
                                                                              if(!(_loc9_ || _loc3_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(_loc5_.y);
                                                                                 if(_loc8_ && _loc3_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.m_sweep);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().c);
                                                                                          continue loop2;
                                                                                          loop31:
                                                                                          while(_loc9_ || param1)
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             if(!(_loc9_ || _loc3_))
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§push(this.m_sweep);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(§§pop().c);
                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr185:
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            if(!(_loc9_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            §§push(this.m_xf);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop().position);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     if(_loc8_ && this)
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     §§goto(addr185);
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().position);
                                                                                                               }
                                                                                                               addr215:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr213:
                                                                                                         }
                                                                                                         §§goto(addr215);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            §§pop().x = §§pop();
                                                                                                            if(_loc8_ && _loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                         }
                                                                                                         addr225:
                                                                                                      }
                                                                                                      var _loc6_:§0!K§ = this.m_world.§1Y§.§"!q§;
                                                                                                      _loc3_ = this.§^F§;
                                                                                                   }
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               this.m_world.§1Y§.§>!=§();
                                                                                                               break;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         _loc3_.§9x§(_loc6_,this.m_xf,this.m_xf);
                                                                                                         if(_loc8_ && param1)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         _loc3_ = _loc3_.§%"@§;
                                                                                                      }
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                      return;
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   loop32:
                                                                                                   for(; !(_loc8_ && param2); if(!(_loc9_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   },if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   },if(false)
                                                                                                   {
                                                                                                      §§goto(addr102);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr301);
                                                                                                      §§push(this.m_sweep);
                                                                                                   })
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.m_sweep);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue loop31;
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         §§pop().c0.SetV(this.m_sweep.c);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            continue loop32;
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop().a0 = this.m_sweep.a = param2;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr212:
                                                                                                §§goto(addr213);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr211:
                                                                                             }
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop10;
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
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr301);
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr64);
               }
            }
            §§goto(addr60);
         }
         §§goto(addr40);
      }
      
      public function §1o§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§'%§(param1.position,param1.GetAngle());
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
         if(!_loc3_)
         {
            this.§'%§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §>"4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§'%§(this.GetPosition(),param1);
         }
      }
      
      public function §6!j§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §!",§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§<";§ == b2_staticBody)
            {
               if(_loc3_)
               {
                  §§goto(addr53);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr54:
               }
            }
            while(true)
            {
               this.§="8§.SetV(param1);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr54);
            }
            return;
         }
         addr53:
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§="8§;
      }
      
      public function §=!Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§<";§ == b2_staticBody)
            {
               if(!_loc3_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr33);
               }
            }
            addr33:
            §§goto(addr44);
         }
         addr44:
         while(true)
         {
            this.m_angularVelocity = param1;
            if(_loc2_ || _loc2_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §0!I§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §!"0§() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc3_)
         {
            _loc1_.type = this.§"r§();
            while(true)
            {
               _loc1_.§'"@§ = (this.§`">§ & b2internal::9!t) == b2internal::9!t;
               loop1:
               while(_loc3_)
               {
                  _loc1_.angle = this.GetAngle();
                  while(true)
                  {
                     _loc1_.§'!k§ = this.§1f§;
                     loop3:
                     while(true)
                     {
                        _loc1_.§!!a§ = this.m_angularVelocity;
                        while(true)
                        {
                           _loc1_.§1?§ = (this.§`">§ & b2internal::2"A) == b2internal::2"A;
                           continue loop3;
                           addr43:
                           if(_loc3_ || _loc1_)
                           {
                              if(!_loc2_)
                              {
                                 return _loc1_;
                                 addr52:
                              }
                              continue loop1;
                           }
                        }
                     }
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     _loc1_.position = this.GetPosition();
                     §§goto(addr58);
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §`!&§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§<";§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(!(_loc3_ && this))
                     {
                        this.SetAwake(true);
                        while(!(_loc3_ && _loc3_))
                        {
                        }
                        continue loop0;
                     }
                     addr194:
                     return;
                     addr172:
                  }
                  while(true)
                  {
                     §§push(this.§&e§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§&e§);
                        addr149:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr150:
                           while(true)
                           {
                              §§push(param1.x);
                              addr152:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr153:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr154:
                                    while(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr182);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr194);
         }
         §§goto(addr166);
      }
      
      public function §-!;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§<";§ == b2_dynamicBody)
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
                     while(true)
                     {
                        addr29:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§;!+§);
                           if(_loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§;!+§ = §§pop();
                           if(_loc3_ || this)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr29);
               }
               while(!_loc3_);
               
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
         }
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§<";§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        this.SetAwake(true);
                     }
                     while(_loc4_ || _loc3_)
                     {
                        while(true)
                        {
                        }
                        if(!(_loc3_ && param2))
                        {
                           return;
                        }
                     }
                     §§goto(addr251);
                  }
                  while(true)
                  {
                     §§push(this.§="8§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§="8§);
                        addr205:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr206:
                           while(true)
                           {
                              §§push(this.§["A§);
                              addr208:
                              while(true)
                              {
                                 §§push(param1.x);
                                 addr210:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr211:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr212:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
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
            addr251:
            return;
         }
         §§goto(addr246);
      }
      
      public function §]!'§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.§0!I§());
         if(!(_loc16_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§6!j§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§,P§(this.§!"0§());
         var _loc8_:b2Fixture = _loc5_.§^F§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc17_)
               {
                  break;
               }
               addr201:
               var _loc9_:b2Vec2 = _loc5_.§6!j§();
               var _loc10_:b2Vec2 = _loc6_.§6!j§();
               var _loc11_:b2Vec2 = b2Math.§=!i§(_loc2_,b2Math.§#!'§(_loc3_,b2Math.§0!1§(_loc9_,_loc4_)));
               var _loc12_:b2Vec2 = b2Math.§=!i§(_loc2_,b2Math.§#!'§(_loc3_,b2Math.§0!1§(_loc10_,_loc4_)));
               if(_loc17_)
               {
                  _loc5_.SetLinearVelocity(_loc11_);
                  while(true)
                  {
                     _loc6_.SetLinearVelocity(_loc12_);
                     addr298:
                     addr260:
                     while(true)
                     {
                        _loc5_.§=!Q§(_loc3_);
                     }
                     if(!(_loc17_ || this))
                     {
                        continue;
                     }
                     return _loc6_;
                     addr277:
                  }
               }
               loop3:
               while(true)
               {
                  _loc6_.§=!Q§(_loc3_);
                  loop4:
                  while(true)
                  {
                     _loc5_.§^!X§();
                     while(_loc17_)
                     {
                        _loc6_.§^!X§();
                        if(!(_loc16_ && _loc3_))
                        {
                           if(_loc17_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                        }
                     }
                     §§goto(addr298);
                  }
               }
               §§goto(addr277);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§%"@§;
                  continue;
               }
               if(!(_loc17_ || _loc2_))
               {
                  break;
               }
               _loc13_ = _loc8_.§%"@§;
               if(_loc17_ || this)
               {
                  if(_loc7_)
                  {
                     if(_loc17_)
                     {
                        _loc7_.§%"@§ = _loc13_;
                        if(!(_loc16_ && _loc3_))
                        {
                           addr102:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§<!b§);
                           if(_loc17_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(!(_loc16_ && _loc2_))
                           {
                              _loc14_.§<!b§ = _loc15_;
                           }
                           if(_loc17_ || this)
                           {
                              addr129:
                              _loc8_.§%"@§ = _loc6_.§^F§;
                              if(_loc17_)
                              {
                                 _loc6_.§^F§ = _loc8_;
                                 if(_loc17_)
                                 {
                                    addr150:
                                    §§push((_loc14_ = _loc6_).§<!b§);
                                    if(_loc17_ || param1)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc15_ = §§pop();
                                    if(_loc17_)
                                    {
                                       _loc14_.§<!b§ = _loc15_;
                                    }
                                    if(_loc17_)
                                    {
                                       addr172:
                                       _loc8_.m_body = _loc6_;
                                    }
                                    _loc8_ = _loc13_;
                                    continue;
                                 }
                              }
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr150);
                  }
                  else
                  {
                     _loc5_.§^F§ = _loc13_;
                     if(_loc17_)
                     {
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr129);
               }
               §§goto(addr150);
            }
         }
         _loc5_.§5"4§();
         if(!(_loc16_ && this))
         {
            _loc6_.§5"4§();
         }
         §§goto(addr201);
      }
      
      public function § ";§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§^F§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§%"@§;
            if(_loc15_ || _loc3_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§<!b§);
               if(_loc15_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!_loc14_)
               {
                  _loc12_.§<!b§ = _loc13_;
               }
               if(_loc15_ || this)
               {
                  _loc2_.§%"@§ = this.§^F§;
                  if(!(_loc14_ && _loc2_))
                  {
                     this.§^F§ = _loc2_;
                     if(!(_loc15_ || param1))
                     {
                        continue;
                     }
                     §§push((_loc12_ = this).§<!b§);
                     if(_loc15_ || _loc2_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc13_ = §§pop();
                     if(_loc15_)
                     {
                        _loc12_.§<!b§ = _loc13_;
                     }
                     if(!_loc15_)
                     {
                        continue;
                     }
                  }
               }
               _loc2_.m_body = _loc4_;
            }
         }
         if(!(_loc14_ && this))
         {
            _loc3_.§<!b§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§6!j§();
         var _loc6_:b2Vec2 = _loc4_.§6!j§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.§0!I§());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§0!I§());
         if(_loc15_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!_loc14_)
         {
            _loc3_.§5"4§();
            do
            {
               this.§^!X§();
            }
            while(!(_loc15_ || param1));
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§+J§;
      }
      
      public function §@!Q§() : Number
      {
         return this.§;B§;
      }
      
      public function §3Q§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            param1.§7!^§ = this.§+J§;
            while(true)
            {
               param1.§^s§ = this.§;B§;
               while(!(_loc3_ && _loc2_))
               {
                  param1.center.SetV(this.m_sweep.localCenter);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr57:
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §]c§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§8Z§());
            if(_loc4_ || param1)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§8Z§());
               while(true)
               {
                  §§push(true);
                  while(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        §§push(this.§<";§);
                        loop4:
                        while(§§pop() == b2_dynamicBody)
                        {
                           loop5:
                           while(true)
                           {
                              this.§["A§ = 0;
                              addr239:
                              loop6:
                              while(true)
                              {
                                 this.§;B§ = 0;
                                 while(true)
                                 {
                                    this.§"g§ = 0;
                                    while(true)
                                    {
                                       this.§+J§ = param1.§7!^§;
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop6;
                                          }
                                          if(!(_loc4_ || this))
                                          {
                                             break;
                                          }
                                          §§push(this.§+J§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr193:
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      this.§+J§ = 1;
                                                   }
                                                   loop12:
                                                   while(true)
                                                   {
                                                      addr166:
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop12;
                                                         addr165:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop16;
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                addr181:
                                                while(true)
                                                {
                                                   this.§["A§ = 1 / this.§+J§;
                                                   continue loop10;
                                                }
                                             }
                                          }
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
                  continue loop0;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr49);
               }
            }
         }
         §§goto(addr239);
      }
      
      public function §5"4§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(!_loc5_)
         {
            this.§+J§ = 0;
            while(true)
            {
               this.§["A§ = 0;
               addr102:
               if(_loc5_ && _loc1_)
               {
                  continue;
               }
               this.§"g§ = 0;
               loop3:
               for(; _loc6_ || _loc2_; if(_loc5_ && this)
               {
                  continue;
               },if(false)
               {
                  §§goto(addr64);
               },§§goto(addr119))
               {
                  this.m_sweep.localCenter.§;v§();
                  loop4:
                  while(true)
                  {
                     addr64:
                     while(true)
                     {
                        §§push(this.§<";§);
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
                                       addr72:
                                       while(true)
                                       {
                                          §§push(this.§<";§);
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(b2_kinematicBody);
                                          if(!_loc6_)
                                          {
                                             continue loop7;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc5_ && _loc1_)
                                          {
                                             continue loop9;
                                          }
                                          if(_loc5_)
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
                                       continue loop3;
                                    }
                                    if(_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          return;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr72);
                                 }
                                 addr119:
                                 var _loc1_:b2Vec2 = b2Vec2.§>X§(0,0);
                                 var _loc2_:b2Fixture = this.§^F§;
                                 addr255:
                                 if(_loc2_)
                                 {
                                    §§push(_loc2_.§]!l§);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(0);
                                       if(_loc6_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                addr251:
                                                _loc2_ = _loc2_.§%"@§;
                                                §§goto(addr255);
                                             }
                                             addr446:
                                             addr461:
                                             §§push(this.§;B§ > 0);
                                             if(!_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr455:
                                                   §§pop();
                                                   §§push((this.§`">§ & b2internal::2"A) == 0);
                                                   if(_loc5_)
                                                   {
                                                   }
                                                   §§goto(addr455);
                                                   addr456:
                                                }
                                                if(§§pop())
                                                {
                                                   addr385:
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(this);
                                                      §§push(this.§;B§);
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§push(this.§+J§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(_loc1_.x);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§push(_loc1_.x);
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc6_ || _loc1_)
                                                                  {
                                                                     addr440:
                                                                     addr441:
                                                                     addr442:
                                                                     §§push(_loc1_.y);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr436:
                                                                        §§push(§§pop() * _loc1_.y);
                                                                     }
                                                                     §§pop().§;B§ = §§pop() - §§pop() * (§§pop() + §§pop());
                                                                     addr443:
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§;B§);
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * this.§>j§);
                                                                        }
                                                                        §§pop().§;B§ = §§pop();
                                                                        addr362:
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 b2Settings.b2Assert(this.§;B§ > 0);
                                                                                 addr344:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§goto(addr456);
                                                                                 }
                                                                                 this.§"g§ = 1 / this.§;B§;
                                                                                 addr501:
                                                                                 var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr682:
                                                                                    this.m_sweep.localCenter.SetV(_loc1_);
                                                                                 }
                                                                                 addr670:
                                                                                 this.m_sweep.c0.SetV(b2Math.§2C§(this.m_xf,this.m_sweep.localCenter));
                                                                                 addr685:
                                                                                 addr679:
                                                                                 §§push(this.m_sweep);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc6_ || _loc1_)
                                                                                    {
                                                                                       §§pop().c.SetV(this.m_sweep.c0);
                                                                                       addr664:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr609:
                                                                                          addr628:
                                                                                          addr611:
                                                                                          addr626:
                                                                                          addr614:
                                                                                          addr613:
                                                                                          addr627:
                                                                                          addr608:
                                                                                          addr606:
                                                                                          §§push(this.§="8§);
                                                                                          §§push(this.§="8§.x);
                                                                                          §§push(this.m_angularVelocity);
                                                                                          §§push(this.m_sweep.c.y);
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             addr625:
                                                                                             §§push(-(§§pop() - _loc3_.y));
                                                                                          }
                                                                                          §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                          addr629:
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§push(this.§="8§);
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                §§push(this.§="8§);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!(_loc5_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(this.m_angularVelocity);
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(this.m_sweep);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop().c);
                                                                                                               if(!(_loc5_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.x);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr569:
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr572:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc5_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr580:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    addr583:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          if(!(_loc5_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr685);
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§goto(addr629);
                                                                                                                                       }
                                                                                                                                       §§goto(addr609);
                                                                                                                                    }
                                                                                                                                    §§goto(addr628);
                                                                                                                                 }
                                                                                                                                 §§goto(addr611);
                                                                                                                              }
                                                                                                                              §§goto(addr626);
                                                                                                                           }
                                                                                                                           §§goto(addr625);
                                                                                                                        }
                                                                                                                        §§goto(addr572);
                                                                                                                     }
                                                                                                                     §§goto(addr625);
                                                                                                                  }
                                                                                                                  §§goto(addr569);
                                                                                                               }
                                                                                                               §§goto(addr614);
                                                                                                            }
                                                                                                            §§goto(addr613);
                                                                                                         }
                                                                                                         §§goto(addr627);
                                                                                                      }
                                                                                                      §§goto(addr580);
                                                                                                   }
                                                                                                   §§goto(addr583);
                                                                                                }
                                                                                                §§goto(addr608);
                                                                                             }
                                                                                             §§goto(addr606);
                                                                                          }
                                                                                          §§goto(addr664);
                                                                                       }
                                                                                       §§goto(addr679);
                                                                                    }
                                                                                    §§goto(addr682);
                                                                                 }
                                                                                 §§goto(addr670);
                                                                                 addr298:
                                                                                 addr326:
                                                                              }
                                                                              addr478:
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr446);
                                                                              }
                                                                              §§push(_loc1_);
                                                                              §§push(_loc1_.y);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop() * this.§["A§);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              §§goto(addr478);
                                                                              addr500:
                                                                           }
                                                                           §§goto(addr385);
                                                                        }
                                                                        §§goto(addr443);
                                                                     }
                                                                     this.§["A§ = 1;
                                                                     §§goto(addr461);
                                                                     addr467:
                                                                  }
                                                                  §§goto(addr440);
                                                               }
                                                               §§goto(addr436);
                                                            }
                                                            §§goto(addr440);
                                                         }
                                                         §§goto(addr441);
                                                      }
                                                      §§goto(addr442);
                                                   }
                                                   §§goto(addr446);
                                                }
                                                this.§;B§ = 0;
                                                addr304:
                                                if(_loc6_ || this)
                                                {
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      this.§"g§ = 0;
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc5_ && _loc1_)
                                                         {
                                                            §§goto(addr362);
                                                         }
                                                         addr296:
                                                         if(false)
                                                         {
                                                            §§goto(addr298);
                                                         }
                                                         §§goto(addr501);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   §§goto(addr344);
                                                }
                                                §§goto(addr326);
                                             }
                                             §§goto(addr455);
                                          }
                                          _loc4_ = _loc2_.§3Q§();
                                          if(!_loc5_)
                                          {
                                             §§push(this);
                                             §§push(this.§+J§);
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(§§pop() + _loc4_.§7!^§);
                                             }
                                             §§pop().§+J§ = §§pop();
                                          }
                                          §§push(_loc1_);
                                          §§push(_loc1_.x);
                                          if(_loc6_)
                                          {
                                             §§push(_loc4_.center.x);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(§§pop() * _loc4_.§7!^§);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().x = §§pop();
                                          addr233:
                                          if(!_loc5_)
                                          {
                                             addr185:
                                             §§push(_loc1_);
                                             §§push(_loc1_.y);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(_loc4_.center.y);
                                                if(!(_loc5_ && _loc1_))
                                                {
                                                   §§push(§§pop() * _loc4_.§7!^§);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().y = §§pop();
                                             §§push(this);
                                             §§push(this.§;B§);
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§push(§§pop() + _loc4_.§^s§);
                                             }
                                             §§pop().§;B§ = §§pop();
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr233);
                                             }
                                             addr211:
                                             §§goto(addr211);
                                          }
                                          addr250:
                                          §§goto(addr250);
                                       }
                                       addr271:
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             this.§["A§ = 1 / this.§+J§;
                                             if(_loc6_)
                                             {
                                                §§push(_loc1_);
                                                §§push(_loc1_.x);
                                                if(_loc6_ || _loc1_)
                                                {
                                                   §§push(§§pop() * this.§["A§);
                                                }
                                                §§pop().x = §§pop();
                                                §§goto(addr500);
                                             }
                                             §§goto(addr296);
                                          }
                                          §§goto(addr446);
                                       }
                                       else
                                       {
                                          this.§+J§ = 1;
                                       }
                                       §§goto(addr467);
                                    }
                                    §§goto(addr446);
                                 }
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(this.§+J§);
                                    if(!_loc5_)
                                    {
                                       §§push(0);
                                       if(_loc6_)
                                       {
                                          §§goto(addr271);
                                       }
                                    }
                                    §§goto(addr446);
                                 }
                                 §§goto(addr440);
                              }
                           }
                        }
                     }
                  }
               }
               while(!(_loc5_ && _loc3_))
               {
                  §§goto(addr102);
                  §§goto(addr83);
               }
               addr83:
               while(true)
               {
                  this.§;B§ = 0;
                  §§goto(addr95);
               }
               addr95:
               addr114:
            }
         }
         §§goto(addr114);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc5_ || param1)
         {
            §§push(param1.x);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(_loc2_.col2.x);
                  if(_loc5_)
                  {
                     §§push(param1.y);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_ || this)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr95);
                  }
                  addr62:
                  §§goto(addr63);
               }
               addr63:
               §§push(§§pop() + §§pop());
               §§push(_loc2_.col1.y);
               if(_loc5_ || param1)
               {
                  addr83:
                  §§push(param1.x);
                  if(_loc5_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc5_)
                     {
                        §§push(_loc2_.col2.y);
                        if(!_loc4_)
                        {
                           addr95:
                           §§push(§§pop() * param1.y);
                        }
                        §§push(§§pop() + §§pop());
                     }
                  }
                  §§goto(addr95);
               }
               var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  §§push(_loc3_.x);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() + this.m_xf.position.x);
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.y);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + this.m_xf.position.y);
                     }
                     §§pop().y = §§pop();
                  }
                  while(!(_loc5_ || _loc3_));
                  
               }
               return _loc3_;
            }
            §§goto(addr83);
         }
         §§goto(addr62);
      }
      
      public function §9!]§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§?"1§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§@!O§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%o§(this.m_xf.R,param1);
      }
      
      public function §+!"§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§="8§.x);
         if(_loc2_ || _loc3_)
         {
            §§push(this.m_angularVelocity);
            if(!_loc3_)
            {
               §§push(param1.y);
               if(_loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           addr73:
                           §§push(§§pop() - §§pop());
                           §§push(this.§="8§.y);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr98);
                        }
                        §§push(this.m_angularVelocity);
                        if(_loc2_ || _loc2_)
                        {
                           addr97:
                           §§push(param1.x);
                           if(_loc2_)
                           {
                              addr91:
                              §§push(§§pop() - this.m_sweep.c.x);
                           }
                           addr98:
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                           §§push(§§pop() + §§pop() * §§pop());
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr91);
               }
               §§goto(addr97);
            }
            §§goto(addr98);
         }
         §§goto(addr73);
      }
      
      public function §1T§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!_loc4_)
         {
            §§push(param1.x);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || this)
               {
                  §§push(_loc2_.col2.x);
                  if(!(_loc4_ && this))
                  {
                     §§push(param1.y);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_ || _loc3_)
                        {
                           addr72:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(param1.x);
                              if(!_loc4_)
                              {
                                 addr119:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc4_ && this))
                                 {
                                    addr95:
                                    §§push(_loc2_.col2.y);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr105:
                                       §§push(§§pop() * param1.y);
                                    }
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(_loc5_ || _loc2_)
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
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(this.§="8§.x);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(this.m_angularVelocity);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc5_ || this)
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc5_ || this)
                                             {
                                                §§goto(addr169);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr191);
                                       }
                                       addr169:
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_)
                                       {
                                          addr172:
                                          §§push(§§pop() - §§pop());
                                          §§push(this.§="8§.y);
                                          if(_loc5_ || this)
                                          {
                                             §§push(this.m_angularVelocity);
                                             if(_loc5_)
                                             {
                                                addr187:
                                                §§push(_loc3_.x);
                                                if(!_loc4_)
                                                {
                                                   addr191:
                                                   §§push(§§pop() - this.m_sweep.c.x);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                       }
                                       return new §§pop().b2Vec2(§§pop(),§§pop());
                                    }
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr119);
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr119);
         }
         §§goto(addr72);
      }
      
      public function §+!i§() : Number
      {
         return this.§?Q§;
      }
      
      public function §7"D§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§?Q§ = param1;
         }
      }
      
      public function §%U§() : Number
      {
         return this.§1f§;
      }
      
      public function §]'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1f§ = param1;
         }
      }
      
      public function SetType(param1:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§<";§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr129:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr130:
                     return;
                  }
                  addr121:
                  while(true)
                  {
                     this.§<";§ = param1;
                     addr125:
                     while(true)
                     {
                        this.§5"4§();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §"r§() : uint
      {
         return this.§<";§;
      }
      
      public function §6"B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§`">§ &= ~b2internal::'!V;
               if(!_loc2_)
               {
                  addr56:
               }
               return;
            }
            if(!_loc3_)
            {
               addr50:
               this.§`">§ |= b2internal::'!V;
            }
            §§goto(addr56);
         }
         §§goto(addr50);
      }
      
      public function §^!O§() : Boolean
      {
         return (this.§`">§ & b2internal::'!V) == b2internal::'!V;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!param1)
            {
               this.§`">§ &= ~b2internal::9!t;
               while(!(_loc3_ && this))
               {
                  if(_loc3_ && _loc2_)
                  {
                     this.§`">§ |= b2internal::9!t;
                     break;
                  }
                  addr87:
                  this.SetAwake(true);
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  §§goto(addr24);
               }
               addr24:
               return;
            }
         }
         §§goto(addr87);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  this.§`">§ |= b2internal::+!#;
               }
            }
            else
            {
               this.§`">§ &= ~b2internal::+!#;
               loop0:
               while(true)
               {
                  if(_loc2_)
                  {
                     this.§4!@§ = 0;
                     while(true)
                     {
                        this.§="8§.§;v§();
                        continue loop0;
                        loop4:
                        while(!(_loc3_ && _loc3_))
                        {
                           this.§;!+§ = 0;
                           if(!_loc3_)
                           {
                              addr34:
                              if(!(_loc2_ || this))
                              {
                                 while(true)
                                 {
                                    this.§&e§.§;v§();
                                    continue loop4;
                                    §§goto(addr34);
                                 }
                                 addr82:
                              }
                              addr41:
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc2_ || param1)
                                 {
                                    addr24:
                                    return;
                                    addr65:
                                 }
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               §§goto(addr24);
               addr127:
            }
            this.§4!@§ = 0;
            §§goto(addr127);
         }
         §§goto(addr65);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§`">§ & b2internal::+!#) == b2internal::+!#;
      }
      
      public function §%z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!param1)
            {
               this.§`">§ &= ~b2internal::2"A;
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§5"4§();
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     if(_loc2_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        addr76:
                        while(true)
                        {
                           this.§`">§ |= b2internal::2"A;
                        }
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr76);
         }
         addr62:
      }
      
      public function §?O§() : Boolean
      {
         return (this.§`">§ & b2internal::2"A) == b2internal::2"A;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§0!K§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() == this.IsActive())
               {
                  if(_loc6_ || _loc2_)
                  {
                     return;
                  }
                  addr46:
                  §§push(param1);
               }
               §§goto(addr46);
            }
            if(§§pop())
            {
               if(_loc6_ || _loc3_)
               {
                  this.§`">§ |= b2internal::+!!;
               }
               _loc2_ = this.m_world.§1Y§.§"!q§;
               _loc3_ = this.§^F§;
               while(_loc3_)
               {
                  _loc3_.§'X§(_loc2_,this.m_xf);
                  if(_loc7_ && param1)
                  {
                     break;
                  }
                  _loc3_ = _loc3_.§%"@§;
               }
            }
            else
            {
               this.§`">§ &= ~b2internal::+!!;
               _loc2_ = this.m_world.§1Y§.§"!q§;
               _loc3_ = this.§^F§;
               if(!(_loc7_ && _loc3_))
               {
                  loop0:
                  while(_loc3_)
                  {
                     _loc3_.§,K§(_loc2_);
                     if(!(_loc6_ || param1))
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc3_ = _loc3_.§%"@§;
                        continue loop0;
                     }
                  }
                  _loc4_ = this.§>"#§;
                  if(!(_loc7_ && _loc3_))
                  {
                     while(_loc4_)
                     {
                        _loc5_ = _loc4_;
                        _loc4_ = _loc4_.§5"&§;
                        if(_loc6_)
                        {
                           this.m_world.§1Y§.§'S§(_loc5_.§0q§);
                        }
                     }
                     if(!_loc6_)
                     {
                     }
                     §§goto(addr189);
                  }
                  this.§>"#§ = null;
                  §§goto(addr189);
               }
               §§goto(addr138);
            }
            addr189:
            return;
         }
         §§goto(addr46);
      }
      
      public function IsActive() : Boolean
      {
         return (this.§`">§ & b2internal::+!!) == b2internal::+!!;
      }
      
      public function §"!i§() : Boolean
      {
         return (this.§`">§ & b2internal::9!t) == b2internal::9!t;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§^F§;
      }
      
      public function §1$§() : b2JointEdge
      {
         return this.§3n§;
      }
      
      public function §3!3§() : b2ControllerEdge
      {
         return this.§+q§;
      }
      
      public function §0!@§() : b2ContactEdge
      {
         return this.§>"#§;
      }
      
      public function §8!+§() : b2Body
      {
         return this.§%"@§;
      }
      
      public function GetUserData() : *
      {
         return this.§6r§;
      }
      
      public function §<L§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§6r§ = param1;
         }
      }
      
      public function §%!y§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §^!X§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §@";§;
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
            if(_loc7_ || _loc2_)
            {
               §§push(_loc1_.position);
               if(_loc7_ || _loc2_)
               {
                  §§push(this.m_sweep);
                  if(!_loc6_)
                  {
                     §§push(§§pop().c0);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(§§pop().x);
                        if(_loc7_)
                        {
                           §§push(_loc2_.col1);
                           if(!_loc6_)
                           {
                              §§push(§§pop().x);
                              if(_loc7_ || _loc1_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc7_ || _loc2_)
                                          {
                                             addr119:
                                             §§push(_loc3_.y);
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr147);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr165);
                        }
                        addr147:
                        §§pop().x = §§pop();
                        if(_loc7_ || _loc1_)
                        {
                           addr160:
                           §§push(_loc1_.position);
                           §§push(this.m_sweep.c0.y);
                           if(!_loc6_)
                           {
                              addr165:
                              §§push(_loc2_.col1.y);
                              if(_loc7_ || _loc3_)
                              {
                                 addr173:
                                 §§push(_loc3_.x);
                                 if(_loc7_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_ || _loc2_)
                                    {
                                       addr192:
                                       §§push(_loc2_.col2.y);
                                       if(_loc7_)
                                       {
                                          addr200:
                                          §§pop().y = §§pop() - (§§pop() + §§pop() * _loc3_.y);
                                          addr198:
                                       }
                                    }
                                 }
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr200);
                        }
                        var _loc5_:§0!K§ = this.m_world.§1Y§.§"!q§;
                        _loc4_ = this.§^F§;
                        while(_loc4_)
                        {
                           _loc4_.§9x§(_loc5_,_loc1_,this.m_xf);
                           if(_loc6_ && _loc2_)
                           {
                              break;
                           }
                           _loc4_ = _loc4_.§%"@§;
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr160);
         }
         §§goto(addr33);
      }
      
      b2internal function §,6§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.m_xf);
            if(!(_loc4_ && this))
            {
               §§push(§§pop().R);
               if(!_loc4_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr36:
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
                     addr195:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr197:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr198:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr199:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr201:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr202:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       addr204:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr205:
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             addr207:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr208:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr210:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr211:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr212:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr213:
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
               }
               §§goto(addr191);
            }
         }
         §§goto(addr36);
      }
      
      b2internal function §8N§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§<";§);
            if(_loc3_)
            {
               §§push(b2_dynamicBody);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc3_ || param1)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr50:
                              §§pop();
                              if(!_loc4_)
                              {
                                 addr56:
                                 §§push(param1.§<";§ == b2_dynamicBody);
                                 if(!_loc4_)
                                 {
                                    addr69:
                                    §§push(!§§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr77:
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             addr87:
                                             var _loc2_:b2JointEdge = this.§3n§;
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc2_.§ `§ == param1)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(_loc2_.§;!W§.§6!p§);
                                                         if(_loc3_ || param1)
                                                         {
                                                            if(§§pop() != false)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc3_ || this)
                                                            {
                                                               break;
                                                            }
                                                            addr146:
                                                            return true;
                                                            addr145:
                                                         }
                                                         §§goto(addr131);
                                                      }
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr145);
                                             }
                                             §§push(false);
                                             if(!_loc4_)
                                             {
                                                addr131:
                                                return §§pop();
                                             }
                                             §§goto(addr146);
                                          }
                                       }
                                       §§goto(addr87);
                                    }
                                 }
                                 §§goto(addr86);
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
                  §§goto(addr50);
               }
            }
            §§goto(addr56);
         }
         §§goto(addr87);
      }
      
      b2internal function §61§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.m_sweep);
            while(true)
            {
               §§push(param1);
               addr84:
               while(true)
               {
                  §§pop().§61§(§§pop());
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
               while(true)
               {
                  §§push(this.m_sweep);
                  if(_loc3_)
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
                     while(_loc2_)
                     {
                        this.§,6§();
                        if(_loc2_ || param1)
                        {
                           if(_loc2_)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     continue;
                  }
                  §§goto(addr83);
               }
               §§goto(addr84);
            }
         }
      }
   }
}
