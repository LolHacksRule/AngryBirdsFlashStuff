package §]=§
{
   import §"!G§.b2ControllerEdge;
   import §#!"§.b2EdgeShape;
   import §#!"§.b2MassData;
   import §#!"§.b2Shape;
   import §%t§.b2JointEdge;
   import §&L§.b2Mat22;
   import §&L§.b2Math;
   import §&L§.b2Sweep;
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §'s§.§8!b§;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §6!9§.b2Contact;
   import §6!9§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §7!2§:b2Transform;
      
      b2internal static var §'v§:uint = 1;
      
      b2internal static var §6e§:uint = 2;
      
      b2internal static var §,!f§:uint = 4;
      
      b2internal static var §`t§:uint = 8;
      
      b2internal static var §%"§:uint = 16;
      
      b2internal static var §;I§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7!2§ = new b2Transform();
            loop0:
            while(true)
            {
               §'v§ = 1;
               loop1:
               while(true)
               {
                  §6e§ = 2;
                  while(true)
                  {
                     §,!f§ = 4;
                     while(true)
                     {
                        §`t§ = 8;
                        while(_loc2_)
                        {
                           §%"§ = 16;
                           while(!(_loc1_ && b2Body))
                           {
                              continue loop1;
                              if(!(_loc1_ && _loc2_))
                              {
                                 return;
                                 addr51:
                              }
                           }
                        }
                     }
                     addr83:
                     loop6:
                     while(_loc2_ || _loc2_)
                     {
                        b2_staticBody = 0;
                        while(true)
                        {
                           b2_kinematicBody = 1;
                           continue loop0;
                           addr35:
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              continue loop6;
                           }
                           §§goto(addr44);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      b2internal var §3! §:uint;
      
      b2internal var §32§:int;
      
      b2internal var §=!R§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §45§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §=q§:b2Vec2;
      
      b2internal var §0e§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §7!Q§:b2Body;
      
      b2internal var §,1§:b2Body;
      
      b2internal var §7!d§:b2Fixture;
      
      b2internal var §;!F§:int;
      
      b2internal var §%!V§:b2ControllerEdge;
      
      b2internal var §2Z§:int;
      
      b2internal var §8>§:b2JointEdge;
      
      b2internal var §2!4§:b2ContactEdge;
      
      b2internal var §&v§:Number;
      
      b2internal var §8[§:Number;
      
      b2internal var §%!5§:Number;
      
      b2internal var §&f§:Number;
      
      b2internal var §9!'§:Number;
      
      b2internal var §?k§:Number;
      
      b2internal var §"!X§:Number;
      
      b2internal var §`!5§:Number;
      
      private var §8!B§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || _loc3_)
         {
            this.m_xf = new b2Transform();
            while(true)
            {
               this.m_sweep = new b2Sweep();
               addr283:
               while(true)
               {
                  this.§45§ = new b2Vec2();
               }
            }
            addr288:
         }
         loop2:
         while(true)
         {
            this.§=q§ = new b2Vec2();
            loop3:
            while(true)
            {
               super();
               loop4:
               while(true)
               {
                  this.§3! § = 0;
                  loop5:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(param1.§3^§);
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ && param2))
                              {
                                 this.§3! § |= §`t§;
                                 while(!_loc6_)
                                 {
                                    addr101:
                                    if(!(_loc7_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(this.m_sweep);
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§pop().localCenter.§5b§();
                                       if(_loc7_)
                                       {
                                          addr51:
                                          if(!(_loc6_ && param2))
                                          {
                                             addr58:
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc7_)
                                                {
                                                   addr67:
                                                   if(_loc7_ || this)
                                                   {
                                                      continue loop5;
                                                   }
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(param1.§3!E§);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§3! § |= §,!f§;
                                                                     addr219:
                                                                     while(!_loc6_)
                                                                     {
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr212:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(param1.§,!e§);
                                                                  addr183:
                                                                  addr225:
                                                                  loop17:
                                                                  while(_loc7_ || param1)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     addr150:
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.§]!%§);
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        continue loop17;
                                                                        addr207:
                                                                        while(true)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§3! § |= §%"§;
                                                                        continue loop11;
                                                                     }
                                                                     §§goto(addr183);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                                addr170:
                                                while(!_loc6_)
                                                {
                                                   this.§3! § |= §;I§;
                                                   loop22:
                                                   while(true)
                                                   {
                                                      addr136:
                                                      while(true)
                                                      {
                                                         this.m_world = param2;
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_ || param2)
                                                               {
                                                                  §§push(this.m_xf);
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     §§pop().position.SetV(param1.position);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr301:
                                                                        §§push(this.m_xf);
                                                                        break;
                                                                     }
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           §§push(this.m_xf);
                                                                           if(!_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop().R);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              §§pop().Set(param1.angle);
                                                                              while(!_loc6_)
                                                                              {
                                                                                 §§goto(addr101);
                                                                                 §§goto(addr51);
                                                                              }
                                                                              continue;
                                                                              addr99:
                                                                           }
                                                                           addr304:
                                                                           var _loc3_:b2Mat22 = §§pop();
                                                                           var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr794:
                                                                              addr806:
                                                                              addr803:
                                                                              addr809:
                                                                              addr808:
                                                                              addr805:
                                                                              addr810:
                                                                              addr797:
                                                                              addr795:
                                                                              §§push(this.m_sweep.c);
                                                                              §§push(_loc3_.col1.x);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr802:
                                                                                 §§push(§§pop() * _loc4_.x);
                                                                              }
                                                                              §§pop().x = §§pop() + _loc3_.col2.x * _loc4_.y;
                                                                              addr724:
                                                                              addr811:
                                                                              §§push(this.m_sweep.c);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(_loc3_.col1);
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    addr736:
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(_loc4_.x);
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          addr753:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          §§push(_loc3_.col2);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr758:
                                                                                             §§push(§§pop().y);
                                                                                             §§push(_loc4_.y);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr763:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr766:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      addr784:
                                                                                                      if(_loc7_ || _loc3_)
                                                                                                      {
                                                                                                         addr683:
                                                                                                         §§push(this.m_sweep);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr694:
                                                                                                            §§push(§§pop().c);
                                                                                                            §§push(this.m_sweep.c.x);
                                                                                                            §§push(this.m_xf.position.x);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(_loc7_ || param2)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     addr711:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        addr719:
                                                                                                                        §§push(this.m_sweep);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(_loc7_ || param2)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(this.m_sweep);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().c);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          if(_loc7_ || param1)
                                                                                                                                          {
                                                                                                                                             if(_loc7_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.m_xf);
                                                                                                                                                if(_loc7_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().position);
                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr674:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  addr679:
                                                                                                                                                                  §§push(this.m_sweep);
                                                                                                                                                                  if(!(_loc6_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                                                        this.§8>§ = null;
                                                                                                                                                                        this.§%!V§ = null;
                                                                                                                                                                        this.§2!4§ = null;
                                                                                                                                                                        this.§2Z§ = 0;
                                                                                                                                                                        this.§7!Q§ = null;
                                                                                                                                                                        this.§,1§ = null;
                                                                                                                                                                        addr560:
                                                                                                                                                                        addr572:
                                                                                                                                                                        addr582:
                                                                                                                                                                        addr577:
                                                                                                                                                                        addr567:
                                                                                                                                                                        addr587:
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§45§.SetV(param1.§5p§);
                                                                                                                                                                           addr548:
                                                                                                                                                                           if(_loc7_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              this.m_angularVelocity = param1.§;-§;
                                                                                                                                                                              this.§?k§ = param1.§3j§;
                                                                                                                                                                              this.§"!X§ = param1.§=!8§;
                                                                                                                                                                              this.§=q§.Set(0,0);
                                                                                                                                                                              this.§0e§ = 0;
                                                                                                                                                                              addr534:
                                                                                                                                                                              addr522:
                                                                                                                                                                              addr540:
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§`!5§ = 0;
                                                                                                                                                                                 addr498:
                                                                                                                                                                                 if(_loc7_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§32§ = param1.type;
                                                                                                                                                                                       addr493:
                                                                                                                                                                                       if(this.§32§ == b2_dynamicBody)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr468:
                                                                                                                                                                                          if(_loc7_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§&v§ = 1;
                                                                                                                                                                                             addr478:
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc6_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§8[§ = 1;
                                                                                                                                                                                                   addr401:
                                                                                                                                                                                                   this.§%!5§ = 0;
                                                                                                                                                                                                   addr461:
                                                                                                                                                                                                   if(!(_loc6_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc7_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§&f§ = 0;
                                                                                                                                                                                                            addr388:
                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§9!'§ = param1.§%!"§;
                                                                                                                                                                                                               addr369:
                                                                                                                                                                                                               if(_loc7_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc6_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§8!B§ = param1.§?!X§;
                                                                                                                                                                                                                     addr352:
                                                                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§7!d§ = null;
                                                                                                                                                                                                                              addr342:
                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§;!F§ = 0;
                                                                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc6_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr560);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr534);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr447:
                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc6_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§8[§ = 0;
                                                                                                                                                                                                                                                addr431:
                                                                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc7_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr440:
                                                                                                                                                                                                                                                      §§goto(addr401);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr522);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr468);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr679);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr498);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr388);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr342);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr478);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr352);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr540);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr431);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr369);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr461);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr401);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr572);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr719);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr582);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr534);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr577);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr567);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr493);
                                                                                                                                                                                       }
                                                                                                                                                                                       this.§&v§ = 0;
                                                                                                                                                                                       §§goto(addr447);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr587);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr548);
                                                                                                                                                                              }
                                                                                                                                                                              addr528:
                                                                                                                                                                              §§goto(addr528);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr784);
                                                                                                                                                                        }
                                                                                                                                                                        addr606:
                                                                                                                                                                        §§goto(addr606);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr683);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr719);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr736);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr766);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr802);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr694);
                                                                                                                                          }
                                                                                                                                          §§goto(addr711);
                                                                                                                                       }
                                                                                                                                       §§goto(addr674);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr694);
                                                                                                                              }
                                                                                                                              §§goto(addr724);
                                                                                                                           }
                                                                                                                           §§goto(addr694);
                                                                                                                        }
                                                                                                                        §§goto(addr794);
                                                                                                                     }
                                                                                                                     §§goto(addr753);
                                                                                                                  }
                                                                                                                  §§goto(addr806);
                                                                                                               }
                                                                                                               §§goto(addr758);
                                                                                                            }
                                                                                                            §§goto(addr763);
                                                                                                         }
                                                                                                         §§goto(addr794);
                                                                                                      }
                                                                                                      §§goto(addr811);
                                                                                                   }
                                                                                                   §§goto(addr803);
                                                                                                }
                                                                                                §§goto(addr809);
                                                                                             }
                                                                                             §§goto(addr808);
                                                                                          }
                                                                                          §§goto(addr805);
                                                                                       }
                                                                                       §§goto(addr758);
                                                                                    }
                                                                                    §§goto(addr810);
                                                                                 }
                                                                                 §§goto(addr797);
                                                                              }
                                                                              §§goto(addr795);
                                                                           }
                                                                           §§goto(addr440);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr226);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr207);
                                                                     }
                                                                     §§goto(addr150);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                         }
                                                         §§goto(addr304);
                                                         continue loop22;
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                                §§goto(addr219);
                                             }
                                             §§goto(addr179);
                                          }
                                          §§goto(addr99);
                                       }
                                       §§goto(addr301);
                                    }
                                    §§pop().a0 = this.m_sweep.a = param1.angle;
                                    §§goto(addr301);
                                 }
                                 §§goto(addr283);
                              }
                              else
                              {
                                 §§goto(addr301);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr225);
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr288);
                     }
                     §§goto(addr283);
                  }
               }
            }
         }
      }
      
      private function §<!V§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.§09§().y,param2.§09§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§@'§(_loc5_,param2.§09§());
         _loc6_ = b2Math.§;v§(_loc6_,param2.§1!6§());
         _loc6_ = b2Math.§@'§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§4-§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2 = b2Math.§4-§(param1.§09§(),param2.§09§());
         if(!(_loc9_ && this))
         {
            §§push(_loc7_.Normalize());
            if(_loc10_ || param2)
            {
               §§pop();
               addr107:
               §§push(b2Math.§2&§(param1.§09§(),param2.§1!6§()));
            }
            §§push(§§pop() > 0);
            if(_loc10_ || param3)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc8_:* = §§pop();
            if(_loc10_ || this)
            {
               param1.§#e§(param2,_loc6_,_loc7_,_loc8_);
            }
            do
            {
               param2.§=C§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(_loc9_);
            
            return _loc4_;
         }
         §§goto(addr107);
      }
      
      public function §[p§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§8!b§ = null;
         if(!_loc6_)
         {
            if(this.m_world.§+!`§() == true)
            {
               if(_loc7_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Fixture = new b2Fixture();
         if(_loc7_)
         {
            _loc2_.§]!U§(this,this.m_xf,param1);
            if(_loc7_)
            {
               addr46:
               if(this.§3! § & §;I§)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr55);
                  }
                  §§goto(addr97);
               }
               §§goto(addr76);
            }
            addr55:
            §§push(this.m_world);
            if(_loc7_)
            {
               _loc3_ = §§pop().§?l§.§'<§;
               if(!(_loc6_ && this))
               {
                  _loc2_.§6K§(_loc3_,this.m_xf);
                  _loc2_.§,1§ = this.§7!d§;
                  addr76:
                  if(_loc7_ || this)
                  {
                     addr97:
                     this.§7!d§ = _loc2_;
                     if(!(_loc6_ && this))
                     {
                        var _loc4_:*;
                        §§push((_loc4_ = this).§;!F§);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(!_loc6_)
                        {
                           _loc4_.§;!F§ = _loc5_;
                        }
                        if(_loc7_)
                        {
                           _loc2_.m_body = this;
                           while(true)
                           {
                              if(_loc2_.§5!2§ > 0)
                              {
                                 continue;
                              }
                              addr135:
                              while(true)
                              {
                                 §§push(this.m_world);
                                 §§goto(addr138);
                              }
                           }
                        }
                        §§goto(addr180);
                     }
                     while(true)
                     {
                        §§goto(addr135);
                     }
                  }
                  §§goto(addr180);
               }
               §§goto(addr76);
            }
            addr138:
            while(true)
            {
               §§push(this.m_world.§3! §);
               if(_loc7_ || param1)
               {
                  §§push(§§pop() | b2World.§+!-§);
               }
               §§pop().§3! § = §§pop();
               if(_loc7_)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop2;
            }
            return _loc2_;
         }
         §§goto(addr46);
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(_loc5_ || param1)
         {
            _loc3_.shape = param1;
            do
            {
               _loc3_.density = param2;
            }
            while(_loc4_ && _loc3_);
            
         }
         return this.§[p§(_loc3_);
      }
      
      public function §-T§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§8!b§ = null;
         if(!(_loc13_ && this))
         {
            if(this.m_world.§+!`§() == true)
            {
               if(!_loc13_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§7!d§;
         var _loc3_:b2Fixture = null;
         §§push(false);
         if(!(_loc13_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§,1§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            loop1:
            while(true)
            {
               §§push(Boolean(_loc3_));
               loop2:
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§7!d§ = param1.§,1§;
                     loop3:
                     while(_loc12_)
                     {
                        while(true)
                        {
                           §§push(true);
                           if(!_loc13_)
                           {
                              if(!_loc12_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           _loc4_ = §§pop();
                           if(_loc12_)
                           {
                              if(_loc13_)
                              {
                                 continue loop3;
                              }
                              if(_loc12_)
                              {
                                 if(true)
                                 {
                                    break loop0;
                                 }
                                 continue;
                              }
                           }
                           break loop0;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     _loc3_.§,1§ = param1.§,1§;
                     if(_loc12_)
                     {
                        §§goto(addr77);
                     }
                     break loop0;
                  }
               }
            }
         }
         var _loc5_:b2ContactEdge = this.§2!4§;
         if(!(_loc13_ && this))
         {
            while(true)
            {
               §§push(Boolean(_loc5_));
               if(_loc12_ || this)
               {
                  if(!§§pop())
                  {
                     §§goto(addr275);
                  }
                  _loc6_ = _loc5_.§4! §;
                  _loc5_ = _loc5_.§2B§;
                  _loc7_ = _loc6_.§2!N§();
                  _loc8_ = _loc6_.§`!Q§();
                  if(!_loc13_)
                  {
                     §§push(param1 == _loc7_);
                     if(_loc12_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc13_ && _loc2_))
                        {
                           addr167:
                           §§push(§§pop());
                           if(_loc12_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              if(_loc12_ || this)
                              {
                                 §§pop();
                                 addr201:
                                 if(!(_loc13_ && _loc2_))
                                 {
                                    §§push(param1 == _loc8_);
                                    if(_loc12_ || _loc2_)
                                    {
                                       addr197:
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 this.m_world.§?l§.§"P§(_loc6_);
                                 continue;
                              }
                           }
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc13_)
                           {
                              continue;
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr201);
               }
               break;
            }
            if(§§pop())
            {
               if(!(_loc13_ && this))
               {
                  _loc9_ = this.m_world.§?l§.§'<§;
                  if(!(_loc13_ && param1))
                  {
                     param1.§[!3§(_loc9_);
                     addr250:
                     param1.§"P§();
                     if(!_loc13_)
                     {
                        param1.m_body = null;
                        if(!(_loc13_ && param1))
                        {
                           addr265:
                           param1.§,1§ = null;
                           if(_loc13_ && this)
                           {
                           }
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr312);
                  }
                  §§goto(addr250);
               }
               addr275:
               if(_loc12_)
               {
                  §§push(Boolean(this.§3! § & §;I§));
                  break loop7;
               }
               var _loc10_:*;
               §§push((_loc10_ = this).§;!F§);
               if(_loc12_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc11_:* = §§pop();
               if(!(_loc13_ && _loc2_))
               {
                  _loc10_.§;!F§ = _loc11_;
               }
               if(!(_loc13_ && this))
               {
                  addr312:
                  this.§&!`§();
               }
               return;
            }
            §§goto(addr250);
         }
         §§goto(addr265);
      }
      
      public function §3s§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2Fixture = null;
         if(_loc8_)
         {
            if(this.m_world.§+!`§() != true)
            {
               loop0:
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
                           §§push(this.m_xf);
                           if(!(_loc8_ || param1))
                           {
                              break loop0;
                           }
                           §§pop().position.SetV(param1);
                           if(!(_loc9_ && _loc3_))
                           {
                              if(!_loc9_)
                              {
                                 if(!(_loc8_ || param1))
                                 {
                                    break;
                                 }
                                 if(true)
                                 {
                                    §§push(this.m_xf);
                                    break loop0;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        addr76:
                        return;
                        addr70:
                     }
                     addr81:
                     var _loc4_:b2Mat22 = §§pop();
                     var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                     if(!_loc9_)
                     {
                        §§push(this.m_sweep);
                        if(!(_loc9_ && _loc3_))
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
                                       loop5:
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
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().c);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_.col1);
                                                                  if(_loc9_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.x);
                                                                     if(_loc8_)
                                                                     {
                                                                        if(_loc9_ && param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        loop15:
                                                                        while(_loc8_ || this)
                                                                        {
                                                                           §§push(_loc4_.col2);
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_.y);
                                                                                 if(_loc9_ && _loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr242:
                                                                                 loop28:
                                                                                 while(_loc8_ || this)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    loop29:
                                                                                    while(!_loc9_)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       §§pop().x = §§pop();
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             loop31:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.m_sweep);
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§push(this.m_sweep);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§push(§§pop().c);
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr213:
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§push(this.m_sweep);
                                                                                                                           if(!(_loc8_ || param2))
                                                                                                                           {
                                                                                                                              §§pop().a0 = this.m_sweep.a = param2;
                                                                                                                              var _loc6_:§8!b§ = this.m_world.§?l§.§'<§;
                                                                                                                              _loc3_ = this.§7!d§;
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr343:
                                                                                                                              addr352:
                                                                                                                           }
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop32;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       this.m_world.§?l§.§8!<§();
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 _loc3_.§5X§(_loc6_,this.m_xf,this.m_xf);
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 _loc3_ = _loc3_.§,1§;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop12;
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop30;
                                                                                                                     addr123:
                                                                                                                     if(_loc9_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                     §§goto(addr343);
                                                                                                                     §§push(this.m_sweep);
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               if(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc9_ && param2)
                                                                                                                     {
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     §§push(this.m_xf);
                                                                                                                     if(_loc8_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop().position);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc8_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ || this))
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 §§goto(addr213);
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                              while(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§goto(addr314);
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                              continue loop9;
                                                                                                                              addr311:
                                                                                                                           }
                                                                                                                           §§goto(addr242);
                                                                                                                        }
                                                                                                                        §§goto(addr241);
                                                                                                                     }
                                                                                                                     §§goto(addr240);
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  addr314:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     addr315:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.m_sweep);
                                                                                                                        addr224:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           addr225:
                                                                                                                           while(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              §§push(this.m_sweep);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 addr237:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.m_xf);
                                                                                                                  addr240:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().position);
                                                                                                                     addr241:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr237);
                                                                                                         }
                                                                                                         §§goto(addr236);
                                                                                                      }
                                                                                                      §§goto(addr225);
                                                                                                   }
                                                                                                   §§goto(addr224);
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr315);
                                                                                       }
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr311);
                                                                  }
                                                                  continue loop4;
                                                               }
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
                                 }
                              }
                           }
                        }
                        §§goto(addr343);
                     }
                     §§goto(addr315);
                  }
                  break;
               }
               §§goto(addr81);
               §§push(§§pop().R);
            }
            §§goto(addr76);
         }
         §§goto(addr70);
      }
      
      public function §34§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§3s§(param1.position,param1.GetAngle());
         }
      }
      
      public function §%!B§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §4Q§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3s§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §,&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3s§(this.GetPosition(),param1);
         }
      }
      
      public function §]!8§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §>!4§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§32§ == b2_staticBody)
            {
               if(_loc2_)
               {
                  return;
               }
               while(true)
               {
               }
               addr55:
            }
            while(true)
            {
               this.§45§.SetV(param1);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr55);
            }
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§45§;
      }
      
      public function §<O§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§32§ == b2_staticBody)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
               while(true)
               {
               }
               addr53:
            }
            while(true)
            {
               this.m_angularVelocity = param1;
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr53);
            }
         }
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §@!I§() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc3_ || this)
         {
            _loc1_.type = this.§-V§();
            while(true)
            {
               _loc1_.§3!E§ = (this.§3! § & §,!f§) == §,!f§;
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  loop2:
                  for(; _loc3_; if(_loc2_ && _loc2_)
                  {
                     continue;
                  },_loc1_.§3j§ = this.§?k§,loop9:
                  while(true)
                  {
                     _loc1_.§5p§.SetV(this.GetLinearVelocity());
                     loop10:
                     while(true)
                     {
                        _loc1_.position = this.GetPosition();
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              continue loop9;
                           }
                           continue loop10;
                           addr65:
                           _loc1_.§?!X§ = this.GetUserData();
                           if(!_loc3_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              return _loc1_;
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr101);
                     }
                  })
                  {
                     _loc1_.§=!8§ = this.§"!X§;
                     loop3:
                     while(true)
                     {
                        _loc1_.§;-§ = this.m_angularVelocity;
                        loop4:
                        while(true)
                        {
                           _loc1_.§>m§ = (this.§3! § & §%"§) == §%"§;
                           addr155:
                           while(true)
                           {
                              _loc1_.§3^§ = (this.§3! § & §`t§) == §`t§;
                              while(_loc3_)
                              {
                                 continue loop3;
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               while(true)
               {
                  _loc1_.§,!e§ = (this.§3! § & §6e§) == §6e§;
                  §§goto(addr101);
               }
               addr143:
            }
         }
         §§goto(addr143);
      }
      
      public function §^!>§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§32§ == b2_dynamicBody)
            {
               loop0:
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
                     addr185:
                     return;
                     addr173:
                  }
                  while(true)
                  {
                     §§push(this.§=q§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§=q§);
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
                                       if(!(_loc3_ || this))
                                       {
                                          break loop7;
                                       }
                                       §§push(this.§=q§);
                                       if(_loc4_ && _loc3_)
                                       {
                                          break;
                                       }
                                       §§push(this.§=q§);
                                       if(_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(§§pop().y);
                                       if(_loc3_)
                                       {
                                          if(_loc4_ && _loc3_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(param1.y);
                                          if(!_loc3_)
                                          {
                                             continue loop6;
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       if(_loc4_ && param1)
                                       {
                                          continue loop7;
                                       }
                                       §§pop().y = §§pop();
                                       while(_loc3_)
                                       {
                                          §§push(this);
                                          §§push(this.§0e§);
                                          if(_loc3_)
                                          {
                                             §§push(param2.x);
                                             if(!(_loc4_ && param2))
                                             {
                                                §§push(this.m_sweep.c.x);
                                                if(_loc3_ || param2)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr52:
                                                      §§push(param1.y);
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         addr61:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc3_)
                                                         {
                                                            §§push(param2.y);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(this.m_sweep.c.y);
                                                               if(!_loc4_)
                                                               {
                                                                  addr91:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(param1.x);
                                                                  }
                                                                  §§pop().§0e§ = §§pop() + (§§pop() - §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr91);
                                                }
                                                §§goto(addr61);
                                             }
                                             §§goto(addr52);
                                          }
                                          §§goto(addr91);
                                       }
                                       §§goto(addr179);
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr173);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr185);
         }
         §§goto(addr179);
      }
      
      public function §&S§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§32§ == b2_dynamicBody)
            {
               do
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
                     addr97:
                     return;
                     addr85:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§0e§);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§0e§ = §§pop();
                     if(_loc3_ || this)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr91);
                  }
               }
               while(_loc2_ && param1);
               
               return;
            }
            §§goto(addr97);
         }
         §§goto(addr91);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§32§ == b2_dynamicBody)
            {
               loop0:
               while(this.IsAwake() == false)
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     this.SetAwake(true);
                     while(true)
                     {
                        break loop0;
                     }
                     addr211:
                  }
                  §§goto(addr211);
               }
               loop1:
               while(true)
               {
                  §§push(this.§45§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§45§);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().x);
                        loop4:
                        while(true)
                        {
                           §§push(this.§8[§);
                           loop5:
                           while(true)
                           {
                              §§push(param1.x);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(this.§45§);
                                             if(!(_loc3_ || param1))
                                             {
                                                break;
                                             }
                                             §§push(this.§45§);
                                             if(!(_loc4_ && param2))
                                             {
                                                §§push(§§pop().y);
                                                if(_loc3_)
                                                {
                                                   if(_loc4_ && this)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(this.§8[§);
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(param1.y);
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().y = §§pop();
                                                do
                                                {
                                                   §§push(this);
                                                   §§push(this.m_angularVelocity);
                                                   if(_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(this.§&f§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(param2.x);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.m_sweep.c.x);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc3_)
                                                            {
                                                               §§push(param1.y);
                                                               if(_loc3_ || param1)
                                                               {
                                                                  addr55:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     addr63:
                                                                     §§push(param2.y);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr67:
                                                                        §§push(this.m_sweep.c.y);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr84:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              §§push(param1.x);
                                                                           }
                                                                           §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                                  §§goto(addr84);
                                                               }
                                                               §§goto(addr67);
                                                            }
                                                            §§goto(addr63);
                                                         }
                                                         §§goto(addr55);
                                                      }
                                                   }
                                                   §§goto(addr84);
                                                }
                                                while(§§pop().m_angularVelocity = §§pop(), _loc4_ && this);
                                                
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop1;
                                                }
                                                continue;
                                             }
                                             continue loop3;
                                          }
                                       }
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
            return;
         }
         §§goto(addr211);
      }
      
      public function § !b§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§]!8§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§=[§(this.§@!I§());
         var _loc8_:b2Fixture = _loc5_.§7!d§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc8_));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc16_)
                  {
                     _loc5_.§&!`§();
                     if(!(_loc17_ && this))
                     {
                        addr199:
                        _loc6_.§&!`§();
                        break;
                     }
                     break;
                  }
                  §§goto(addr199);
               }
               else
               {
                  §§push(Boolean(param1(_loc8_)));
                  if(_loc17_)
                  {
                     continue;
                  }
                  if(!§§pop())
                  {
                     _loc7_ = _loc8_;
                     _loc8_ = _loc8_.§,1§;
                     continue loop0;
                  }
                  if(!(_loc16_ || this))
                  {
                     break;
                  }
                  _loc13_ = _loc8_.§,1§;
                  if(_loc16_)
                  {
                     if(_loc7_)
                     {
                        if(_loc16_ || this)
                        {
                           addr84:
                           _loc7_.§,1§ = _loc13_;
                           if(!_loc16_)
                           {
                           }
                           addr95:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§;!F§);
                           if(_loc16_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(_loc16_ || _loc2_)
                           {
                              _loc14_.§;!F§ = _loc15_;
                           }
                           if(!(_loc17_ && this))
                           {
                              _loc8_.§,1§ = _loc6_.§7!d§;
                              if(!_loc17_)
                              {
                                 _loc6_.§7!d§ = _loc8_;
                                 if(!(_loc17_ && this))
                                 {
                                    addr138:
                                    §§push((_loc14_ = _loc6_).§;!F§);
                                    if(_loc16_ || param1)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc15_ = §§pop();
                                    if(!_loc17_)
                                    {
                                       _loc14_.§;!F§ = _loc15_;
                                    }
                                    if(!_loc16_)
                                    {
                                    }
                                    _loc8_ = _loc13_;
                                    continue loop0;
                                 }
                                 _loc8_.m_body = _loc6_;
                              }
                              §§goto(addr138);
                           }
                        }
                        §§goto(addr138);
                     }
                     else
                     {
                        _loc5_.§7!d§ = _loc13_;
                        if(_loc16_)
                        {
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr84);
               }
            }
            var _loc9_:b2Vec2 = _loc5_.§]!8§();
            var _loc10_:b2Vec2 = _loc6_.§]!8§();
            var _loc11_:b2Vec2 = b2Math.§4-§(_loc2_,b2Math.§2E§(_loc3_,b2Math.§;v§(_loc9_,_loc4_)));
            var _loc12_:b2Vec2 = b2Math.§4-§(_loc2_,b2Math.§2E§(_loc3_,b2Math.§;v§(_loc10_,_loc4_)));
            if(_loc16_ || param1)
            {
               _loc5_.SetLinearVelocity(_loc11_);
               loop2:
               do
               {
                  _loc6_.SetLinearVelocity(_loc12_);
                  while(true)
                  {
                     _loc5_.§<O§(_loc3_);
                     while(!(_loc17_ && param1))
                     {
                        _loc6_.§<O§(_loc3_);
                        while(_loc16_ || param1)
                        {
                           _loc5_.§3§();
                           do
                           {
                              _loc6_.§3§();
                           }
                           while(_loc17_);
                           
                           if(!(_loc17_ && param1))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               while(_loc17_);
               
            }
            return _loc6_;
         }
      }
      
      public function §7!1§(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§7!d§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§,1§;
            if(!_loc15_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§;!F§);
               if(_loc14_ || param1)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(_loc14_)
               {
                  _loc12_.§;!F§ = _loc13_;
               }
               if(!_loc15_)
               {
                  _loc2_.§,1§ = this.§7!d§;
                  if(_loc15_)
                  {
                     continue;
                  }
                  addr68:
                  this.§7!d§ = _loc2_;
                  if(!(_loc15_ && param1))
                  {
                     §§push((_loc12_ = this).§;!F§);
                     if(_loc14_ || _loc2_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc13_ = §§pop();
                     if(!(_loc15_ && _loc2_))
                     {
                        _loc12_.§;!F§ = _loc13_;
                     }
                     if(!(_loc14_ || this))
                     {
                        continue;
                     }
                  }
               }
               _loc2_.m_body = _loc4_;
               continue;
            }
            §§goto(addr68);
         }
         if(_loc14_ || this)
         {
            _loc3_.§;!F§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§]!8§();
         var _loc6_:b2Vec2 = _loc4_.§]!8§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(!(_loc15_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(!(_loc15_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(_loc14_ || param1)
         {
            _loc3_.§&!`§();
            do
            {
               this.§3§();
            }
            while(!_loc14_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§&v§;
      }
      
      public function §#m§() : Number
      {
         return this.§%!5§;
      }
      
      public function §2!6§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.§7_§ = this.§&v§;
            while(true)
            {
               param1.§8D§ = this.§%!5§;
               while(_loc2_)
               {
                  param1.§>r§.SetV(this.m_sweep.localCenter);
                  if(!(_loc3_ && this))
                  {
                     return;
                     addr63:
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §'y§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§+!`§());
            if(!(_loc3_ && this))
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§+!`§());
               loop1:
               while(true)
               {
                  §§push(true);
                  addr295:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        while(true)
                        {
                           §§push(this.§32§);
                           loop4:
                           while(true)
                           {
                              if(§§pop() != b2_dynamicBody)
                              {
                                 §§goto(addr288);
                              }
                              while(true)
                              {
                                 this.§8[§ = 0;
                                 loop6:
                                 while(true)
                                 {
                                    this.§%!5§ = 0;
                                    loop7:
                                    while(true)
                                    {
                                       this.§&f§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          this.§&v§ = param1.§7_§;
                                          while(true)
                                          {
                                             §§push(this.§&v§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr218:
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      while(_loc4_ || this)
                                                      {
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            this.§&v§ = 1;
                                                            continue loop7;
                                                         }
                                                      }
                                                      continue loop6;
                                                      addr219:
                                                   }
                                                   else
                                                   {
                                                      addr204:
                                                   }
                                                   while(true)
                                                   {
                                                      this.§8[§ = 1 / this.§&v§;
                                                      while(_loc4_)
                                                      {
                                                         continue loop10;
                                                         loop22:
                                                         while(_loc4_ || _loc2_)
                                                         {
                                                            addr203:
                                                            while(true)
                                                            {
                                                               §§push(this.§3! § & §%"§);
                                                               if(!(_loc4_ || param1))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() == 0);
                                                               if(_loc4_ || this)
                                                               {
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     addr71:
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr71);
                                                                        }
                                                                        addr74:
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  addr195:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop22;
                                                                  }
                                                               }
                                                               while(§§pop())
                                                               {
                                                                  continue loop8;
                                                               }
                                                               var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                               if(!_loc3_)
                                                               {
                                                                  addr509:
                                                                  this.m_sweep.localCenter.SetV(param1.§>r§);
                                                                  addr486:
                                                                  addr514:
                                                                  §§push(this.m_sweep);
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§pop().c0.SetV(b2Math.§?!L§(this.m_xf,this.m_sweep.localCenter));
                                                                     addr504:
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this.m_sweep);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§pop().c.SetV(this.m_sweep.c0);
                                                                           addr452:
                                                                           addr451:
                                                                           addr431:
                                                                           addr430:
                                                                           addr428:
                                                                           §§push(this.§45§);
                                                                           §§push(this.§45§.x);
                                                                           §§push(this.m_angularVelocity);
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              addr450:
                                                                              §§push(this.m_sweep.c.y);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr449:
                                                                                 §§push(-(§§pop() - _loc2_.y));
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§pop().x = §§pop() + §§pop();
                                                                           addr453:
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(this.§45§);
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(this.§45§);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(this.m_angularVelocity);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(this.m_sweep);
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop().c);
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(!(_loc3_ && this))
                                                                                                      {
                                                                                                         §§push(_loc2_.x);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  addr403:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr407:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        if(!(_loc3_ && param1))
                                                                                                                        {
                                                                                                                           if(!(_loc4_ || _loc3_))
                                                                                                                           {
                                                                                                                              §§goto(addr504);
                                                                                                                           }
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr453);
                                                                                                                     }
                                                                                                                     §§goto(addr452);
                                                                                                                  }
                                                                                                                  §§goto(addr451);
                                                                                                               }
                                                                                                               §§goto(addr449);
                                                                                                            }
                                                                                                            §§goto(addr403);
                                                                                                         }
                                                                                                         §§goto(addr449);
                                                                                                      }
                                                                                                      §§goto(addr450);
                                                                                                   }
                                                                                                   §§goto(addr403);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr450);
                                                                                          }
                                                                                          §§goto(addr403);
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                    §§goto(addr407);
                                                                                 }
                                                                                 §§goto(addr430);
                                                                              }
                                                                              §§goto(addr428);
                                                                              addr455:
                                                                           }
                                                                           addr472:
                                                                           §§goto(addr472);
                                                                        }
                                                                        §§goto(addr486);
                                                                     }
                                                                     §§goto(addr514);
                                                                  }
                                                                  §§goto(addr509);
                                                               }
                                                               §§goto(addr455);
                                                               §§goto(addr203);
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             addr149:
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                this.§&f§ = 1 / this.§%!5§;
                                                addr163:
                                                if(_loc3_)
                                                {
                                                   addr142:
                                                   while(_loc4_ || _loc2_)
                                                   {
                                                      §§goto(addr149);
                                                      §§goto(addr163);
                                                   }
                                                   continue loop7;
                                                   addr142:
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop8;
                                                }
                                                if(_loc4_ || _loc2_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr42);
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr288);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr282:
                     }
                     return;
                  }
               }
            }
         }
         addr288:
      }
      
      public function §&!`§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(_loc6_)
         {
            this.§&v§ = 0;
            loop0:
            while(true)
            {
               this.§8[§ = 0;
               while(true)
               {
                  this.§%!5§ = 0;
                  while(_loc6_ || _loc2_)
                  {
                     this.§&f§ = 0;
                     loop3:
                     for(; _loc6_ || _loc1_; if(!(_loc5_ && this))
                     {
                        return;
                     })
                     {
                        this.m_sweep.localCenter.§5b§();
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§32§);
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
                                       §§push(Boolean(§§pop()));
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                addr98:
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(this.§32§);
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(b2_kinematicBody);
                                                   if(!(_loc6_ || _loc3_))
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      if(_loc5_ && _loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                                continue loop6;
                                             }
                                          }
                                          loop12:
                                          while(§§pop())
                                          {
                                             if(_loc6_ || this)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop4;
                                             }
                                             if(_loc6_)
                                             {
                                                while(true)
                                                {
                                                   if(true)
                                                   {
                                                      break loop12;
                                                   }
                                                   continue loop5;
                                                }
                                                addr83:
                                             }
                                             else
                                             {
                                                §§goto(addr98);
                                             }
                                          }
                                          var _loc1_:b2Vec2 = b2Vec2.§;!+§(0,0);
                                          var _loc2_:b2Fixture = this.§7!d§;
                                          loop14:
                                          while(true)
                                          {
                                             §§push(Boolean(_loc2_));
                                             if(!_loc5_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§&v§);
                                                      if(_loc6_)
                                                      {
                                                         addr284:
                                                         §§push(0);
                                                         if(!_loc5_)
                                                         {
                                                            addr287:
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr290:
                                                                  this.§8[§ = 1 / this.§&v§;
                                                                  addr481:
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     §§push(_loc1_.x);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop() * this.§8[§);
                                                                     }
                                                                     §§pop().x = §§pop();
                                                                     §§push(_loc1_);
                                                                     §§push(_loc1_.y);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop() * this.§8[§);
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     addr482:
                                                                     §§push(this.§%!5§ > 0);
                                                                     break;
                                                                     addr533:
                                                                     addr523:
                                                                     addr303:
                                                                  }
                                                                  §§push(this);
                                                                  §§push(this.§%!5§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() * this.§9!'§);
                                                                  }
                                                                  §§pop().§%!5§ = §§pop();
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     b2Settings.b2Assert(this.§%!5§ > 0);
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        this.§&f§ = 1 / this.§%!5§;
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr534:
                                                                                 var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    addr738:
                                                                                    this.m_sweep.localCenter.SetV(_loc1_);
                                                                                 }
                                                                                 addr724:
                                                                                 this.m_sweep.c0.SetV(b2Math.§?!L§(this.m_xf,this.m_sweep.localCenter));
                                                                                 addr735:
                                                                                 addr742:
                                                                                 §§push(this.m_sweep);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       §§pop().c.SetV(this.m_sweep.c0);
                                                                                       addr713:
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          addr683:
                                                                                          addr668:
                                                                                          addr666:
                                                                                          §§push(this.§45§);
                                                                                          §§push(this.§45§.x);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr673:
                                                                                             §§push(§§pop() + this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y));
                                                                                          }
                                                                                          §§pop().x = §§pop();
                                                                                          addr684:
                                                                                          §§push(this.§45§);
                                                                                          if(!(_loc5_ && _loc2_))
                                                                                          {
                                                                                             §§push(this.§45§);
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(this.m_angularVelocity);
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(this.m_sweep);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop().c);
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(_loc3_.x);
                                                                                                               if(!(_loc5_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr615:
                                                                                                                     if(!(_loc5_ && this))
                                                                                                                     {
                                                                                                                        if(_loc6_ || _loc1_)
                                                                                                                        {
                                                                                                                           addr630:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr633:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    addr638:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       if(!(_loc5_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ || _loc1_))
                                                                                                                                             {
                                                                                                                                                §§goto(addr735);
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§goto(addr713);
                                                                                                                                       }
                                                                                                                                       §§goto(addr684);
                                                                                                                                    }
                                                                                                                                    §§goto(addr683);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr673);
                                                                                                                  }
                                                                                                                  §§goto(addr630);
                                                                                                               }
                                                                                                               §§goto(addr673);
                                                                                                            }
                                                                                                            §§goto(addr615);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr673);
                                                                                                   }
                                                                                                   §§goto(addr633);
                                                                                                }
                                                                                                §§goto(addr638);
                                                                                             }
                                                                                             §§goto(addr668);
                                                                                          }
                                                                                          §§goto(addr666);
                                                                                       }
                                                                                       §§goto(addr742);
                                                                                    }
                                                                                    §§goto(addr738);
                                                                                 }
                                                                                 §§goto(addr724);
                                                                                 addr326:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr533);
                                                                              }
                                                                           }
                                                                           addr424:
                                                                           while(_loc6_ || _loc1_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break loop26;
                                                                              }
                                                                              §§push(this);
                                                                              §§push(this.§%!5§);
                                                                              if(!(_loc5_ && _loc1_))
                                                                              {
                                                                                 §§push(this.§&v§);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(_loc1_.x);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(_loc1_.x);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc6_ || _loc2_)
                                                                                          {
                                                                                             addr463:
                                                                                             §§push(_loc1_.y);
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                addr475:
                                                                                                §§push(§§pop() + §§pop() * _loc1_.y);
                                                                                             }
                                                                                             §§goto(addr475);
                                                                                          }
                                                                                          addr478:
                                                                                          §§pop().§%!5§ = §§pop() - §§pop() * §§pop();
                                                                                          addr477:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr499:
                                                                                                if(!(_loc6_ || _loc1_))
                                                                                                {
                                                                                                   this.§8[§ = 1;
                                                                                                   §§goto(addr499);
                                                                                                   addr512:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr499:
                                                                                             }
                                                                                             continue loop25;
                                                                                          }
                                                                                          §§goto(addr482);
                                                                                          addr479:
                                                                                       }
                                                                                       §§goto(addr475);
                                                                                    }
                                                                                    §§goto(addr463);
                                                                                 }
                                                                                 §§goto(addr477);
                                                                              }
                                                                              §§goto(addr478);
                                                                           }
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              §§push((this.§3! § & §%"§) == 0);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr405:
                                                                                 if(_loc6_ || _loc1_)
                                                                                 {
                                                                                    addr413:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                this.§%!5§ = 0;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ && this)
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   if(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                continue loop28;
                                                                                             }
                                                                                             §§goto(addr424);
                                                                                             §§goto(addr479);
                                                                                          }
                                                                                          §§goto(addr499);
                                                                                          addr422:
                                                                                       }
                                                                                       break loop14;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop22;
                                                                                    §§goto(addr405);
                                                                                 }
                                                                                 addr493:
                                                                              }
                                                                              §§goto(addr413);
                                                                           }
                                                                           addr488:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr493);
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr523);
                                                                  }
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                            else
                                                            {
                                                               this.§&v§ = 1;
                                                            }
                                                            §§goto(addr512);
                                                         }
                                                      }
                                                      §§goto(addr482);
                                                   }
                                                   §§goto(addr290);
                                                }
                                                else
                                                {
                                                   §§push(_loc2_.§5!2§);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§push(0);
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr482);
                                                         }
                                                         else
                                                         {
                                                            _loc4_ = _loc2_.§2!6§();
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §§push(this);
                                                               §§push(this.§&v§);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop() + _loc4_.§7_§);
                                                               }
                                                               §§pop().§&v§ = §§pop();
                                                            }
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               §§push(_loc1_.x);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(_loc4_.§>r§.x);
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     §§push(§§pop() * _loc4_.§7_§);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§pop().x = §§pop();
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  addr208:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     §§push(_loc1_.y);
                                                                     if(!(_loc5_ && _loc1_))
                                                                     {
                                                                        §§push(_loc4_.§>r§.y);
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * _loc4_.§7_§);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     while(_loc6_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§%!5§);
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§push(§§pop() + _loc4_.§8D§);
                                                                        }
                                                                        §§pop().§%!5§ = §§pop();
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr287);
                                                      }
                                                      §§goto(addr482);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr284);
                                                   }
                                                }
                                                §§goto(addr284);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr488);
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
         §§goto(addr83);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!(_loc4_ && _loc2_))
         {
            §§push(param1.x);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr40:
                  §§push(_loc2_.col2.x);
                  if(_loc5_)
                  {
                     §§push(param1.y);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           addr73:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc5_)
                           {
                              addr78:
                              §§push(param1.x);
                              if(!_loc4_)
                              {
                                 §§goto(addr99);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           addr99:
                           §§goto(addr82);
                        }
                        §§goto(addr90);
                     }
                     addr82:
                     §§push(§§pop() * §§pop());
                     if(!(_loc4_ && this))
                     {
                        addr90:
                        §§push(_loc2_.col2.y);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * param1.y);
                        }
                     }
                     var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                     if(!_loc4_)
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
                        if(_loc5_)
                        {
                           §§push(§§pop() + this.m_xf.position.y);
                        }
                        §§pop().y = §§pop();
                     }
                     while(_loc4_ && this);
                     
                     return _loc3_;
                  }
                  §§goto(addr90);
               }
               §§goto(addr73);
            }
            §§goto(addr78);
         }
         §§goto(addr40);
      }
      
      public function §6y§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§2!b§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§2!'§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§?a§(this.m_xf.R,param1);
      }
      
      public function §5!E§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§45§.x);
         if(_loc3_ || this)
         {
            §§push(this.m_angularVelocity);
            if(_loc3_)
            {
               §§push(param1.y);
               if(!_loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           addr64:
                           §§push(§§pop() - §§pop());
                           §§push(this.§45§.y);
                           if(_loc2_ && _loc3_)
                           {
                           }
                           §§goto(addr104);
                        }
                        addr103:
                        §§push(this.m_angularVelocity);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(param1.x);
                           if(_loc3_)
                           {
                              §§push(§§pop() - this.m_sweep.c.x);
                           }
                        }
                        addr104:
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr103);
                  }
                  §§push(§§pop() * §§pop());
               }
               §§goto(addr103);
            }
            §§goto(addr104);
         }
         §§goto(addr64);
      }
      
      public function §73§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc5_ || _loc2_)
         {
            §§push(param1.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && this))
               {
                  addr45:
                  §§push(_loc2_.col2.x);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(param1.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr100);
                  }
                  addr67:
                  §§goto(addr68);
               }
               addr68:
               §§push(§§pop() + §§pop());
               §§push(_loc2_.col1.y);
               if(_loc5_ || _loc3_)
               {
                  addr78:
                  §§push(param1.x);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc4_)
                     {
                        addr90:
                        §§push(_loc2_.col2.y);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr100:
                           §§push(§§pop() * param1.y);
                        }
                        §§push(§§pop() + §§pop());
                     }
                  }
                  §§goto(addr100);
               }
               var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               if(_loc5_)
               {
                  §§push(_loc3_);
                  §§push(_loc3_.x);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() + this.m_xf.position.x);
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.y);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + this.m_xf.position.y);
                     }
                     §§pop().y = §§pop();
                  }
                  while(!(_loc5_ || _loc3_));
                  
               }
               §§push(§§findproperty(b2Vec2));
               §§push(this.§45§.x);
               if(_loc5_)
               {
                  §§push(this.m_angularVelocity);
                  if(_loc5_)
                  {
                     §§push(_loc3_.y);
                     if(_loc5_)
                     {
                        §§push(this.m_sweep.c.y);
                        if(_loc5_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc4_)
                           {
                              addr144:
                              §§push(§§pop() * §§pop());
                              if(!(_loc4_ && param1))
                              {
                                 §§goto(addr152);
                              }
                              §§goto(addr163);
                           }
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr144);
                  }
                  addr152:
                  §§goto(addr153);
               }
               addr153:
               §§push(§§pop() - §§pop());
               §§push(this.§45§.y);
               if(!(_loc4_ && _loc3_))
               {
                  addr163:
                  §§push(this.m_angularVelocity);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(_loc3_.x);
                     if(!_loc4_)
                     {
                        addr181:
                        §§push(§§pop() + §§pop() * (§§pop() - this.m_sweep.c.x));
                     }
                  }
                  §§goto(addr181);
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
            §§goto(addr78);
         }
         §§goto(addr45);
      }
      
      public function §2!2§() : Number
      {
         return this.§?k§;
      }
      
      public function §<J§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?k§ = param1;
         }
      }
      
      public function §<!c§() : Number
      {
         return this.§"!X§;
      }
      
      public function §[H§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"!X§ = param1;
         }
      }
      
      public function §6!R§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§32§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr133:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr134);
                  }
                  loop2:
                  while(true)
                  {
                     this.§32§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§&!`§();
                        while(!(_loc4_ && param1))
                        {
                           continue loop0;
                           addr63:
                           if(_loc4_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              this.SetAwake(true);
                              loop9:
                              while(!_loc4_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    this.§=q§.§5b§();
                                    loop11:
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          this.§0e§ = 0;
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue loop11;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop9;
                                          }
                                          addr32:
                                          if(!(_loc4_ && param1))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop10;
                                          }
                                          addr91:
                                          addr61:
                                          while(!_loc4_)
                                          {
                                             §§goto(addr63);
                                             §§goto(addr32);
                                          }
                                          while(true)
                                          {
                                             this.§45§.§5b§();
                                             break loop11;
                                          }
                                       }
                                       var _loc2_:b2ContactEdge = this.§2!4§;
                                       while(_loc2_)
                                       {
                                          _loc2_.§4! §.§>0§();
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          _loc2_ = _loc2_.§2B§;
                                       }
                                       return;
                                    }
                                    while(_loc3_ || param1)
                                    {
                                       this.m_angularVelocity = 0;
                                       §§goto(addr61);
                                    }
                                    addr134:
                                    return;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §-V§() : uint
      {
         return this.§32§;
      }
      
      public function §&B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!param1)
            {
               this.§3! § &= ~§`t§;
               if(!(_loc3_ || param1))
               {
                  addr84:
               }
               return;
            }
            if(_loc3_ || _loc2_)
            {
               addr77:
               this.§3! § |= §`t§;
            }
            §§goto(addr84);
         }
         §§goto(addr77);
      }
      
      public function §]^§() : Boolean
      {
         return (this.§3! § & §`t§) == §`t§;
      }
      
      public function §;8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               if(_loc2_ || this)
               {
                  this.§3! § |= §,!f§;
               }
            }
            else
            {
               this.§3! § &= ~§,!f§;
               do
               {
                  this.SetAwake(true);
               }
               while(!(_loc2_ || _loc2_));
               
               if(!(_loc2_ || param1))
               {
                  addr91:
               }
               return;
               addr74:
            }
            §§goto(addr91);
         }
         §§goto(addr74);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§3! § |= §6e§;
               }
            }
            else
            {
               this.§3! § &= ~§6e§;
               while(true)
               {
                  this.§`!5§ = 0;
                  loop1:
                  while(_loc2_)
                  {
                     this.§45§.§5b§();
                     loop2:
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           this.m_angularVelocity = 0;
                           do
                           {
                              if(!_loc3_)
                              {
                                 this.§=q§.§5b§();
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           while(!_loc2_);
                           
                           addr31:
                           break;
                        }
                        addr132:
                        this.§`!5§ = 0;
                        break loop1;
                     }
                     return;
                  }
                  §§goto(addr19);
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr132);
         }
         §§goto(addr31);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§3! § & §6e§) == §6e§;
      }
      
      public function §0E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§3! § &= ~§%"§;
               while(true)
               {
                  if(_loc2_ || this)
                  {
                     continue;
                  }
               }
            }
         }
         while(true)
         {
            this.§3! § |= §%"§;
            §§goto(addr90);
         }
      }
      
      public function §05§() : Boolean
      {
         return (this.§3! § & §%"§) == §%"§;
      }
      
      public function §<!>§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§8!b§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc7_)
         {
            §§push(param1);
            if(_loc7_ || _loc2_)
            {
               if(§§pop() == this.§-<§())
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     return;
                  }
                  addr61:
                  this.§3! § |= §;I§;
                  addr68:
                  _loc2_ = this.m_world.§?l§.§'<§;
                  _loc3_ = this.§7!d§;
                  while(_loc3_)
                  {
                     _loc3_.§6K§(_loc2_,this.m_xf);
                     if(!_loc7_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§,1§;
                  }
               }
               else
               {
                  addr53:
                  if(param1)
                  {
                     if(_loc7_ || _loc3_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr68);
                  }
                  else
                  {
                     this.§3! § &= ~§;I§;
                     _loc2_ = this.m_world.§?l§.§'<§;
                     _loc3_ = this.§7!d§;
                     if(_loc7_ || this)
                     {
                        while(_loc3_)
                        {
                           _loc3_.§[!3§(_loc2_);
                           if(_loc6_)
                           {
                              break;
                           }
                           _loc3_ = _loc3_.§,1§;
                        }
                     }
                     _loc4_ = this.§2!4§;
                     if(!(_loc6_ && param1))
                     {
                        while(_loc4_)
                        {
                           _loc5_ = _loc4_;
                           _loc4_ = _loc4_.§2B§;
                           if(_loc7_)
                           {
                              this.m_world.§?l§.§"P§(_loc5_.§4! §);
                           }
                        }
                        if(_loc7_)
                        {
                           this.§2!4§ = null;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr61);
      }
      
      public function §-<§() : Boolean
      {
         return (this.§3! § & §;I§) == §;I§;
      }
      
      public function §,$§() : Boolean
      {
         return (this.§3! § & §,!f§) == §,!f§;
      }
      
      public function §5g§() : b2Fixture
      {
         return this.§7!d§;
      }
      
      public function §&§() : b2JointEdge
      {
         return this.§8>§;
      }
      
      public function §8!O§() : b2ControllerEdge
      {
         return this.§%!V§;
      }
      
      public function §[7§() : b2ContactEdge
      {
         return this.§2!4§;
      }
      
      public function §70§() : b2Body
      {
         return this.§,1§;
      }
      
      public function GetUserData() : *
      {
         return this.§8!B§;
      }
      
      public function §-!M§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!B§ = param1;
         }
      }
      
      public function §[Y§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §3§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §7!2§;
         if(_loc6_ || this)
         {
            §§push(_loc1_.R);
            if(_loc6_ || _loc2_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr44:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(_loc6_)
            {
               §§push(_loc1_.position);
               if(_loc6_ || this)
               {
                  §§push(this.m_sweep);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(§§pop().c0);
                     if(!_loc7_)
                     {
                        §§push(§§pop().x);
                        if(!_loc7_)
                        {
                           §§push(_loc2_.col1);
                           if(!(_loc7_ && _loc1_))
                           {
                              §§push(§§pop().x);
                              if(_loc6_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc7_ && _loc1_))
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
                                                if(!_loc7_)
                                                {
                                                   addr132:
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc7_ && _loc1_))
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr156:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(!_loc7_)
                                                            {
                                                               addr161:
                                                               §§push(_loc2_.col1.y);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  addr169:
                                                                  §§push(_loc3_.x);
                                                                  if(!(_loc7_ && _loc1_))
                                                                  {
                                                                     addr178:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        addr181:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr189:
                                                                           §§push(§§pop() + §§pop() * _loc3_.y);
                                                                        }
                                                                        §§goto(addr189);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  §§goto(addr189);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            addr191:
                                                            §§pop().y = §§pop() - §§pop();
                                                            §§goto(addr202);
                                                         }
                                                         addr202:
                                                         var _loc5_:§8!b§ = this.m_world.§?l§.§'<§;
                                                         _loc4_ = this.§7!d§;
                                                         while(_loc4_)
                                                         {
                                                            _loc4_.§5X§(_loc5_,_loc1_,this.m_xf);
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            _loc4_ = _loc4_.§,1§;
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr181);
                                                }
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr178);
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr178);
                     }
                  }
               }
               §§goto(addr156);
            }
            §§goto(addr178);
         }
         §§goto(addr44);
      }
      
      b2internal function §`!e§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.m_xf);
            if(_loc3_ || this)
            {
               §§push(§§pop().R);
               if(!(_loc4_ && _loc3_))
               {
                  §§pop().Set(this.m_sweep.a);
                  addr47:
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
                     addr224:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr226:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr227:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr228:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr230:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr231:
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
                                             addr243:
                                             addr139:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr244:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr246:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                             }
                                             if(_loc4_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             if(_loc4_ && this)
                                             {
                                                continue loop6;
                                             }
                                             §§push(_loc2_.x);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc4_)
                                                {
                                                   addr165:
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(_loc1_.col2);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(!_loc4_)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§push(_loc2_.y);
                                                               if(!_loc4_)
                                                               {
                                                                  addr191:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr194:
                                                                     §§push(§§pop() - (§§pop() + §§pop()));
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           return;
                                                                           addr210:
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr247:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr248:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                     }
                                                                     addr247:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr246);
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr244);
                                                            }
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr243);
                                                      }
                                                   }
                                                   §§goto(addr248);
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr191);
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr210);
            }
         }
         §§goto(addr47);
      }
      
      b2internal function §>b§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§32§);
            if(_loc4_)
            {
               §§push(b2_dynamicBody);
               if(!_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                     if(_loc4_ || param1)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc3_)
                        {
                           addr46:
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              if(_loc4_ || this)
                              {
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    §§goto(addr75);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr81);
                           }
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr46);
               }
               addr75:
               §§goto(addr73);
            }
            addr73:
            §§push(param1.§32§ == b2_dynamicBody);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  addr81:
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     §§goto(addr84);
                  }
               }
               addr84:
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr89);
                  }
               }
               §§goto(addr89);
            }
            return §§pop();
         }
         addr89:
         var _loc2_:b2JointEdge = this.§8>§;
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc3_)
            {
               break;
            }
            if(!§§pop())
            {
               §§push(true);
               break;
            }
            if(_loc2_.§3z§ == param1)
            {
               if(!_loc3_)
               {
                  §§push(_loc2_.§7-§.§1s§);
                  if(_loc4_)
                  {
                     if(§§pop() != false)
                     {
                        continue;
                     }
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     §§push(false);
                     if(!(_loc4_ || _loc2_))
                     {
                        break;
                     }
                  }
                  return §§pop();
               }
            }
         }
         return §§pop();
      }
      
      b2internal function §6!V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.m_sweep);
            loop0:
            while(true)
            {
               §§push(param1);
               addr97:
               while(true)
               {
                  §§pop().§6!V§(§§pop());
                  addr99:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        addr93:
                        while(true)
                        {
                           §§push(this.m_sweep);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
   }
}
