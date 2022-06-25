package §>!L§
{
   import §!m§.§"%§;
   import §#!0§.b2Contact;
   import §#!0§.b2ContactEdge;
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §0!3§.b2EdgeShape;
   import §0!3§.b2MassData;
   import §0!3§.b2Shape;
   import §9!+§.b2ControllerEdge;
   import §=;§.b2JointEdge;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Sweep;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §#!f§:b2Transform;
      
      b2internal static var §%!d§:uint = 1;
      
      b2internal static var §&G§:uint = 2;
      
      b2internal static var §"!-§:uint = 4;
      
      b2internal static var §'!V§:uint = 8;
      
      b2internal static var §=A§:uint = 16;
      
      b2internal static var §=!M§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#!f§ = new b2Transform();
            loop0:
            while(true)
            {
               §%!d§ = 1;
               loop1:
               while(true)
               {
                  §&G§ = 2;
                  while(!_loc2_)
                  {
                     §"!-§ = 4;
                     while(!_loc2_)
                     {
                        continue loop1;
                        loop4:
                        while(!(_loc2_ && b2Body))
                        {
                           §=A§ = 16;
                           loop5:
                           while(true)
                           {
                              §=!M§ = 32;
                              loop6:
                              for(; !_loc2_; if(!(_loc2_ && _loc1_))
                              {
                                 continue loop5;
                              })
                              {
                                 while(true)
                                 {
                                    b2_staticBody = 0;
                                    loop8:
                                    while(true)
                                    {
                                       b2_kinematicBody = 1;
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop8;
                                          addr60:
                                          b2_dynamicBody = 2;
                                          if(!_loc2_)
                                          {
                                             return;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              continue loop4;
                              if(_loc2_ && b2Body)
                              {
                                 continue;
                              }
                              §§goto(addr60);
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr72);
      }
      
      b2internal var §]!D§:uint;
      
      b2internal var §2!5§:int;
      
      b2internal var §"+§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §4!h§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §4!&§:b2Vec2;
      
      b2internal var §`!c§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §<!9§:b2Body;
      
      b2internal var §,!Z§:b2Body;
      
      b2internal var § 7§:b2Fixture;
      
      b2internal var §4$§:int;
      
      b2internal var §@!U§:b2ControllerEdge;
      
      b2internal var §<!-§:int;
      
      b2internal var §8_§:b2JointEdge;
      
      b2internal var §7!V§:b2ContactEdge;
      
      b2internal var §@U§:Number;
      
      b2internal var §=n§:Number;
      
      b2internal var §!K§:Number;
      
      b2internal var §1&§:Number;
      
      b2internal var §?^§:Number;
      
      b2internal var §=-§:Number;
      
      b2internal var §[<§:Number;
      
      b2internal var §7!P§:Number;
      
      private var §=f§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.m_xf = new b2Transform();
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§4!h§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§4!&§ = new b2Vec2();
                     if(!(_loc7_ && _loc3_))
                     {
                        super();
                        loop3:
                        while(true)
                        {
                           this.§]!D§ = 0;
                           loop4:
                           while(true)
                           {
                              §§push(param1.§ 5§);
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§]!D§ |= §'!V§;
                                       addr248:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr241:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§[W§);
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§]!D§ |= §=A§;
                                             addr236:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr229:
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§^!%§);
                                          loop12:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(param1.§9!§);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(!(_loc6_ || this))
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_ || param2)
                                                      {
                                                         this.§]!D§ |= §&G§;
                                                      }
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            continue loop2;
                                                         }
                                                         §§goto(addr229);
                                                         addr123:
                                                         if(!(_loc6_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(this.m_xf);
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(§§pop().R);
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§pop().Set(param1.angle);
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.m_xf);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              §§pop().position.SetV(param1.position);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§goto(addr123);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          break loop16;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.m_world = param2;
                                                                                          continue loop20;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr158:
                                                                                 }
                                                                              }
                                                                              addr303:
                                                                              var _loc3_:b2Mat22 = §§pop().R;
                                                                              var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                                              addr302:
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr809:
                                                                                 this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
                                                                                 addr810:
                                                                                 addr799:
                                                                                 addr805:
                                                                                 addr796:
                                                                                 addr801:
                                                                                 addr802:
                                                                                 addr807:
                                                                                 addr804:
                                                                                 addr808:
                                                                                 addr798:
                                                                                 §§push(this.m_sweep);
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    addr744:
                                                                                    §§push(§§pop().c);
                                                                                    §§push(_loc3_.col1);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr749:
                                                                                       §§push(§§pop().y);
                                                                                       §§push(_loc4_.x);
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(_loc3_.col2);
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   addr783:
                                                                                                   §§push(§§pop().y);
                                                                                                   §§push(_loc4_.y);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr789:
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         addr792:
                                                                                                         §§push(this.m_sweep);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr721:
                                                                                                            §§push(§§pop().c);
                                                                                                            §§push(this.m_sweep.c.x);
                                                                                                            §§push(this.m_xf.position.x);
                                                                                                            if(_loc6_ || param1)
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr731:
                                                                                                                  §§pop().x = §§pop() + §§pop();
                                                                                                                  addr732:
                                                                                                                  §§push(this.m_sweep);
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop().c);
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              §§push(this.m_sweep);
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(!(_loc7_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(this.m_xf);
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().position);
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(_loc6_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc7_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr682:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc7_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        addr706:
                                                                                                                                                                        §§push(this.m_sweep);
                                                                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                                                           this.§8_§ = null;
                                                                                                                                                                           addr605:
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              this.§@!U§ = null;
                                                                                                                                                                              this.§7!V§ = null;
                                                                                                                                                                              this.§<!-§ = 0;
                                                                                                                                                                              this.§<!9§ = null;
                                                                                                                                                                              this.§,!Z§ = null;
                                                                                                                                                                              this.§4!h§.SetV(param1.§;@§);
                                                                                                                                                                              this.m_angularVelocity = param1.§2!?§;
                                                                                                                                                                              this.§=-§ = param1.§?![§;
                                                                                                                                                                              addr561:
                                                                                                                                                                              addr548:
                                                                                                                                                                              addr566:
                                                                                                                                                                              addr581:
                                                                                                                                                                              addr571:
                                                                                                                                                                              addr576:
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§[<§ = param1.§4n§;
                                                                                                                                                                                 addr525:
                                                                                                                                                                                 if(!(_loc7_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§4!&§.Set(0,0);
                                                                                                                                                                                       this.§`!c§ = 0;
                                                                                                                                                                                       addr509:
                                                                                                                                                                                       addr519:
                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§7!P§ = 0;
                                                                                                                                                                                          this.§2!5§ = param1.type;
                                                                                                                                                                                          addr504:
                                                                                                                                                                                          if(_loc6_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(this.§2!5§ == b2_dynamicBody)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr458:
                                                                                                                                                                                                if(_loc6_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§@U§ = 1;
                                                                                                                                                                                                   addr468:
                                                                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§=n§ = 1;
                                                                                                                                                                                                               addr442:
                                                                                                                                                                                                               if(!(_loc7_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr401:
                                                                                                                                                                                                                     this.§!K§ = 0;
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§1&§ = 0;
                                                                                                                                                                                                                           addr386:
                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.§?^§ = param1.§5!#§;
                                                                                                                                                                                                                                 addr374:
                                                                                                                                                                                                                                 if(!(_loc7_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§=f§ = param1.§+!f§;
                                                                                                                                                                                                                                    addr352:
                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc6_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc6_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§ 7§ = null;
                                                                                                                                                                                                                                             addr337:
                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc6_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.§4$§ = 0;
                                                                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc6_ || param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr414:
                                                                                                                                                                                                                                                            if(_loc6_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc6_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr401);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr509);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr468);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            this.§=n§ = 0;
                                                                                                                                                                                                                                                            §§goto(addr414);
                                                                                                                                                                                                                                                            addr437:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr374);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr337);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr458);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr352);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr605);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr401);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr386);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr519);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr561);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr442);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr548);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr504);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr566);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr561);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr810);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr605);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr581);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr504);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr571);
                                                                                                                                                                                             }
                                                                                                                                                                                             this.§@U§ = 0;
                                                                                                                                                                                             §§goto(addr437);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr525);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr792);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr706);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr576);
                                                                                                                                                                              }
                                                                                                                                                                              addr556:
                                                                                                                                                                              §§goto(addr556);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr732);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr799);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr809);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr749);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr789);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr805);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr783);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr721);
                                                                                                                                       }
                                                                                                                                       §§goto(addr731);
                                                                                                                                    }
                                                                                                                                    §§goto(addr682);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr721);
                                                                                                                           }
                                                                                                                           §§goto(addr796);
                                                                                                                        }
                                                                                                                        §§goto(addr744);
                                                                                                                     }
                                                                                                                     §§goto(addr721);
                                                                                                                  }
                                                                                                                  §§goto(addr792);
                                                                                                               }
                                                                                                               §§goto(addr801);
                                                                                                            }
                                                                                                            §§goto(addr789);
                                                                                                         }
                                                                                                         §§goto(addr809);
                                                                                                      }
                                                                                                      §§goto(addr802);
                                                                                                   }
                                                                                                   §§goto(addr807);
                                                                                                }
                                                                                                §§goto(addr804);
                                                                                             }
                                                                                             §§goto(addr789);
                                                                                          }
                                                                                          §§goto(addr808);
                                                                                       }
                                                                                       §§goto(addr789);
                                                                                    }
                                                                                    §§goto(addr798);
                                                                                 }
                                                                                 addr795:
                                                                                 §§goto(addr795);
                                                                              }
                                                                              §§goto(addr414);
                                                                              addr116:
                                                                           }
                                                                           §§goto(addr302);
                                                                        }
                                                                     }
                                                                     addr61:
                                                                     this.m_sweep.localCenter.§@!;§();
                                                                     addr58:
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(this.m_sweep);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§pop().§#K§ = 1;
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr58);
                                                                                       }
                                                                                       addr290:
                                                                                       this.m_sweep.a0 = this.m_sweep.a = param1.angle;
                                                                                       addr300:
                                                                                       §§goto(addr302);
                                                                                       §§push(this.m_xf);
                                                                                    }
                                                                                    §§goto(addr248);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§goto(addr241);
                                                                                 }
                                                                                 §§goto(addr248);
                                                                                 addr197:
                                                                              }
                                                                              §§goto(addr58);
                                                                           }
                                                                           §§goto(addr300);
                                                                        }
                                                                        §§goto(addr61);
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr116);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                         }
                                                         §§goto(addr303);
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   continue loop8;
                                                }
                                                addr161:
                                             }
                                             §§goto(addr197);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr290);
                  }
               }
            }
         }
         §§goto(addr248);
      }
      
      private function §0T§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.§6§().y,param2.§6§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§@Q§(_loc5_,param2.§6§());
         _loc6_ = b2Math.§2!C§(_loc6_,param2.§1!X§());
         _loc6_ = b2Math.§@Q§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§5v§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2 = b2Math.§5v§(param1.§6§(),param2.§6§());
         if(_loc10_)
         {
            §§push(_loc7_.Normalize());
            if(_loc10_ || param3)
            {
               §§pop();
               addr102:
               §§push(b2Math.§extends§(param1.§6§(),param2.§1!X§()));
            }
            §§push(§§pop() > 0);
            if(!_loc9_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc8_:* = §§pop();
            if(_loc10_ || param1)
            {
               param1.§?S§(param2,_loc6_,_loc7_,_loc8_);
            }
            do
            {
               param2.§95§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(_loc9_ && param2);
            
            return _loc4_;
         }
         §§goto(addr102);
      }
      
      public function §5g§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§"%§ = null;
         if(_loc6_ || _loc3_)
         {
            if(this.m_world.§;M§() == true)
            {
               if(!(_loc7_ && _loc2_))
               {
                  §§goto(addr38);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(!_loc7_)
            {
               _loc2_.§@!L§(this,this.m_xf,param1);
               if(!(_loc7_ && _loc2_))
               {
                  if(this.§]!D§ & §=!M§)
                  {
                     if(!(_loc7_ && this))
                     {
                        §§push(this.m_world);
                        if(!_loc7_)
                        {
                           _loc3_ = §§pop().§%]§.§%%§;
                           if(!(_loc7_ && this))
                           {
                              _loc2_.§>!I§(_loc3_,this.m_xf);
                              addr105:
                              _loc2_.§,!Z§ = this.§ 7§;
                              if(_loc6_)
                              {
                                 this.§ 7§ = _loc2_;
                                 if(!(_loc7_ && this))
                                 {
                                    addr121:
                                    var _loc4_:*;
                                    §§push((_loc4_ = this).§4$§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc6_ || this)
                                    {
                                       _loc4_.§4$§ = _loc5_;
                                    }
                                    if(!_loc7_)
                                    {
                                       _loc2_.m_body = this;
                                       addr196:
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc2_.§0A§ > 0)
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   this.§,! §();
                                                }
                                                addr187:
                                             }
                                             loop1:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   break loop1;
                                                }
                                             }
                                             addr190:
                                          }
                                          while(true)
                                          {
                                             §§push(this.m_world);
                                             §§goto(addr152);
                                          }
                                       }
                                       addr196:
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr105);
                        }
                        addr152:
                        while(true)
                        {
                           §§push(this.m_world.§]!D§);
                           if(_loc6_)
                           {
                              §§push(§§pop() | b2World.§=k§);
                           }
                           §§pop().§]!D§ = §§pop();
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§goto(addr190);
                           continue loop4;
                        }
                        return _loc2_;
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr105);
               }
               §§goto(addr192);
            }
            §§goto(addr196);
         }
         addr38:
         return null;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(!(_loc5_ && this))
         {
            _loc3_.shape = param1;
         }
         do
         {
            _loc3_.density = param2;
         }
         while(_loc5_);
         
         return this.§5g§(_loc3_);
      }
      
      public function §^`§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§"%§ = null;
         if(!(_loc13_ && this))
         {
            if(this.m_world.§;M§() == true)
            {
               if(_loc12_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§ 7§;
         var _loc3_:b2Fixture = null;
         §§push(false);
         if(!(_loc13_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc12_ || _loc2_)
               {
                  §§push(Boolean(_loc3_));
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc13_ && _loc3_))
                        {
                           _loc3_.§,!Z§ = param1.§,!Z§;
                           if(_loc12_ || this)
                           {
                              loop2:
                              while(true)
                              {
                                 addr66:
                                 while(true)
                                 {
                                    §§push(true);
                                    if(!(_loc13_ && _loc2_))
                                    {
                                       if(!_loc12_)
                                       {
                                          break;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                    if(!(_loc13_ && param1))
                                    {
                                       if(_loc12_ || this)
                                       {
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    break loop0;
                                 }
                                 continue loop1;
                              }
                           }
                           break loop0;
                        }
                        break loop0;
                     }
                     this.§ 7§ = param1.§,!Z§;
                     while(true)
                     {
                        §§goto(addr66);
                     }
                  }
               }
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§,!Z§;
         }
         var _loc5_:b2ContactEdge = this.§7!V§;
         if(_loc12_)
         {
            while(true)
            {
               §§push(Boolean(_loc5_));
               if(_loc12_ || this)
               {
                  if(!§§pop())
                  {
                     addr285:
                     if(_loc12_)
                     {
                        §§push(Boolean(this.§]!D§ & §=!M§));
                        break;
                     }
                     param1.m_body = null;
                     if(_loc12_ || _loc3_)
                     {
                        addr295:
                        param1.§,!Z§ = null;
                        if(!_loc13_)
                        {
                           addr300:
                           var _loc10_:*;
                           §§push((_loc10_ = this).§4$§);
                           if(_loc12_ || _loc2_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc11_:* = §§pop();
                           if(!_loc13_)
                           {
                              _loc10_.§4$§ = _loc11_;
                           }
                           if(!(_loc13_ && this))
                           {
                              addr337:
                              this.§,! §();
                           }
                           §§goto(addr340);
                        }
                     }
                     §§goto(addr337);
                  }
                  else
                  {
                     _loc6_ = _loc5_.§7![§;
                     _loc5_ = _loc5_.§<!D§;
                     _loc7_ = _loc6_.§'$§();
                     _loc8_ = _loc6_.§<!2§();
                     if(_loc12_ || param1)
                     {
                        §§push(param1 == _loc7_);
                        if(!_loc13_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc13_ && _loc2_))
                           {
                              §§push(§§pop());
                              if(!(_loc13_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 if(_loc12_ || this)
                                 {
                                    §§pop();
                                    if(!_loc13_)
                                    {
                                       addr222:
                                       §§push(param1 == _loc8_);
                                       if(_loc13_ && _loc3_)
                                       {
                                       }
                                       addr233:
                                       if(§§pop())
                                       {
                                          if(!(_loc13_ && _loc2_))
                                          {
                                             this.m_world.§%]§.§"G§(_loc6_);
                                          }
                                       }
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr233);
                           }
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr222);
                  }
               }
               break;
            }
            if(§§pop())
            {
               if(_loc12_)
               {
                  _loc9_ = this.m_world.§%]§.§%%§;
                  if(!_loc13_)
                  {
                     param1.§,!c§(_loc9_);
                  }
                  §§goto(addr280);
               }
               §§goto(addr295);
            }
            addr280:
            param1.§"G§();
            if(_loc12_)
            {
               §§goto(addr285);
            }
            addr340:
            return;
         }
         §§goto(addr300);
      }
      
      public function §=!_§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(_loc9_ || _loc3_)
         {
            if(this.m_world.§;M§() != true)
            {
               loop0:
               while(true)
               {
                  §§push(this.m_xf);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().R);
                     if(_loc9_ || this)
                     {
                        §§pop().Set(param2);
                        while(true)
                        {
                           §§push(this.m_xf);
                           if(_loc8_ && param2)
                           {
                              break;
                           }
                           if(!(_loc8_ && param2))
                           {
                              §§pop().position.SetV(param1);
                              if(_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    if(!_loc9_)
                                    {
                                       return;
                                    }
                                    addr77:
                                    if(true)
                                    {
                                       §§push(this.m_xf);
                                       break;
                                    }
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        §§push(§§pop().R);
                        break;
                        addr71:
                     }
                     break;
                  }
                  var _loc4_:b2Mat22 = §§pop();
                  var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                  if(_loc9_)
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_ || param1)
                                    {
                                       §§push(_loc4_.col2);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc9_)
                                          {
                                             §§push(_loc5_.y);
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr295:
                                                §§push(_loc5_.y);
                                                if(_loc8_ && param2)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() * §§pop());
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§pop().y = §§pop();
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(this.m_sweep);
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            §§push(§§pop().c);
                                                            while(true)
                                                            {
                                                               §§push(this.m_sweep);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().c);
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_xf);
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().position);
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr227:
                                                                              addr293:
                                                                              addr332:
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr229:
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_ && param2)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          if(!(_loc9_ || _loc3_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§pop().x = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             addr121:
                                                                                             §§goto(addr344);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_.x);
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(_loc9_ || _loc3_)
                                                                                             {
                                                                                                §§push(_loc4_.col2);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   break loop25;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             continue loop5;
                                                                                             addr281:
                                                                                          }
                                                                                          continue loop16;
                                                                                          §§goto(addr244);
                                                                                       }
                                                                                       addr271:
                                                                                       addr237:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              while(_loc9_)
                                                                              {
                                                                                 §§goto(addr295);
                                                                                 §§goto(addr229);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr333:
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.m_sweep);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             while(!_loc8_)
                                                                                             {
                                                                                                §§push(_loc4_.col1);
                                                                                                if(!(_loc9_ || _loc3_))
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§goto(addr271);
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc8_ && _loc3_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(this.m_sweep);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                §§push(§§pop().c);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(!(_loc8_ && param2))
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   if(_loc8_ && param1)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§push(this.m_xf);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   §§push(§§pop().position);
                                                                                                   if(!(_loc9_ || param1))
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      addr185:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(this.m_sweep);
                                                                                                               if(_loc9_ || _loc3_)
                                                                                                               {
                                                                                                                  §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ || param2))
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           addr344:
                                                                                                                           addr353:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.m_sweep);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           addr344:
                                                                                                                           §§pop().a0 = this.m_sweep.a = param2;
                                                                                                                           var _loc6_:§"%§ = this.m_world.§%]§.§%%§;
                                                                                                                           _loc3_ = this.§ 7§;
                                                                                                                           addr389:
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              _loc3_.§1!f§(_loc6_,this.m_xf,this.m_xf);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 _loc3_ = _loc3_.§,!Z§;
                                                                                                                                 §§goto(addr389);
                                                                                                                              }
                                                                                                                              §§goto(addr404);
                                                                                                                           }
                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              this.m_world.§%]§.§default§();
                                                                                                                           }
                                                                                                                           addr404:
                                                                                                                           return;
                                                                                                                           §§push(this.m_sweep);
                                                                                                                        }
                                                                                                                        §§goto(addr344);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr252);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break loop10;
                                                                                                               }
                                                                                                               §§goto(addr344);
                                                                                                            }
                                                                                                            break loop10;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr237);
                                                                                                      }
                                                                                                      §§goto(addr281);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr227);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr185);
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§goto(addr344);
                                                                                       }
                                                                                       addr341:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr353);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr219:
                                                         }
                                                         §§goto(addr344);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr332);
                                       }
                                    }
                                    §§goto(addr333);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr341);
               }
            }
            §§goto(addr77);
         }
         §§goto(addr71);
      }
      
      public function §1!e§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=!_§(param1.position,param1.GetAngle());
         }
      }
      
      public function §1?§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §"q§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!_§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §,!&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§=!_§(this.GetPosition(),param1);
         }
      }
      
      public function §"!'§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §&r§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§2!5§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.§4!h§.SetV(param1);
                  if(!_loc3_)
                  {
                     break;
                  }
                  addr55:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc2_ || this)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§4!h§;
      }
      
      public function §%#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§2!5§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.m_angularVelocity = param1;
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
                  addr58:
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
         §§goto(addr58);
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §#!2§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.type = this.§6!-§();
         }
         while(true)
         {
            _loc1_.§^!%§ = (this.§]!D§ & §"!-§) == §"!-§;
            loop1:
            while(true)
            {
               _loc1_.angle = this.GetAngle();
               loop2:
               while(true)
               {
                  _loc1_.§4n§ = this.§[<§;
                  while(true)
                  {
                     _loc1_.§2!?§ = this.m_angularVelocity;
                     continue loop2;
                     while(!(_loc3_ && _loc1_))
                     {
                        _loc1_.§;@§.SetV(this.GetLinearVelocity());
                        loop9:
                        while(!(_loc3_ && this))
                        {
                           addr89:
                           if(!(_loc3_ && _loc3_))
                           {
                              if(_loc2_)
                              {
                                 _loc1_.position = this.GetPosition();
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       continue loop1;
                                    }
                                    addr74:
                                    _loc1_.§+!f§ = this.GetUserData();
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       if(_loc2_)
                                       {
                                          addr47:
                                          if(!(_loc3_ && this))
                                          {
                                             return _loc1_;
                                          }
                                          continue loop2;
                                       }
                                       continue loop9;
                                    }
                                 }
                                 continue loop1;
                                 addr60:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc1_.§ 5§ = (this.§]!D§ & §'!V§) == §'!V§;
                                    addr145:
                                    while(true)
                                    {
                                       _loc1_.§9!§ = (this.§]!D§ & §&G§) == §&G§;
                                       §§goto(addr89);
                                    }
                                 }
                                 addr157:
                              }
                              while(true)
                              {
                                 _loc1_.§?![§ = this.§=-§;
                                 break loop9;
                                 §§goto(addr60);
                              }
                           }
                           §§goto(addr145);
                        }
                     }
                  }
               }
            }
            if(_loc3_)
            {
               continue;
            }
            _loc1_.§[W§ = (this.§]!D§ & §=A§) == §=A§;
            §§goto(addr157);
         }
      }
      
      public function §9h§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(this.§2!5§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(_loc3_)
                     {
                        this.SetAwake(true);
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr178:
                  }
                  while(true)
                  {
                     §§push(this.§4!&§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§4!&§);
                        addr167:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr168:
                           while(true)
                           {
                              §§push(param1.x);
                              addr170:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr171:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr184);
                  }
               }
            }
            §§goto(addr190);
         }
         §§goto(addr172);
      }
      
      public function §&H§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§2!5§ != b2_dynamicBody)
            {
               if(_loc2_)
               {
                  return;
               }
               while(true)
               {
                  addr54:
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr71:
               }
               addr97:
            }
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  if(!(_loc3_ && this))
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                     }
                     addr84:
                  }
                  loop2:
                  while(true)
                  {
                     addr28:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§`!c§);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§`!c§ = §§pop();
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     §§goto(addr54);
                  }
               }
               §§goto(addr28);
               §§goto(addr97);
            }
            §§goto(addr71);
         }
         §§goto(addr84);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(this.§2!5§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(_loc4_)
                     {
                        this.SetAwake(true);
                     }
                     while(true)
                     {
                     }
                     addr212:
                  }
                  while(true)
                  {
                     §§push(this.§4!h§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§4!h§);
                        addr178:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr179:
                           while(true)
                           {
                              §§push(this.§=n§);
                              addr191:
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
                                       addr195:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr196:
                                          while(!_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr212);
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
         §§goto(addr172);
      }
      
      public function §?!1§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(_loc17_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§"!'§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§1!-§(this.§#!2§());
         var _loc8_:b2Fixture = _loc5_.§ 7§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc8_));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc17_)
                  {
                     break;
                  }
                  §§goto(addr220);
               }
               else
               {
                  §§push(Boolean(param1(_loc8_)));
                  if(_loc16_)
                  {
                     continue;
                  }
                  if(!§§pop())
                  {
                     _loc7_ = _loc8_;
                     _loc8_ = _loc8_.§,!Z§;
                     continue loop0;
                  }
                  if(!(_loc17_ || param1))
                  {
                     break;
                  }
                  _loc13_ = _loc8_.§,!Z§;
                  if(_loc17_ || this)
                  {
                     if(_loc7_)
                     {
                        if(_loc17_)
                        {
                           _loc7_.§,!Z§ = _loc13_;
                           if(!(_loc16_ && this))
                           {
                              addr100:
                           }
                           addr133:
                           _loc8_.§,!Z§ = _loc6_.§ 7§;
                           if(!(_loc16_ && this))
                           {
                              _loc6_.§ 7§ = _loc8_;
                              if(!(_loc16_ && this))
                              {
                                 var _loc14_:*;
                                 §§push((_loc14_ = _loc6_).§4$§);
                                 if(!(_loc16_ && _loc3_))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc15_:* = §§pop();
                                 if(_loc17_ || this)
                                 {
                                    _loc14_.§4$§ = _loc15_;
                                 }
                                 if(_loc17_ || _loc2_)
                                 {
                                    addr196:
                                    _loc8_.m_body = _loc6_;
                                 }
                              }
                              _loc8_ = _loc13_;
                              continue loop0;
                           }
                           §§goto(addr196);
                        }
                        addr106:
                        §§push((_loc14_ = _loc5_).§4$§);
                        if(_loc17_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc15_ = §§pop();
                        if(!(_loc16_ && _loc3_))
                        {
                           _loc14_.§4$§ = _loc15_;
                        }
                        if(_loc17_ || param1)
                        {
                           §§goto(addr133);
                        }
                        §§goto(addr196);
                     }
                     else
                     {
                        _loc5_.§ 7§ = _loc13_;
                        if(_loc17_)
                        {
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr100);
               }
            }
            _loc5_.§,! §();
            if(_loc17_)
            {
               §§goto(addr220);
            }
            addr220:
            _loc6_.§,! §();
            var _loc9_:b2Vec2 = _loc5_.§"!'§();
            var _loc10_:b2Vec2 = _loc6_.§"!'§();
            var _loc11_:b2Vec2 = b2Math.§5v§(_loc2_,b2Math.§2!Q§(_loc3_,b2Math.§2!C§(_loc9_,_loc4_)));
            var _loc12_:b2Vec2 = b2Math.§5v§(_loc2_,b2Math.§2!Q§(_loc3_,b2Math.§2!C§(_loc10_,_loc4_)));
            if(_loc17_)
            {
               _loc5_.SetLinearVelocity(_loc11_);
               while(true)
               {
                  _loc6_.SetLinearVelocity(_loc12_);
                  while(_loc17_ || this)
                  {
                     _loc5_.§%#§(_loc3_);
                     while(true)
                     {
                        _loc6_.§%#§(_loc3_);
                        §§goto(addr302);
                     }
                  }
               }
            }
            addr302:
            loop5:
            while(true)
            {
               _loc5_.§]!-§();
               while(!_loc16_)
               {
                  _loc6_.§]!-§();
                  if(!_loc16_)
                  {
                     if(!_loc16_)
                     {
                        if(_loc17_)
                        {
                           break loop5;
                        }
                        continue loop3;
                     }
                     continue loop4;
                  }
               }
            }
            return _loc6_;
         }
      }
      
      public function §+!k§(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§ 7§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§,!Z§;
            if(_loc14_ || _loc2_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§4$§);
               if(_loc14_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(_loc14_ || _loc3_)
               {
                  _loc12_.§4$§ = _loc13_;
               }
               if(!(_loc15_ && this))
               {
                  _loc2_.§,!Z§ = this.§ 7§;
                  if(!(_loc15_ && _loc3_))
                  {
                     this.§ 7§ = _loc2_;
                     if(_loc14_)
                     {
                        addr103:
                        §§push((_loc12_ = this).§4$§);
                        if(!(_loc15_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc13_ = §§pop();
                        if(_loc14_)
                        {
                           _loc12_.§4$§ = _loc13_;
                        }
                        if(!_loc14_)
                        {
                           continue;
                        }
                     }
                  }
                  §§goto(addr103);
               }
               _loc2_.m_body = _loc4_;
               continue;
            }
            §§goto(addr103);
         }
         if(!_loc15_)
         {
            _loc3_.§4$§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§"!'§();
         var _loc6_:b2Vec2 = _loc4_.§"!'§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!(_loc15_ && _loc2_))
         {
            _loc3_.§,! §();
         }
         do
         {
            this.§]!-§();
         }
         while(_loc15_);
         
      }
      
      public function GetMass() : Number
      {
         return this.§@U§;
      }
      
      public function §7!&§() : Number
      {
         return this.§!K§;
      }
      
      public function §=Q§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            param1.§=`§ = this.§@U§;
         }
         do
         {
            param1.§#P§ = this.§!K§;
            do
            {
               param1.§4=§.SetV(this.m_sweep.localCenter);
            }
            while(!(_loc3_ || _loc2_));
            
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §01§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§;M§());
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§;M§());
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
                           §§push(this.§2!5§);
                           while(true)
                           {
                              if(§§pop() == b2_dynamicBody)
                              {
                                 while(true)
                                 {
                                    this.§=n§ = 0;
                                    loop6:
                                    while(true)
                                    {
                                       this.§!K§ = 0;
                                       while(!_loc4_)
                                       {
                                          this.§1&§ = 0;
                                          loop8:
                                          while(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§@U§ = param1.§=`§;
                                                while(true)
                                                {
                                                   §§push(this.§@U§);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr215:
                                                      while(true)
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               this.§@U§ = 1;
                                                               addr219:
                                                               while(!_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                            addr216:
                                                         }
                                                         while(true)
                                                         {
                                                            this.§=n§ = 1 / this.§@U§;
                                                            addr208:
                                                            while(_loc3_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr275);
                  }
                  if(_loc4_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr66);
                  §§push(Boolean(§§pop()));
               }
            }
         }
         §§goto(addr200);
      }
      
      public function §,! §() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(!_loc5_)
         {
            this.§@U§ = 0;
            loop0:
            while(true)
            {
               this.§=n§ = 0;
               loop1:
               while(true)
               {
                  this.§!K§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§1&§ = 0;
                     addr71:
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     if(false)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(this.§2!5§);
                           addr83:
                           while(true)
                           {
                              §§push(b2_staticBody);
                              addr85:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 addr86:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ || _loc1_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr43:
                                             if(_loc5_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc6_ || _loc1_))
                                             {
                                                continue loop9;
                                             }
                                             while(§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc5_ && _loc1_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop2;
                                                      addr98:
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      return;
                                                   }
                                                   addr121:
                                                   while(true)
                                                   {
                                                      this.m_sweep.localCenter.§@!;§();
                                                   }
                                                   while(_loc6_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr71);
                                             }
                                             var _loc1_:b2Vec2 = b2Vec2.§]u§(0,0);
                                             var _loc2_:b2Fixture = this.§ 7§;
                                             addr288:
                                             §§push(Boolean(_loc2_));
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                if(§§pop())
                                                {
                                                   §§push(_loc2_.§0A§);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(0);
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc6_ || _loc1_)
                                                            {
                                                               addr284:
                                                               _loc2_ = _loc2_.§,!Z§;
                                                               §§goto(addr288);
                                                            }
                                                            addr300:
                                                            §§push(this.§@U§);
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               addr309:
                                                               §§push(0);
                                                               if(!_loc5_)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        this.§=n§ = 1 / this.§@U§;
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           §§push(_loc1_.x);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(§§pop() * this.§=n§);
                                                                           }
                                                                           §§pop().x = §§pop();
                                                                           §§push(_loc1_);
                                                                           §§push(_loc1_.y);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop() * this.§=n§);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           addr496:
                                                                           addr543:
                                                                           addr553:
                                                                           §§push(Boolean(this.§!K§ > 0));
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 addr509:
                                                                                 §§pop();
                                                                                 addr510:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       §§push((this.§]!D§ & §=A§) == 0);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          §§goto(addr496);
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr430:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr432:
                                                                                             if(_loc6_ || _loc2_)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§!K§);
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   §§push(this.§@U§);
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(_loc1_.x);
                                                                                                      if(_loc6_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(_loc1_.x);
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            addr488:
                                                                                                            addr489:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr479:
                                                                                                               §§push(_loc1_.y);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr483:
                                                                                                                  §§push(§§pop() * _loc1_.y);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§pop().§!K§ = §§pop() - §§pop() * §§pop();
                                                                                                            §§push(this);
                                                                                                            §§push(this.§!K§);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() * this.§?^§);
                                                                                                            }
                                                                                                            §§pop().§!K§ = §§pop();
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               b2Settings.b2Assert(this.§!K§ > 0);
                                                                                                               this.§1&§ = 1 / this.§!K§;
                                                                                                               addr379:
                                                                                                               if(!(_loc6_ || _loc1_))
                                                                                                               {
                                                                                                                  §§goto(addr510);
                                                                                                               }
                                                                                                               addr554:
                                                                                                               var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                                               if(!(_loc5_ && _loc1_))
                                                                                                               {
                                                                                                                  addr748:
                                                                                                                  this.m_sweep.localCenter.SetV(_loc1_);
                                                                                                                  this.m_sweep.c0.SetV(b2Math.§&!M§(this.m_xf,this.m_sweep.localCenter));
                                                                                                                  addr752:
                                                                                                               }
                                                                                                               addr745:
                                                                                                               §§push(this.m_sweep);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§pop().c.SetV(this.m_sweep.c0);
                                                                                                                     addr691:
                                                                                                                     this.§4!h§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
                                                                                                                     addr730:
                                                                                                                     addr685:
                                                                                                                     addr689:
                                                                                                                     addr688:
                                                                                                                     addr687:
                                                                                                                     addr684:
                                                                                                                     addr683:
                                                                                                                     addr681:
                                                                                                                     addr690:
                                                                                                                     addr679:
                                                                                                                     addr678:
                                                                                                                     addr676:
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(this.§4!h§);
                                                                                                                           if(!(_loc5_ && this))
                                                                                                                           {
                                                                                                                              §§push(this.§4!h§);
                                                                                                                              if(!(_loc5_ && _loc1_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§push(this.m_angularVelocity);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(this.m_sweep);
                                                                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                      if(_loc6_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.x);
                                                                                                                                                            if(_loc6_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!(_loc5_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr656:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           addr662:
                                                                                                                                                                           §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                                           addr661:
                                                                                                                                                                           if(_loc6_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr730);
                                                                                                                                                                              }
                                                                                                                                                                              return;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr730);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr685);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr689);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr688);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr656);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr687);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr656);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr684);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr683);
                                                                                                                                                }
                                                                                                                                                §§goto(addr681);
                                                                                                                                             }
                                                                                                                                             §§goto(addr690);
                                                                                                                                          }
                                                                                                                                          §§goto(addr661);
                                                                                                                                       }
                                                                                                                                       §§goto(addr679);
                                                                                                                                    }
                                                                                                                                    §§goto(addr691);
                                                                                                                                 }
                                                                                                                                 §§goto(addr662);
                                                                                                                              }
                                                                                                                              §§goto(addr678);
                                                                                                                           }
                                                                                                                           §§goto(addr676);
                                                                                                                        }
                                                                                                                        §§goto(addr752);
                                                                                                                     }
                                                                                                                     §§goto(addr745);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr748);
                                                                                                               addr351:
                                                                                                               addr396:
                                                                                                               addr409:
                                                                                                            }
                                                                                                            §§goto(addr432);
                                                                                                            addr490:
                                                                                                         }
                                                                                                         §§goto(addr483);
                                                                                                      }
                                                                                                      §§goto(addr479);
                                                                                                   }
                                                                                                   §§goto(addr488);
                                                                                                }
                                                                                                §§goto(addr489);
                                                                                             }
                                                                                             addr524:
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§goto(addr496);
                                                                                             }
                                                                                             §§goto(addr543);
                                                                                          }
                                                                                          this.§!K§ = 0;
                                                                                          addr357:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                this.§1&§ = 0;
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr490);
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      §§goto(addr554);
                                                                                                   }
                                                                                                   §§goto(addr396);
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                             §§goto(addr488);
                                                                                          }
                                                                                          §§goto(addr379);
                                                                                       }
                                                                                       §§goto(addr509);
                                                                                       addr519:
                                                                                    }
                                                                                    §§goto(addr553);
                                                                                 }
                                                                                 this.§=n§ = 1;
                                                                                 §§goto(addr524);
                                                                                 addr532:
                                                                              }
                                                                              §§goto(addr430);
                                                                           }
                                                                           §§goto(addr509);
                                                                           addr333:
                                                                        }
                                                                        §§goto(addr409);
                                                                     }
                                                                     §§goto(addr519);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§@U§ = 1;
                                                                  }
                                                                  §§goto(addr532);
                                                               }
                                                            }
                                                            §§goto(addr496);
                                                         }
                                                         _loc4_ = _loc2_.§=Q§();
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            §§push(this);
                                                            §§push(this.§@U§);
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §§push(§§pop() + _loc4_.§=`§);
                                                            }
                                                            §§pop().§@U§ = §§pop();
                                                            §§push(_loc1_);
                                                            §§push(_loc1_.x);
                                                            if(_loc6_ || _loc1_)
                                                            {
                                                               §§push(_loc4_.§4=§.x);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() * _loc4_.§=`§);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().x = §§pop();
                                                            addr283:
                                                         }
                                                         addr215:
                                                         §§push(_loc1_);
                                                         §§push(_loc1_.y);
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            §§push(_loc4_.§4=§.y);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§push(§§pop() * _loc4_.§=`§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().y = §§pop();
                                                         §§push(this);
                                                         §§push(this.§!K§);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() + _loc4_.§#P§);
                                                         }
                                                         §§pop().§!K§ = §§pop();
                                                         addr268:
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr215);
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§goto(addr283);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         addr241:
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr496);
                                                   }
                                                   §§goto(addr309);
                                                }
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr300);
                                                }
                                                §§goto(addr333);
                                             }
                                             §§goto(addr496);
                                             addr57:
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr57);
                                       }
                                       §§goto(addr98);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr136);
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_ || this)
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && _loc3_))
               {
                  addr44:
                  §§push(_loc2_.col2.x);
                  if(!_loc5_)
                  {
                     §§push(param1.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || _loc2_)
                        {
                           addr62:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_ || _loc3_)
                           {
                              addr82:
                              §§push(param1.x);
                              if(!_loc5_)
                              {
                                 §§goto(addr86);
                              }
                              §§goto(addr104);
                           }
                        }
                        §§goto(addr94);
                     }
                     addr86:
                     §§push(§§pop() * §§pop());
                     if(!(_loc5_ && _loc3_))
                     {
                        addr94:
                        §§push(_loc2_.col2.y);
                        if(!(_loc5_ && _loc3_))
                        {
                           addr104:
                           §§push(§§pop() * param1.y);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                     if(_loc4_ || _loc3_)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§pop() + this.m_xf.position.x);
                        }
                        §§pop().x = §§pop();
                     }
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
                     while(_loc5_);
                     
                     return _loc3_;
                  }
                  §§goto(addr82);
               }
               §§goto(addr62);
            }
            §§goto(addr82);
         }
         §§goto(addr44);
      }
      
      public function §=2§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§]!§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§4![§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[p§(this.m_xf.R,param1);
      }
      
      public function §[K§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§4!h§.x);
         if(_loc3_ || param1)
         {
            §§push(this.m_angularVelocity);
            if(_loc3_)
            {
               §§push(param1.y);
               if(!_loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(!_loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_ || _loc2_)
                     {
                        addr60:
                        §§push(§§pop() * §§pop());
                        if(!(_loc2_ && this))
                        {
                           addr69:
                           §§push(§§pop() - §§pop());
                           §§push(this.§4!h§.y);
                           if(_loc2_ && this)
                           {
                           }
                           §§goto(addr109);
                        }
                        §§push(this.m_angularVelocity);
                        if(_loc3_)
                        {
                           addr93:
                           §§push(param1.x);
                           if(!(_loc2_ && param1))
                           {
                              addr107:
                              §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                           }
                           §§goto(addr107);
                        }
                        addr109:
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr107);
               }
               §§goto(addr60);
            }
            §§goto(addr109);
         }
         §§goto(addr69);
      }
      
      public function §@!B§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_)
         {
            §§push(param1.x);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  addr34:
                  §§push(_loc2_.col2.x);
                  if(!(_loc5_ && this))
                  {
                     §§push(param1.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           addr52:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_)
                           {
                              addr57:
                              §§push(param1.x);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc5_ && param1))
                                 {
                                    addr69:
                                    §§push(_loc2_.col2.y);
                                    if(_loc4_)
                                    {
                                       addr74:
                                       §§push(§§pop() * param1.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(!_loc5_)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(_loc4_ || _loc2_)
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
                                    while(!(_loc4_ || param1));
                                    
                                 }
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(this.§4!h§.x);
                                 if(_loc4_)
                                 {
                                    §§push(this.m_angularVelocity);
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc4_)
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§goto(addr128);
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr155);
                                       }
                                       addr128:
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_)
                                       {
                                          addr132:
                                          §§push(§§pop() - §§pop());
                                          §§push(this.§4!h§.y);
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr142:
                                             §§push(this.m_angularVelocity);
                                             if(_loc4_)
                                             {
                                                addr146:
                                                §§push(_loc3_.x);
                                                if(!_loc5_)
                                                {
                                                   addr155:
                                                   §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                                                }
                                                §§goto(addr155);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                       }
                                       return new §§pop().b2Vec2(§§pop(),§§pop());
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr74);
                           }
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr57);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr34);
      }
      
      public function §8#§() : Number
      {
         return this.§=-§;
      }
      
      public function §8!&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=-§ = param1;
         }
      }
      
      public function §'j§() : Number
      {
         return this.§[<§;
      }
      
      public function §1!&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[<§ = param1;
         }
      }
      
      public function §^L§(param1:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§2!5§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr154:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§2!5§ = param1;
                        loop3:
                        while(true)
                        {
                           this.§,! §();
                           while(_loc4_ || this)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 continue loop0;
                              }
                              addr65:
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              loop7:
                              while(true)
                              {
                                 this.§4!&§.§@!;§();
                                 while(!(_loc3_ && param1))
                                 {
                                    this.§`!c§ = 0;
                                    if(_loc4_)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 continue loop3;
                              }
                              while(_loc4_ || _loc2_)
                              {
                                 §§goto(addr65);
                              }
                              loop9:
                              while(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.m_angularVelocity = 0;
                                    continue loop9;
                                 }
                              }
                              addr89:
                              while(true)
                              {
                                 this.SetAwake(true);
                                 §§goto(addr58);
                                 §§goto(addr89);
                              }
                              addr58:
                           }
                           continue loop2;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr116);
      }
      
      public function §6!-§() : uint
      {
         return this.§2!5§;
      }
      
      public function §=u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!param1)
            {
               this.§]!D§ &= ~§'!V§;
               if(!(_loc2_ || _loc3_))
               {
                  addr83:
               }
               return;
            }
            if(_loc2_ || param1)
            {
               addr76:
               this.§]!D§ |= §'!V§;
            }
            §§goto(addr83);
         }
         §§goto(addr76);
      }
      
      public function §%q§() : Boolean
      {
         return (this.§]!D§ & §'!V§) == §'!V§;
      }
      
      public function §;&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§]!D§ &= ~§"!-§;
               do
               {
                  this.SetAwake(true);
               }
               while(!_loc3_);
               
               if(!(_loc3_ || this))
               {
                  addr87:
               }
               return;
            }
            if(!(_loc2_ && this))
            {
               this.§]!D§ |= §"!-§;
            }
         }
         §§goto(addr87);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               this.§]!D§ &= ~§&G§;
               loop0:
               while(true)
               {
                  this.§7!P§ = 0;
                  loop1:
                  while(true)
                  {
                     this.§4!h§.§@!;§();
                     loop2:
                     while(_loc3_)
                     {
                        this.m_angularVelocity = 0;
                        loop3:
                        while(true)
                        {
                           this.§4!&§.§@!;§();
                           while(true)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 continue loop1;
                              }
                              continue loop3;
                              addr78:
                              this.§`!c§ = 0;
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr123:
                                    }
                                    return;
                                 }
                                 continue loop2;
                              }
                           }
                           addr133:
                           this.§7!P§ = 0;
                           §§goto(addr123);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr126);
         }
         §§goto(addr123);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§]!D§ & §&G§) == §&G§;
      }
      
      public function §<6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§]!D§ |= §=A§;
               }
               do
               {
                  loop1:
                  while(true)
                  {
                     this.§,! §();
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     addr74:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               while(_loc2_);
               
               return;
            }
            this.§]!D§ &= ~§=A§;
         }
         §§goto(addr74);
      }
      
      public function §-!i§() : Boolean
      {
         return (this.§]!D§ & §=A§) == §=A§;
      }
      
      public function §,!T§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§"%§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!(_loc7_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() == this.§7!S§())
               {
                  if(_loc6_)
                  {
                     return;
                  }
                  addr62:
                  _loc2_ = this.m_world.§%]§.§%%§;
                  _loc3_ = this.§ 7§;
                  while(_loc3_)
                  {
                     _loc3_.§>!I§(_loc2_,this.m_xf);
                     if(!_loc6_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§,!Z§;
                  }
               }
               else
               {
                  addr52:
                  if(param1)
                  {
                     if(!_loc7_)
                     {
                        this.§]!D§ |= §=!M§;
                     }
                     §§goto(addr62);
                  }
                  else
                  {
                     this.§]!D§ &= ~§=!M§;
                     _loc2_ = this.m_world.§%]§.§%%§;
                     _loc3_ = this.§ 7§;
                     if(_loc6_ || param1)
                     {
                        loop0:
                        while(_loc3_)
                        {
                           _loc3_.§,!c§(_loc2_);
                           if(!_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              _loc3_ = _loc3_.§,!Z§;
                              continue loop0;
                           }
                        }
                        _loc4_ = this.§7!V§;
                        if(_loc6_)
                        {
                           while(_loc4_)
                           {
                              _loc5_ = _loc4_;
                              _loc4_ = _loc4_.§<!D§;
                              if(!_loc7_)
                              {
                                 this.m_world.§%]§.§"G§(_loc5_.§7![§);
                              }
                           }
                           if(_loc7_)
                           {
                           }
                           §§goto(addr182);
                        }
                        this.§7!V§ = null;
                        §§goto(addr182);
                     }
                     §§goto(addr133);
                  }
               }
               addr182:
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr62);
      }
      
      public function §7!S§() : Boolean
      {
         return (this.§]!D§ & §=!M§) == §=!M§;
      }
      
      public function § !Y§() : Boolean
      {
         return (this.§]!D§ & §"!-§) == §"!-§;
      }
      
      public function §super§() : b2Fixture
      {
         return this.§ 7§;
      }
      
      public function §@!§() : b2JointEdge
      {
         return this.§8_§;
      }
      
      public function §]<§() : b2ControllerEdge
      {
         return this.§@!U§;
      }
      
      public function §2!c§() : b2ContactEdge
      {
         return this.§7!V§;
      }
      
      public function §'!;§() : b2Body
      {
         return this.§,!Z§;
      }
      
      public function GetUserData() : *
      {
         return this.§=f§;
      }
      
      public function §9`§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=f§ = param1;
         }
      }
      
      public function §1g§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §]!-§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §#!f§;
         if(_loc6_)
         {
            §§push(_loc1_.R);
            if(_loc6_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr34:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc1_.position);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(this.m_sweep);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop().c0);
                     if(_loc6_ || _loc2_)
                     {
                        §§push(§§pop().x);
                        if(_loc6_ || _loc1_)
                        {
                           §§push(_loc2_.col1);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(§§pop().x);
                              if(!_loc7_)
                              {
                                 §§push(_loc3_.x);
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(§§pop().x);
                                          if(_loc6_ || _loc2_)
                                          {
                                             addr140:
                                             §§push(_loc3_.y);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_ || this)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc6_ || this)
                                                         {
                                                            addr181:
                                                            addr180:
                                                            addr178:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(_loc7_ && _loc1_)
                                                            {
                                                            }
                                                            addr226:
                                                            §§pop().y = §§pop();
                                                            var _loc5_:§"%§ = this.m_world.§%]§.§%%§;
                                                            _loc4_ = this.§ 7§;
                                                            §§goto(addr227);
                                                         }
                                                         addr227:
                                                         while(_loc4_)
                                                         {
                                                            _loc4_.§1!f§(_loc5_,_loc1_,this.m_xf);
                                                            if(_loc7_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            _loc4_ = _loc4_.§,!Z§;
                                                         }
                                                         return;
                                                      }
                                                      addr191:
                                                      §§push(_loc2_.col1.y);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr199:
                                                         §§push(_loc3_.x);
                                                         if(!_loc7_)
                                                         {
                                                            addr203:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc7_ && this))
                                                            {
                                                               addr213:
                                                               addr211:
                                                               §§push(_loc2_.col2.y);
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                               }
                                                               addr225:
                                                               §§goto(addr226);
                                                               §§push(§§pop() - (§§pop() + §§pop()));
                                                            }
                                                         }
                                                         §§goto(addr225);
                                                         §§push(§§pop() * _loc3_.y);
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr180);
               }
               §§goto(addr178);
            }
            §§goto(addr181);
         }
         §§goto(addr34);
      }
      
      b2internal function §"!_§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.m_xf);
            if(_loc3_)
            {
               §§push(§§pop().R);
               if(_loc3_ || _loc1_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr37:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc3_ || _loc3_)
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr167:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr169:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr170:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§push(_loc1_.col1);
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr191:
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             addr203:
                                             addr92:
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
                                                   }
                                                }
                                             }
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                             §§push(_loc2_.x);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc3_)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(_loc1_.col2);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§push(§§pop().y);
                                                               if(_loc3_)
                                                               {
                                                                  addr209:
                                                                  §§push(_loc2_.y);
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     addr151:
                                                                     §§push(§§pop() - (§§pop() + §§pop() * §§pop()));
                                                                     if(!(_loc4_ && _loc1_))
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        if(_loc3_)
                                                                        {
                                                                           return;
                                                                           addr163:
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
                                                                     §§pop().x = §§pop();
                                                                     continue loop0;
                                                                  }
                                                                  addr209:
                                                               }
                                                               §§goto(addr151);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr203);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr209);
                                                         }
                                                         addr208:
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr208);
                                                }
                                                addr207:
                                             }
                                             §§goto(addr151);
                                          }
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                                 addr190:
                              }
                              §§goto(addr209);
                           }
                        }
                     }
                  }
               }
               §§goto(addr163);
            }
         }
         §§goto(addr37);
      }
      
      b2internal function §,!5§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§2!5§);
            if(_loc3_ || _loc2_)
            {
               §§push(b2_dynamicBody);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || param1)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           if(_loc3_ || param1)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 §§pop();
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr94:
                                    §§push(param1.§2!5§ == b2_dynamicBody);
                                    if(!_loc4_)
                                    {
                                       addr97:
                                       §§push(!§§pop());
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr105:
                                          §§push(Boolean(§§pop()));
                                          if(_loc3_ || param1)
                                          {
                                             addr113:
                                             if(§§pop())
                                             {
                                                if(!(_loc3_ || param1))
                                                {
                                                   addr123:
                                                   var _loc2_:b2JointEdge = this.§8_§;
                                                   while(true)
                                                   {
                                                      §§push(Boolean(_loc2_));
                                                      if(_loc4_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(true);
                                                         }
                                                         else
                                                         {
                                                            if(_loc2_.§@X§ != param1)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc3_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc2_.§9&§.§[[§);
                                                            if(_loc4_)
                                                            {
                                                               continue;
                                                            }
                                                            if(§§pop() != false)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(false);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                      }
                                                      _loc2_ = _loc2_.§<!D§;
                                                   }
                                                }
                                             }
                                             §§goto(addr123);
                                          }
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr113);
                                 }
                                 addr122:
                                 return §§pop();
                                 §§push(false);
                              }
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr97);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr123);
      }
      
      b2internal function §6!1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.m_sweep);
            while(true)
            {
               §§push(param1);
               addr112:
               while(true)
               {
                  §§pop().§6!1§(§§pop());
               }
            }
            addr111:
         }
         while(true)
         {
            §§push(this.m_sweep);
            while(true)
            {
               if(!_loc2_)
               {
                  §§pop().c.SetV(this.m_sweep.c0);
                  continue;
               }
               §§goto(addr111);
            }
         }
      }
   }
}
