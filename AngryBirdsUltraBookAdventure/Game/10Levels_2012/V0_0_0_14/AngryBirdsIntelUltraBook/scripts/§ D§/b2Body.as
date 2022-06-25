package § D§
{
   import §!!t§.b2ControllerEdge;
   import §&!-§.§>D§;
   import §0!'§.b2EdgeShape;
   import §0!'§.b2MassData;
   import §0!'§.b2Shape;
   import §7a§.b2Contact;
   import §7a§.b2ContactEdge;
   import §8>§.b2Mat22;
   import §8>§.b2Math;
   import §8>§.b2Sweep;
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   import §[!N§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §;4§:b2Transform;
      
      b2internal static var §]!i§:uint = 1;
      
      b2internal static var §5D§:uint = 2;
      
      b2internal static var §=7§:uint = 4;
      
      b2internal static var §08§:uint = 8;
      
      b2internal static var §"O§:uint = 16;
      
      b2internal static var §?z§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §;4§ = new b2Transform();
            loop0:
            while(true)
            {
               §]!i§ = 1;
               loop1:
               while(true)
               {
                  §5D§ = 2;
                  loop2:
                  while(true)
                  {
                     §=7§ = 4;
                     loop3:
                     while(!_loc2_)
                     {
                        §08§ = 8;
                        loop4:
                        while(_loc1_)
                        {
                           §"O§ = 16;
                           loop5:
                           while(!_loc2_)
                           {
                              §?z§ = 32;
                              while(true)
                              {
                                 b2_staticBody = 0;
                                 addr67:
                                 while(_loc1_)
                                 {
                                 }
                                 continue loop4;
                                 addr34:
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          return;
                                          addr55:
                                       }
                                       continue loop3;
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            b2_kinematicBody = 1;
            while(!_loc2_)
            {
               b2_dynamicBody = 2;
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr34);
            }
            §§goto(addr67);
         }
         §§goto(addr55);
      }
      
      b2internal var § !<§:uint;
      
      b2internal var §"!1§:int;
      
      b2internal var §0!b§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §9!§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §2!§:b2Vec2;
      
      b2internal var §`!R§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §4!7§:b2Body;
      
      b2internal var §7n§:b2Body;
      
      b2internal var §8!@§:b2Fixture;
      
      b2internal var §+!y§:int;
      
      b2internal var §[U§:b2ControllerEdge;
      
      b2internal var §7,§:int;
      
      b2internal var §>w§:b2JointEdge;
      
      b2internal var §#!u§:b2ContactEdge;
      
      b2internal var §#K§:Number;
      
      b2internal var §1!X§:Number;
      
      b2internal var §0!2§:Number;
      
      b2internal var §^!B§:Number;
      
      b2internal var §1!Y§:Number;
      
      b2internal var § u§:Number;
      
      b2internal var §&! §:Number;
      
      b2internal var § !"§:Number;
      
      private var §>a§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.m_xf = new b2Transform();
            loop0:
            while(true)
            {
               this.m_sweep = new b2Sweep();
               if(_loc6_ || param1)
               {
                  if(_loc7_)
                  {
                     continue;
                  }
                  this.§9!§ = new b2Vec2();
                  loop1:
                  while(true)
                  {
                     this.§2!§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        loop3:
                        while(true)
                        {
                           this.§ !<§ = 0;
                           loop4:
                           while(true)
                           {
                              §§push(param1.§5!f§);
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(!_loc7_)
                                    {
                                       this.§ !<§ |= b2internal::08;
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop1;
                                    addr240:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§?!#§);
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop10:
                                          while(!_loc7_)
                                          {
                                             this.§ !<§ |= b2internal::"O;
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param1.§+!&§);
                                                      loop13:
                                                      for(; _loc6_; loop16:
                                                      while(_loc6_ || this)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(_loc6_)
                                                            {
                                                               this.§ !<§ |= b2internal::5D;
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  break loop0;
                                                               }
                                                               addr130:
                                                               if(_loc7_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(this.m_xf);
                                                               while(true)
                                                               {
                                                                  §§pop().position.SetV(param1.position);
                                                                  if(_loc7_ && param2)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  §§push(this.m_xf);
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr304:
                                                                  addr305:
                                                                  var _loc3_:b2Mat22 = §§pop().R;
                                                                  var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§push(this.m_sweep);
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.col1);
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.x);
                                                                                 loop30:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    loop31:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.col2);
                                                                                       loop32:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          loop33:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_.y);
                                                                                             loop34:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   loop36:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.m_sweep);
                                                                                                         loop38:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().c);
                                                                                                            loop39:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.col1);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§pop().y);
                                                                                                               loop40:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_.x);
                                                                                                                  loop41:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc7_ && param2))
                                                                                                                     {
                                                                                                                        §§push(_loc3_.col2);
                                                                                                                        if(!(_loc6_ || _loc3_))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop().y);
                                                                                                                        while(_loc6_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.y);
                                                                                                                           if(_loc7_ && this)
                                                                                                                           {
                                                                                                                              continue loop34;
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                           addr735:
                                                                                                                           if(!(_loc6_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop54:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              addr744:
                                                                                                                              loop55:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.m_sweep);
                                                                                                                                 loop56:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().c);
                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                    {
                                                                                                                                       addr621:
                                                                                                                                       §§push(this.m_sweep);
                                                                                                                                       if(_loc6_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().c);
                                                                                                                                          if(!(_loc7_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue loop29;
                                                                                                                                                   }
                                                                                                                                                   addr655:
                                                                                                                                                   §§push(this.m_xf);
                                                                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().position);
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                         if(!(_loc7_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc7_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr697:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop36;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop54;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                               continue loop33;
                                                                                                                                                            }
                                                                                                                                                            continue loop41;
                                                                                                                                                         }
                                                                                                                                                         while(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr735);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr796);
                                                                                                                                                         addr733:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr733);
                                                                                                                                                      }
                                                                                                                                                      addr732:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr732);
                                                                                                                                                      §§goto(addr655);
                                                                                                                                                   }
                                                                                                                                                   addr731:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr731);
                                                                                                                                                      §§push(this.m_xf);
                                                                                                                                                   }
                                                                                                                                                   addr797:
                                                                                                                                                   while(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      loop45:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.m_sweep);
                                                                                                                                                         addr711:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            break loop56;
                                                                                                                                                            addr593:
                                                                                                                                                            if(_loc7_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               continue loop38;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               continue loop26;
                                                                                                                                                            }
                                                                                                                                                            §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                                            loop58:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§>w§ = null;
                                                                                                                                                               loop59:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§[U§ = null;
                                                                                                                                                                  loop60:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§#!u§ = null;
                                                                                                                                                                     loop61:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.§7,§ = 0;
                                                                                                                                                                        loop62:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.§4!7§ = null;
                                                                                                                                                                           loop63:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.§7n§ = null;
                                                                                                                                                                              loop64:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§9!§.SetV(param1.§^!h§);
                                                                                                                                                                                 loop65:
                                                                                                                                                                                 while(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.m_angularVelocity = param1.§=w§;
                                                                                                                                                                                    loop66:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§ u§ = param1.§#d§;
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop56;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc6_ || param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          this.§&! § = param1.§"v§;
                                                                                                                                                                                          loop68:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§2!§.Set(0,0);
                                                                                                                                                                                             addr521:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§`!R§ = 0;
                                                                                                                                                                                                loop70:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§ !"§ = 0;
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§"!1§ = param1.type;
                                                                                                                                                                                                      addr502:
                                                                                                                                                                                                      while(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(this.§"!1§ == b2_dynamicBody)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop62;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr445:
                                                                                                                                                                                                         this.§#K§ = 0;
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§1!X§ = 0;
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop66;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop70;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop66;
                                                                                                                                                                                                               addr429:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop62;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr489:
                                                                                                                                                                                                      continue loop58;
                                                                                                                                                                                                      while(_loc6_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§1!X§ = 1;
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop60;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop68;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr352:
                                                                                                                                                                                          if(_loc6_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§+!y§ = 0;
                                                                                                                                                                                             addr359:
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                loop80:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc6_ || param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                  addr389:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.§^!B§ = 0;
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop61;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop64;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop45;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop65;
                                                                                                                                                                                                         addr420:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr352);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr521);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr445);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr429);
                                                                                                                                                                                                      §§goto(addr502);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop79:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            this.§8!@§ = null;
                                                                                                                                                                                                            continue loop80;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr380:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.§>a§ = param1.§1o§;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop79;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr457);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr489);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                return;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop59;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop63;
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
                                                                                                                                                   continue loop31;
                                                                                                                                                }
                                                                                                                                                continue loop40;
                                                                                                                                                addr725:
                                                                                                                                             }
                                                                                                                                             §§goto(addr697);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr725);
                                                                                                                                          }
                                                                                                                                          addr724:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr724);
                                                                                                                                          §§goto(addr621);
                                                                                                                                       }
                                                                                                                                       addr723:
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 while(!_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop27;
                                                                                                                                    }
                                                                                                                                    §§goto(addr723);
                                                                                                                                    §§push(this.m_sweep);
                                                                                                                                 }
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop35;
                                                                                                                     }
                                                                                                                     §§goto(addr797);
                                                                                                                  }
                                                                                                                  continue loop32;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop28;
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
                                                                  §§goto(addr744);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr220);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr240);
                                                               }
                                                            }
                                                            addr218:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1.§=r§);
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               continue loop5;
                                                            }
                                                            continue loop16;
                                                         }
                                                         continue loop5;
                                                      })
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop4;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1.§+!T§);
                                                            continue loop13;
                                                            addr220:
                                                         }
                                                      }
                                                      continue loop9;
                                                   }
                                                   addr197:
                                                }
                                                break;
                                                if(_loc7_ && param1)
                                                {
                                                   continue;
                                                }
                                                if(_loc7_)
                                                {
                                                   continue loop10;
                                                }
                                                if(false)
                                                {
                                                   §§goto(addr46);
                                                }
                                                §§goto(addr292);
                                                §§push(this.m_sweep);
                                             }
                                             §§goto(addr248);
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr197);
                                    }
                                 }
                                 if(_loc7_ && param1)
                                 {
                                    continue;
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr156);
                                 }
                                 §§goto(addr119);
                              }
                           }
                        }
                     }
                  }
               }
               break;
            }
            §§goto(addr304);
            §§push(this.m_xf);
         }
         §§goto(addr212);
      }
      
      private function §?,§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.§]l§().y,param2.§]l§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§<!G§(_loc5_,param2.§]l§());
         _loc6_ = b2Math.§>G§(_loc6_,param2.§'!=§());
         _loc6_ = b2Math.§<!G§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§-!>§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§-!>§(param1.§]l§(),param2.§]l§())).Normalize();
         var _loc8_:* = b2Math.§1!P§(param1.§]l§(),param2.§'!=§()) > 0;
         if(_loc10_ || param2)
         {
            param1.§&!e§(param2,_loc6_,_loc7_,_loc8_);
            do
            {
               param2.§#!§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(!_loc10_);
            
         }
         return _loc4_;
      }
      
      public function §;! §(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§>D§ = null;
         if(!_loc7_)
         {
            if(this.m_world.§5!Y§() == true)
            {
               if(_loc6_ || param1)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(!(_loc7_ && _loc2_))
            {
               _loc2_.§5=§(this,this.m_xf,param1);
               if(_loc6_ || param1)
               {
                  if(this.§ !<§ & b2internal::?z)
                  {
                     if(!(_loc7_ && this))
                     {
                        §§push(this.m_world);
                        if(!(_loc7_ && this))
                        {
                           _loc3_ = §§pop().§<!7§.§0G§;
                           if(!_loc7_)
                           {
                              _loc2_.§2!9§(_loc3_,this.m_xf);
                              addr101:
                              _loc2_.§7n§ = this.§8!@§;
                              if(_loc6_)
                              {
                                 this.§8!@§ = _loc2_;
                                 if(_loc6_)
                                 {
                                    addr112:
                                    var _loc4_:*;
                                    §§push((_loc4_ = this).§+!y§);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!(_loc7_ && param1))
                                    {
                                       _loc4_.§+!y§ = _loc5_;
                                    }
                                    if(!(_loc7_ && param1))
                                    {
                                       _loc2_.m_body = this;
                                       loop4:
                                       while(true)
                                       {
                                          if(_loc2_.§&-§ > 0)
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                if(_loc7_ && this)
                                                {
                                                   continue loop4;
                                                }
                                                while(true)
                                                {
                                                   this.§[!;§();
                                                   addr196:
                                                   while(true)
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             addr187:
                                          }
                                          while(true)
                                          {
                                             §§push(this.m_world);
                                             §§goto(addr148);
                                          }
                                       }
                                       addr200:
                                       addr139:
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr101);
                        }
                        addr148:
                        while(true)
                        {
                           §§push(this.m_world.§ !<§);
                           if(_loc6_ || this)
                           {
                              §§push(§§pop() | b2World.§#!p§);
                           }
                           §§pop().§ !<§ = §§pop();
                           if(_loc6_ || _loc2_)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr196);
                           continue loop3;
                        }
                        return _loc2_;
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr101);
               }
               §§goto(addr112);
            }
            §§goto(addr139);
         }
         addr33:
         return null;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.shape = param1;
         }
         do
         {
            _loc3_.density = param2;
         }
         while(_loc5_);
         
         return this.§;! §(_loc3_);
      }
      
      public function §5!u§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§>D§ = null;
         if(_loc12_ || _loc2_)
         {
            if(this.m_world.§5!Y§() == true)
            {
               if(_loc12_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§8!@§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§7n§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            if(_loc12_)
            {
               if(!_loc3_)
               {
                  this.§8!@§ = param1.§7n§;
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        _loc4_ = true;
                        if(!_loc13_)
                        {
                           if(_loc13_)
                           {
                              break;
                           }
                           if(_loc12_ || _loc3_)
                           {
                              if(true)
                              {
                                 break loop0;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 _loc3_.§7n§ = param1.§7n§;
                                 if(!(_loc12_ || _loc3_))
                                 {
                                    break loop0;
                                 }
                                 while(true)
                                 {
                                 }
                              }
                              addr91:
                           }
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        break loop0;
                     }
                  }
               }
               §§goto(addr91);
            }
            §§goto(addr102);
         }
         var _loc5_:b2ContactEdge = this.§#!u§;
         if(!_loc13_)
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§58§;
               _loc5_ = _loc5_.§0e§;
               _loc7_ = _loc6_.§5J§();
               _loc8_ = _loc6_.§@!X§();
               if(_loc12_)
               {
                  §§push(param1 == _loc7_);
                  if(_loc12_ || this)
                  {
                     if(!§§pop())
                     {
                        if(_loc12_)
                        {
                           §§pop();
                           if(_loc13_ && this)
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
                        this.m_world.§<!7§.§"L§(_loc6_);
                     }
                  }
               }
            }
            if(_loc12_ || _loc2_)
            {
               if(this.§ !<§ & b2internal::?z)
               {
                  if(_loc12_)
                  {
                     addr199:
                     _loc9_ = this.m_world.§<!7§.§0G§;
                     if(_loc12_)
                     {
                        param1.§"!=§(_loc9_);
                        addr210:
                        param1.§"L§();
                        if(!(_loc13_ && _loc2_))
                        {
                           param1.m_body = null;
                           if(_loc12_ || _loc3_)
                           {
                              param1.§7n§ = null;
                              if(_loc12_)
                              {
                                 addr244:
                                 var _loc10_:*;
                                 §§push((_loc10_ = this).§+!y§);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc11_:* = §§pop();
                                 if(_loc12_)
                                 {
                                    _loc10_.§+!y§ = _loc11_;
                                 }
                                 if(!_loc12_)
                                 {
                                 }
                                 §§goto(addr263);
                              }
                              this.§[!;§();
                              addr263:
                              return;
                           }
                        }
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr244);
               }
               §§goto(addr210);
            }
            §§goto(addr244);
         }
         §§goto(addr199);
      }
      
      public function §4v§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(_loc9_)
         {
            if(this.m_world.§5!Y§() == true)
            {
               if(!(_loc8_ && _loc3_))
               {
                  return;
               }
               while(true)
               {
               }
               addr81:
            }
            while(true)
            {
               §§push(this.m_xf);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop().R);
                  if(_loc9_ || param2)
                  {
                     §§pop().Set(param2);
                     while(true)
                     {
                        if(_loc9_)
                        {
                           §§push(this.m_xf);
                           if(_loc8_ && param1)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr81);
                     }
                     addr84:
                     §§push(§§pop().R);
                  }
                  var _loc4_:b2Mat22 = §§pop();
                  var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                  if(!_loc8_)
                  {
                     §§push(this.m_sweep);
                     while(true)
                     {
                        §§push(§§pop().c);
                        loop4:
                        while(true)
                        {
                           §§push(_loc4_.col1);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().x);
                              loop6:
                              while(true)
                              {
                                 §§push(_loc5_.x);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_)
                                    {
                                       §§push(_loc4_.col2);
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc8_)
                                          {
                                             addr325:
                                             §§push(_loc5_.y);
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                             }
                                             addr325:
                                          }
                                          addr326:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                          }
                                       }
                                       addr320:
                                    }
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
                                             while(!_loc8_)
                                             {
                                                §§push(_loc4_.col1);
                                                if(!_loc9_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(§§pop().y);
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§push(_loc5_.x);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(_loc4_.col2);
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(_loc5_.y);
                                                                  if(_loc9_)
                                                                  {
                                                                     addr288:
                                                                     §§push(§§pop() * §§pop());
                                                                     loop15:
                                                                     while(_loc9_ || param1)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           if(!(_loc8_ && param2))
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(this.m_sweep);
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 addr215:
                                                                                 while(_loc9_ || param1)
                                                                                 {
                                                                                    §§push(this.m_sweep);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       addr225:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          if(!(_loc9_ || param2))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(this.m_xf);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().position);
                                                                                             addr238:
                                                                                             addr153:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr239:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   continue loop16;
                                                                                                }
                                                                                             }
                                                                                             §§push(this.m_xf);
                                                                                             if(!(_loc9_ || param2))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().position);
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(!(_loc8_ && this))
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc9_ || param1))
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr203:
                                                                                                      if(!(_loc8_ && param2))
                                                                                                      {
                                                                                                         §§push(this.m_sweep);
                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc8_ && param1)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            §§pop().c0.SetV(this.m_sweep.c);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.m_sweep);
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     continue loop13;
                                                                                                                     addr123:
                                                                                                                  }
                                                                                                                  §§push(this.m_sweep);
                                                                                                               }
                                                                                                               addr121:
                                                                                                            }
                                                                                                            var _loc6_:§>D§ = this.m_world.§<!7§.§0G§;
                                                                                                            _loc3_ = this.§8!@§;
                                                                                                            §§goto(addr340);
                                                                                                         }
                                                                                                         §§goto(addr331);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr203);
                                                                                                         }
                                                                                                         addr331:
                                                                                                         §§pop().a0 = this.m_sweep.a = param2;
                                                                                                         addr340:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr383);
                                                                                                            }
                                                                                                            _loc3_.§^o§(_loc6_,this.m_xf,this.m_xf);
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc3_ = _loc3_.§7n§;
                                                                                                         }
                                                                                                         this.m_world.§<!7§.§4!K§();
                                                                                                         addr383:
                                                                                                         return;
                                                                                                         addr250:
                                                                                                      }
                                                                                                      §§goto(addr123);
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr238);
                                                                                             }
                                                                                             §§goto(addr239);
                                                                                          }
                                                                                       }
                                                                                       addr138:
                                                                                       §§push(this.m_sweep);
                                                                                       continue loop6;
                                                                                       if(_loc8_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop().c);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§goto(addr153);
                                                                                          }
                                                                                          §§goto(addr191);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr225);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr340);
                                                                           }
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     continue loop7;
                                                                     addr288:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr325);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr320);
                                                         }
                                                      }
                                                      §§goto(addr326);
                                                      addr274:
                                                   }
                                                   §§goto(addr288);
                                                }
                                                §§goto(addr274);
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
                  §§goto(addr121);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr43);
      }
      
      public function §3J§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4v§(param1.position,param1.GetAngle());
         }
      }
      
      public function §+!C§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §=!F§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4v§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function § !W§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4v§(this.GetPosition(),param1);
         }
      }
      
      public function §=,§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §4!4§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§"!1§ != b2_staticBody)
            {
               do
               {
                  this.§9!§.SetV(param1);
               }
               while(_loc2_);
               
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§9!§;
      }
      
      public function §09§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§"!1§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.m_angularVelocity = param1;
                  if(!(_loc2_ && _loc3_))
                  {
                     break;
                  }
                  addr58:
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
         §§goto(addr58);
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §]!<§() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.type = this.§0!@§();
         }
         while(true)
         {
            _loc1_.§+!&§ = (this.§ !<§ & b2internal::=7) == b2internal::=7;
            loop1:
            while(true)
            {
               _loc1_.angle = this.GetAngle();
               loop2:
               while(true)
               {
                  _loc1_.§"v§ = this.§&! §;
                  loop3:
                  while(true)
                  {
                     _loc1_.§=w§ = this.m_angularVelocity;
                     loop4:
                     while(true)
                     {
                        _loc1_.§?!#§ = (this.§ !<§ & b2internal::"O) == b2internal::"O;
                        loop5:
                        for(; !_loc2_; if(_loc2_ && this)
                        {
                           continue;
                        },if(_loc2_)
                        {
                           continue loop3;
                        },_loc1_.§^!h§.SetV(this.GetLinearVelocity()),§§goto(addr82))
                        {
                           _loc1_.§5!f§ = (this.§ !<§ & b2internal::08) == b2internal::08;
                           while(true)
                           {
                              _loc1_.§+!T§ = (this.§ !<§ & b2internal::5D) == b2internal::5D;
                              loop7:
                              while(true)
                              {
                                 _loc1_.§#d§ = this.§ u§;
                                 loop8:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       continue loop5;
                                    }
                                    continue loop7;
                                    addr82:
                                    while(true)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          continue loop4;
                                       }
                                       continue loop8;
                                       addr41:
                                       if(!(_loc2_ && this))
                                       {
                                          continue loop1;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              addr68:
                              while(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.§1o§ = this.GetUserData();
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr41);
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            if(!(_loc2_ && _loc2_))
            {
               return _loc1_;
            }
         }
      }
      
      public function §7q§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§"!1§ != b2_dynamicBody)
            {
               if(_loc3_ || param2)
               {
                  return;
               }
               while(true)
               {
                  addr176:
                  loop2:
                  while(!(_loc4_ && _loc3_))
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        loop12:
                        while(true)
                        {
                           addr148:
                           while(true)
                           {
                              §§push(this.§2!§);
                              loop4:
                              while(true)
                              {
                                 §§push(this.§2!§);
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
                                             loop9:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(this.§2!§);
                                                   if(_loc3_ || param1)
                                                   {
                                                      §§push(this.§2!§);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc3_ || param2)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(param1.y);
                                                            if(_loc4_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().y = §§pop();
                                                         for(; _loc3_; §§pop().§`!R§ = §§pop(),if(!(_loc4_ && this))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               return;
                                                            }
                                                            continue loop9;
                                                         })
                                                         {
                                                            §§push(this);
                                                            §§push(this.§`!R§);
                                                            if(_loc4_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(param2.x);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               §§push(this.m_sweep.c.x);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(param1.y);
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr59:
                                                                           §§push(param2.y);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr68:
                                                                              §§push(this.m_sweep.c.y);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr96:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    addr84:
                                                                                    §§push(§§pop() * param1.x);
                                                                                 }
                                                                                 §§push(§§pop() + (§§pop() - §§pop()));
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           §§goto(addr84);
                                                                        }
                                                                        §§goto(addr96);
                                                                     }
                                                                  }
                                                                  §§goto(addr59);
                                                               }
                                                               §§goto(addr68);
                                                            }
                                                            §§goto(addr59);
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop12;
                                             }
                                             continue loop12;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop12;
                           }
                        }
                     }
                  }
               }
               addr199:
            }
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  §§goto(addr176);
               }
               §§goto(addr148);
               §§goto(addr199);
            }
         }
         §§goto(addr183);
      }
      
      public function § do§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§"!1§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                           this.SetAwake(true);
                        }
                     }
                     loop1:
                     while(!(_loc2_ && this))
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§`!R§);
                           if(_loc3_ || param1)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§`!R§ = §§pop();
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                     }
                     continue;
                  }
                  §§goto(addr29);
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§"!1§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr201:
                        while(true)
                        {
                        }
                     }
                     addr198:
                  }
                  while(true)
                  {
                     §§push(this.§9!§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§9!§);
                        addr182:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr183:
                           while(true)
                           {
                              §§push(this.§1!X§);
                              addr185:
                              while(true)
                              {
                                 §§push(param1.x);
                                 addr187:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr188:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr189:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr190:
                                          while(!_loc3_)
                                          {
                                             continue loop4;
                                          }
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
            §§goto(addr206);
         }
         §§goto(addr207);
      }
      
      public function §2!f§(param1:Function) : b2Body
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
         var _loc4_:b2Vec2 = this.§=,§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§?!I§(this.§]!<§());
         var _loc8_:b2Fixture = _loc5_.§8!@§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc17_)
               {
                  _loc5_.§[!;§();
                  if(_loc17_)
                  {
                     break;
                  }
               }
               addr186:
               var _loc9_:b2Vec2 = _loc5_.§=,§();
               var _loc10_:b2Vec2 = _loc6_.§=,§();
               var _loc11_:b2Vec2 = b2Math.§-!>§(_loc2_,b2Math.§#J§(_loc3_,b2Math.§>G§(_loc9_,_loc4_)));
               var _loc12_:b2Vec2 = b2Math.§-!>§(_loc2_,b2Math.§#J§(_loc3_,b2Math.§>G§(_loc10_,_loc4_)));
               if(_loc17_ || _loc3_)
               {
                  _loc5_.SetLinearVelocity(_loc11_);
                  while(true)
                  {
                     _loc6_.SetLinearVelocity(_loc12_);
                     addr283:
                     while(true)
                     {
                        _loc5_.§09§(_loc3_);
                     }
                  }
                  addr287:
               }
               loop3:
               while(true)
               {
                  _loc6_.§09§(_loc3_);
                  while(true)
                  {
                     if(_loc17_ || _loc3_)
                     {
                        if(!_loc16_)
                        {
                           if(_loc17_)
                           {
                              _loc5_.§;!L§();
                              continue;
                           }
                           §§goto(addr287);
                        }
                        break;
                     }
                     continue loop3;
                  }
                  §§goto(addr283);
               }
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§7n§;
                  continue;
               }
               if(_loc16_)
               {
                  break;
               }
               _loc13_ = _loc8_.§7n§;
               if(!_loc16_)
               {
                  if(_loc7_)
                  {
                     if(_loc17_ || param1)
                     {
                        _loc7_.§7n§ = _loc13_;
                        if(_loc17_)
                        {
                           addr92:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§+!y§);
                           if(!_loc16_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(_loc17_ || this)
                           {
                              _loc14_.§+!y§ = _loc15_;
                           }
                           if(!(_loc16_ && param1))
                           {
                              _loc8_.§7n§ = _loc6_.§8!@§;
                              if(!_loc16_)
                              {
                                 _loc6_.§8!@§ = _loc8_;
                                 if(!_loc16_)
                                 {
                                    addr140:
                                    §§push((_loc14_ = _loc6_).§+!y§);
                                    if(!(_loc16_ && this))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc15_ = §§pop();
                                    if(_loc17_)
                                    {
                                       _loc14_.§+!y§ = _loc15_;
                                    }
                                    if(!_loc16_)
                                    {
                                       _loc8_.m_body = _loc6_;
                                    }
                                 }
                              }
                              §§goto(addr140);
                           }
                           addr86:
                        }
                        _loc8_ = _loc13_;
                        continue;
                     }
                     §§goto(addr86);
                  }
                  else
                  {
                     _loc5_.§8!@§ = _loc13_;
                     if(_loc17_)
                     {
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr140);
               }
               §§goto(addr92);
            }
         }
         _loc6_.§[!;§();
         §§goto(addr186);
      }
      
      public function §0r§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§8!@§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§7n§;
            if(_loc15_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§+!y§);
               if(!_loc14_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!(_loc14_ && this))
               {
                  _loc12_.§+!y§ = _loc13_;
               }
               if(!_loc15_)
               {
                  continue;
               }
               _loc2_.§7n§ = this.§8!@§;
               if(_loc15_)
               {
                  this.§8!@§ = _loc2_;
                  if(!(_loc15_ || _loc2_))
                  {
                     continue;
                  }
               }
            }
            §§push((_loc12_ = this).§+!y§);
            if(!(_loc14_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            _loc13_ = §§pop();
            if(!_loc14_)
            {
               _loc12_.§+!y§ = _loc13_;
            }
            if(!(_loc14_ && _loc2_))
            {
               _loc2_.m_body = _loc4_;
            }
         }
         if(_loc15_ || _loc2_)
         {
            _loc3_.§+!y§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§=,§();
         var _loc6_:b2Vec2 = _loc4_.§=,§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(!(_loc14_ && _loc2_))
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
            _loc3_.§[!;§();
            do
            {
               this.§;!L§();
            }
            while(_loc14_ && _loc2_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§#K§;
      }
      
      public function §7r§() : Number
      {
         return this.§0!2§;
      }
      
      public function § !^§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            param1.§+!<§ = this.§#K§;
            while(true)
            {
               param1.§+j§ = this.§0!2§;
               §§goto(addr76);
            }
         }
         addr76:
         while(true)
         {
            param1.center.SetV(this.m_sweep.localCenter);
            if(!(_loc2_ && this))
            {
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §?S§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§5!Y§());
            if(!_loc3_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
         }
         loop0:
         while(true)
         {
            §§push(this.m_world.§5!Y§());
            loop1:
            while(true)
            {
               §§push(true);
               addr264:
               loop2:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(this.§"!1§);
                     loop4:
                     while(true)
                     {
                        if(§§pop() == b2_dynamicBody)
                        {
                           loop5:
                           while(true)
                           {
                              this.§1!X§ = 0;
                              loop6:
                              while(true)
                              {
                                 this.§0!2§ = 0;
                                 while(true)
                                 {
                                    this.§^!B§ = 0;
                                    addr239:
                                    addr38:
                                    while(true)
                                    {
                                       this.§#K§ = param1.§+!<§;
                                       addr215:
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             continue loop0;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    if(!(_loc3_ && param1))
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§ !<§ & b2internal::"O);
                                                if(!(_loc4_ || param1))
                                                {
                                                   break;
                                                }
                                                addr66:
                                                §§push(§§pop() == 0);
                                                if(_loc4_ || this)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(§§pop())
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(this);
                                                            §§push(param1.§+j§);
                                                            if(_loc4_)
                                                            {
                                                               §§push(this.§#K§);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(param1.center.x);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(param1.center);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           addr143:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc4_)
                                                                           {
                                                                              addr129:
                                                                              §§push(param1.center.y);
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 addr137:
                                                                                 §§push(§§pop() * param1.center.y);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§pop().§0!2§ = §§pop() - §§pop() * §§pop();
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr239);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr204:
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       this.§#K§ = 1;
                                                                                       break loop21;
                                                                                    }
                                                                                    continue loop6;
                                                                                    addr204:
                                                                                 }
                                                                              }
                                                                              addr198:
                                                                              addr202:
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§+j§);
                                                                                 if(!(_loc4_ || param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                    continue loop1;
                                                                                 }
                                                                                 addr203:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() <= §§pop())
                                                                                    {
                                                                                       §§goto(addr204);
                                                                                    }
                                                                                    addr191:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§1!X§ = 1 / this.§#K§;
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr203);
                                                                                 §§goto(addr198);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr191);
                                                                              §§goto(addr31);
                                                                           }
                                                                           addr145:
                                                                        }
                                                                        §§goto(addr137);
                                                                     }
                                                                  }
                                                                  §§goto(addr129);
                                                               }
                                                            }
                                                            §§goto(addr143);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                   if(_loc4_)
                                                   {
                                                      addr473:
                                                      this.m_sweep.localCenter.SetV(param1.center);
                                                   }
                                                   addr461:
                                                   this.m_sweep.c0.SetV(b2Math.§,^§(this.m_xf,this.m_sweep.localCenter));
                                                   addr470:
                                                   addr477:
                                                   §§push(this.m_sweep);
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§pop().c.SetV(this.m_sweep.c0);
                                                         addr457:
                                                         §§push(this.§9!§);
                                                         §§push(this.§9!§.x);
                                                         §§push(this.m_angularVelocity);
                                                         if(_loc4_ || this)
                                                         {
                                                            addr410:
                                                            §§push(this.m_sweep.c.y);
                                                            if(!_loc3_)
                                                            {
                                                               addr415:
                                                               addr419:
                                                               addr420:
                                                               addr421:
                                                               §§push(§§pop() - _loc2_.y);
                                                               if(_loc4_)
                                                               {
                                                                  addr418:
                                                                  §§push(-§§pop());
                                                               }
                                                               §§pop().x = §§pop() + §§pop() * §§pop();
                                                               addr422:
                                                               if(_loc4_)
                                                               {
                                                                  §§push(this.§9!§);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§push(this.§9!§);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(this.m_angularVelocity);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(!(_loc3_ && param1))
                                                                                 {
                                                                                    §§push(this.m_sweep);
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(_loc2_.x);
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      addr375:
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc3_ && _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr470);
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr457);
                                                                                                         }
                                                                                                         §§goto(addr422);
                                                                                                      }
                                                                                                      §§goto(addr457);
                                                                                                   }
                                                                                                   §§goto(addr375);
                                                                                                }
                                                                                                §§goto(addr415);
                                                                                             }
                                                                                             §§goto(addr419);
                                                                                          }
                                                                                          §§goto(addr375);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr410);
                                                                                 }
                                                                                 §§goto(addr420);
                                                                              }
                                                                              §§goto(addr375);
                                                                           }
                                                                           §§goto(addr421);
                                                                        }
                                                                        §§goto(addr375);
                                                                     }
                                                                  }
                                                                  §§goto(addr457);
                                                               }
                                                               §§goto(addr477);
                                                            }
                                                            §§goto(addr418);
                                                         }
                                                         §§goto(addr415);
                                                      }
                                                      §§goto(addr473);
                                                   }
                                                   §§goto(addr461);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr66);
                                                   }
                                                   addr182:
                                                }
                                                §§goto(addr183);
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr277);
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                        if(_loc4_)
                        {
                           return;
                        }
                        break loop2;
                     }
                  }
               }
               return;
            }
         }
      }
      
      public function §[!;§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§#K§ = 0;
            while(true)
            {
               this.§1!X§ = 0;
            }
            addr113:
         }
         while(true)
         {
            this.§0!2§ = 0;
            loop2:
            while(!_loc5_)
            {
               this.§^!B§ = 0;
               loop3:
               while(true)
               {
                  this.m_sweep.localCenter.§%&§();
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(this.§"!1§);
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
                                       addr82:
                                       while(!_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(this.§"!1§);
                                             if(_loc5_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(b2_kinematicBody);
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                continue loop7;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(_loc5_ && this)
                                             {
                                                continue loop9;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop8;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr113);
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 while(§§pop())
                                 {
                                    if(_loc5_ && _loc3_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                    if(_loc6_ || _loc1_)
                                    {
                                       return;
                                    }
                                    §§goto(addr82);
                                 }
                                 var _loc1_:b2Vec2 = b2Vec2.§8!f§(0,0);
                                 var _loc2_:b2Fixture = this.§8!@§;
                                 addr240:
                                 if(_loc2_)
                                 {
                                    §§push(_loc2_.§&-§);
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(0);
                                       if(!(_loc5_ && _loc1_))
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                addr236:
                                                _loc2_ = _loc2_.§7n§;
                                                §§goto(addr240);
                                             }
                                             addr244:
                                             §§push(this.§#K§);
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§push(0);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         addr264:
                                                         this.§1!X§ = 1 / this.§#K§;
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            §§push(_loc1_);
                                                            §§push(_loc1_.x);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() * this.§1!X§);
                                                            }
                                                            §§pop().x = §§pop();
                                                            §§push(_loc1_);
                                                            §§push(_loc1_.y);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§push(§§pop() * this.§1!X§);
                                                            }
                                                            §§pop().y = §§pop();
                                                            addr485:
                                                            addr475:
                                                            §§push(this.§0!2§ > 0);
                                                            if(this.§0!2§ > 0)
                                                            {
                                                               addr445:
                                                               §§pop();
                                                               addr446:
                                                               if(!_loc5_)
                                                               {
                                                                  §§push((this.§ !<§ & b2internal::"O) == 0);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_ || _loc1_)
                                                                     {
                                                                        addr377:
                                                                        if(§§pop())
                                                                        {
                                                                           addr379:
                                                                           §§push(this);
                                                                           §§push(this.§0!2§);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              §§push(this.§#K§);
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 §§push(_loc1_.x);
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc1_.x);
                                                                                    if(!(_loc5_ && _loc1_))
                                                                                    {
                                                                                       addr433:
                                                                                       addr434:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr419:
                                                                                          §§push(_loc1_.y);
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             addr428:
                                                                                             §§push(§§pop() * _loc1_.y);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§pop().§0!2§ = §§pop() - §§pop() * §§pop();
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(this.§0!2§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() * this.§1!Y§);
                                                                                          }
                                                                                          §§pop().§0!2§ = §§pop();
                                                                                          addr358:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                          b2Settings.b2Assert(this.§0!2§ > 0);
                                                                                          this.§^!B§ = 1 / this.§0!2§;
                                                                                          addr347:
                                                                                          if(_loc5_ && _loc2_)
                                                                                          {
                                                                                             §§goto(addr347);
                                                                                          }
                                                                                          var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr667:
                                                                                             this.m_sweep.localCenter.SetV(_loc1_);
                                                                                             addr655:
                                                                                             this.m_sweep.c0.SetV(b2Math.§,^§(this.m_xf,this.m_sweep.localCenter));
                                                                                             addr664:
                                                                                             addr670:
                                                                                             §§push(this.m_sweep);
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§pop().c.SetV(this.m_sweep.c0);
                                                                                                   addr644:
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      addr613:
                                                                                                      this.§9!§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
                                                                                                      addr614:
                                                                                                      addr612:
                                                                                                      addr610:
                                                                                                      addr611:
                                                                                                      addr609:
                                                                                                      addr607:
                                                                                                      addr606:
                                                                                                      addr605:
                                                                                                      addr603:
                                                                                                      addr601:
                                                                                                      addr600:
                                                                                                      addr598:
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(this.§9!§);
                                                                                                         if(_loc6_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(this.§9!§);
                                                                                                            if(_loc6_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§push(this.m_angularVelocity);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(this.m_sweep);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(!(_loc5_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.x);
                                                                                                                                          if(!(_loc5_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!(_loc5_ && this))
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr580:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr584:
                                                                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_ && this)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr644);
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                            addr594:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr614);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr612);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr610);
                                                                                                                                                }
                                                                                                                                                §§goto(addr611);
                                                                                                                                             }
                                                                                                                                             §§goto(addr580);
                                                                                                                                          }
                                                                                                                                          §§goto(addr609);
                                                                                                                                       }
                                                                                                                                       §§goto(addr607);
                                                                                                                                    }
                                                                                                                                    §§goto(addr580);
                                                                                                                                 }
                                                                                                                                 §§goto(addr606);
                                                                                                                              }
                                                                                                                              §§goto(addr605);
                                                                                                                           }
                                                                                                                           §§goto(addr603);
                                                                                                                        }
                                                                                                                        §§goto(addr580);
                                                                                                                     }
                                                                                                                     §§goto(addr601);
                                                                                                                  }
                                                                                                                  §§goto(addr613);
                                                                                                               }
                                                                                                               §§goto(addr584);
                                                                                                            }
                                                                                                            §§goto(addr600);
                                                                                                         }
                                                                                                         §§goto(addr598);
                                                                                                      }
                                                                                                      §§goto(addr664);
                                                                                                   }
                                                                                                   §§goto(addr670);
                                                                                                }
                                                                                                §§goto(addr667);
                                                                                             }
                                                                                             §§goto(addr655);
                                                                                          }
                                                                                          §§goto(addr594);
                                                                                          addr288:
                                                                                       }
                                                                                       §§goto(addr485);
                                                                                    }
                                                                                    §§goto(addr428);
                                                                                 }
                                                                                 §§goto(addr419);
                                                                              }
                                                                              §§goto(addr433);
                                                                           }
                                                                           §§goto(addr434);
                                                                        }
                                                                        this.§0!2§ = 0;
                                                                        addr294:
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       this.§^!B§ = 0;
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr358);
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr288);
                                                                                          }
                                                                                          §§goto(addr358);
                                                                                       }
                                                                                       §§goto(addr294);
                                                                                    }
                                                                                    §§goto(addr475);
                                                                                 }
                                                                                 this.§1!X§ = 1;
                                                                                 addr453:
                                                                                 §§goto(addr485);
                                                                                 addr459:
                                                                              }
                                                                              §§goto(addr446);
                                                                           }
                                                                           §§goto(addr433);
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                     §§goto(addr485);
                                                                  }
                                                                  §§goto(addr445);
                                                               }
                                                               §§goto(addr453);
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr453);
                                                      }
                                                      §§goto(addr379);
                                                   }
                                                   else
                                                   {
                                                      this.§#K§ = 1;
                                                   }
                                                   §§goto(addr459);
                                                }
                                             }
                                             §§goto(addr485);
                                          }
                                          _loc4_ = _loc2_.§ !^§();
                                          if(!_loc5_)
                                          {
                                             §§push(this);
                                             §§push(this.§#K§);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() + _loc4_.§+!<§);
                                             }
                                             §§pop().§#K§ = §§pop();
                                          }
                                          §§push(_loc1_);
                                          §§push(_loc1_.x);
                                          if(_loc6_ || _loc1_)
                                          {
                                             §§push(_loc4_.center.x);
                                             if(_loc6_ || _loc1_)
                                             {
                                                §§push(§§pop() * _loc4_.§+!<§);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().x = §§pop();
                                          addr177:
                                          §§push(_loc1_);
                                          §§push(_loc1_.y);
                                          if(_loc6_ || _loc1_)
                                          {
                                             §§push(_loc4_.center.y);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() * _loc4_.§+!<§);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().y = §§pop();
                                          §§push(this);
                                          §§push(this.§0!2§);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() + _loc4_.§+j§);
                                          }
                                          §§pop().§0!2§ = §§pop();
                                          addr235:
                                          addr225:
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr236);
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr225);
                                          }
                                          addr198:
                                          §§goto(addr198);
                                       }
                                    }
                                    §§goto(addr485);
                                 }
                                 if(_loc6_)
                                 {
                                    §§goto(addr244);
                                 }
                                 §§goto(addr264);
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
         if(_loc4_ || this)
         {
            §§push(param1.x);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  §§push(_loc2_.col2.x);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(param1.y);
                     if(_loc4_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && _loc2_))
                        {
                           addr82:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr92:
                              §§push(param1.x);
                              if(!(_loc5_ && this))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    addr104:
                                    §§push(_loc2_.col2.y);
                                    if(!(_loc5_ && this))
                                    {
                                       addr117:
                                       §§push(§§pop() + §§pop() * param1.y);
                                    }
                                    §§goto(addr117);
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(!(_loc5_ && _loc3_))
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
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(!(_loc4_ || _loc3_));
                                 
                                 return _loc3_;
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr117);
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §%1§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"!+§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ I§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`m§(this.m_xf.R,param1);
      }
      
      public function §+!2§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§9!§.x);
         if(!(_loc2_ && param1))
         {
            §§push(this.m_angularVelocity);
            if(!_loc2_)
            {
               §§push(param1.y);
               if(!_loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc2_)
                        {
                           §§goto(addr64);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr84);
         }
         addr64:
         §§push(§§pop() - §§pop());
         §§push(this.§9!§.y);
         if(_loc3_ || _loc2_)
         {
            addr84:
            §§push(this.m_angularVelocity);
            if(!(_loc2_ && _loc3_))
            {
               addr93:
               §§push(param1.x);
               if(!(_loc2_ && param1))
               {
                  addr107:
                  §§push(§§pop() + §§pop() * (§§pop() - this.m_sweep.c.x));
               }
            }
            §§goto(addr107);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §,!I§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc5_ || _loc2_)
         {
            §§push(param1.x);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(_loc2_.col2.x);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(param1.y);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_ || _loc2_)
                        {
                           addr68:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc5_ || param1)
                           {
                              addr78:
                              §§push(param1.x);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_)
                                 {
                                    addr90:
                                    §§push(_loc2_.col2.y);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr100:
                                       §§push(§§pop() * param1.y);
                                    }
                                    §§push(§§pop() + §§pop());
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
                                 }
                                 do
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.y);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(_loc4_ && _loc3_);
                                 
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(this.§9!§.x);
                                 if(_loc5_)
                                 {
                                    §§push(this.m_angularVelocity);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(_loc3_.y);
                                       if(!_loc4_)
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§goto(addr154);
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr186);
                                       }
                                       addr154:
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr162:
                                          §§push(§§pop() - §§pop());
                                          §§push(this.§9!§.y);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(this.m_angularVelocity);
                                             if(_loc5_)
                                             {
                                                addr177:
                                                §§push(_loc3_.x);
                                                if(!(_loc4_ && param1))
                                                {
                                                   addr186:
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
                                 §§goto(addr162);
                              }
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr78);
               }
               §§goto(addr68);
            }
            §§goto(addr90);
         }
         §§goto(addr68);
      }
      
      public function §5!s§() : Number
      {
         return this.§ u§;
      }
      
      public function §8p§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ u§ = param1;
         }
      }
      
      public function §&!!§() : Number
      {
         return this.§&! §;
      }
      
      public function §'!6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&! § = param1;
         }
      }
      
      public function §8!t§(param1:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§"!1§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr129:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§"!1§ = param1;
                        while(_loc4_)
                        {
                           this.§[!;§();
                           continue loop0;
                           loop7:
                           for(; _loc4_ || param1; loop11:
                           while(_loc4_ || _loc2_)
                           {
                              while(true)
                              {
                                 this.§`!R§ = 0;
                                 if(_loc3_ && this)
                                 {
                                    continue loop11;
                                 }
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr35:
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue loop0;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr44);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§9!§.§%&§();
                                       }
                                       addr101:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr70);
                                 }
                                 §§goto(addr104);
                              }
                              var _loc2_:b2ContactEdge = this.§#!u§;
                              while(_loc2_)
                              {
                                 _loc2_.§58§.§?d§();
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 _loc2_ = _loc2_.§0e§;
                              }
                              return;
                           })
                           {
                              while(true)
                              {
                                 this.SetAwake(true);
                                 addr70:
                                 addr104:
                                 while(!(_loc3_ && this))
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       this.§2!§.§%&§();
                                       continue loop7;
                                    }
                                 }
                                 while(true)
                                 {
                                    this.m_angularVelocity = 0;
                                    continue loop7;
                                 }
                              }
                           }
                        }
                     }
                     addr109:
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §0!@§() : uint
      {
         return this.§"!1§;
      }
      
      public function §>!B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!param1)
            {
               this.§ !<§ &= ~b2internal::08;
               if(_loc2_)
               {
                  addr72:
               }
               return;
            }
            if(!_loc2_)
            {
               this.§ !<§ |= b2internal::08;
            }
         }
         §§goto(addr72);
      }
      
      public function §=!s§() : Boolean
      {
         return (this.§ !<§ & b2internal::08) == b2internal::08;
      }
      
      public function §`6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!param1)
            {
               this.§ !<§ &= ~b2internal::=7;
               while(true)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               §§goto(addr34);
               addr78:
            }
            this.§ !<§ |= b2internal::=7;
            §§goto(addr78);
         }
         §§goto(addr69);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§ !<§ &= ~b2internal::5D;
               loop0:
               while(true)
               {
                  this.§ !"§ = 0;
                  while(_loc3_ || param1)
                  {
                     this.§9!§.§%&§();
                     continue loop0;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr20);
                     }
                  }
                  §§goto(addr134);
               }
            }
            while(true)
            {
               this.§ !<§ |= b2internal::5D;
               addr134:
               loop3:
               while(true)
               {
                  this.§ !"§ = 0;
                  addr118:
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        break loop3;
                     }
                     continue loop3;
                  }
               }
               addr20:
               return;
            }
         }
         §§goto(addr80);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§ !<§ & b2internal::5D) == b2internal::5D;
      }
      
      public function §>0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  this.§ !<§ |= b2internal::"O;
               }
               while(true)
               {
                  §§goto(addr39);
               }
               addr83:
            }
            else
            {
               this.§ !<§ &= ~b2internal::"O;
            }
            while(true)
            {
               if(_loc3_)
               {
                  §§goto(addr72);
               }
               else
               {
                  §§goto(addr83);
               }
               §§goto(addr59);
            }
         }
         addr59:
         do
         {
            this.§[!;§();
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function § get§() : Boolean
      {
         return (this.§ !<§ & b2internal::"O) == b2internal::"O;
      }
      
      public function §^i§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§>D§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc7_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc6_ && this))
            {
               if(§§pop() == this.§ !5§())
               {
                  if(_loc7_)
                  {
                     §§goto(addr49);
                  }
               }
               §§push(param1);
            }
            if(§§pop())
            {
               if(_loc7_ || _loc2_)
               {
                  this.§ !<§ |= b2internal::?z;
               }
               _loc2_ = this.m_world.§<!7§.§0G§;
               _loc3_ = this.§8!@§;
               while(_loc3_)
               {
                  _loc3_.§2!9§(_loc2_,this.m_xf);
                  if(!(_loc7_ || this))
                  {
                     break;
                  }
                  _loc3_ = _loc3_.§7n§;
               }
            }
            else
            {
               this.§ !<§ &= ~b2internal::?z;
               _loc2_ = this.m_world.§<!7§.§0G§;
               _loc3_ = this.§8!@§;
               if(_loc7_)
               {
                  loop0:
                  while(_loc3_)
                  {
                     _loc3_.§"!=§(_loc2_);
                     if(_loc6_ && _loc3_)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc3_ = _loc3_.§7n§;
                        continue loop0;
                     }
                  }
                  _loc4_ = this.§#!u§;
                  if(_loc7_)
                  {
                     while(_loc4_)
                     {
                        _loc5_ = _loc4_;
                        _loc4_ = _loc4_.§0e§;
                        if(_loc7_ || _loc2_)
                        {
                           this.m_world.§<!7§.§"L§(_loc5_.§58§);
                        }
                     }
                     if(!_loc7_)
                     {
                     }
                     §§goto(addr195);
                  }
                  this.§#!u§ = null;
                  §§goto(addr195);
               }
               §§goto(addr144);
            }
            addr195:
            return;
         }
         addr49:
      }
      
      public function § !5§() : Boolean
      {
         return (this.§ !<§ & b2internal::?z) == b2internal::?z;
      }
      
      public function §#!A§() : Boolean
      {
         return (this.§ !<§ & b2internal::=7) == b2internal::=7;
      }
      
      public function §=Y§() : b2Fixture
      {
         return this.§8!@§;
      }
      
      public function §;!T§() : b2JointEdge
      {
         return this.§>w§;
      }
      
      public function §"!H§() : b2ControllerEdge
      {
         return this.§[U§;
      }
      
      public function §=!-§() : b2ContactEdge
      {
         return this.§#!u§;
      }
      
      public function §2!g§() : b2Body
      {
         return this.§7n§;
      }
      
      public function GetUserData() : *
      {
         return this.§>a§;
      }
      
      public function § A§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>a§ = param1;
         }
      }
      
      public function §]`§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §;!L§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §;4§;
         if(!(_loc6_ && _loc2_))
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
            if(!_loc6_)
            {
               §§push(_loc1_.position);
               if(!_loc6_)
               {
                  §§push(this.m_sweep);
                  if(_loc7_)
                  {
                     §§push(§§pop().c0);
                     if(_loc7_)
                     {
                        §§push(§§pop().x);
                        if(!_loc6_)
                        {
                           §§push(_loc2_.col1);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop().x);
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(_loc3_.y);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   addr126:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_ || _loc1_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            addr150:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               addr160:
                                                               §§push(_loc2_.col1.y);
                                                               if(!_loc6_)
                                                               {
                                                                  addr163:
                                                                  §§push(_loc3_.x);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr172:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(_loc6_)
                                                                        {
                                                                        }
                                                                        addr180:
                                                                        §§pop().y = §§pop() - (§§pop() + §§pop());
                                                                        var _loc5_:§>D§ = this.m_world.§<!7§.§0G§;
                                                                        _loc4_ = this.§8!@§;
                                                                        addr181:
                                                                        while(_loc4_)
                                                                        {
                                                                           _loc4_.§^o§(_loc5_,_loc1_,this.m_xf);
                                                                           if(_loc6_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc4_ = _loc4_.§7n§;
                                                                        }
                                                                        return;
                                                                        addr179:
                                                                        addr178:
                                                                     }
                                                                     §§goto(addr179);
                                                                  }
                                                               }
                                                               §§goto(addr179);
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   §§goto(addr163);
                                                }
                                                §§push(_loc3_.y);
                                             }
                                             §§goto(addr178);
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr163);
                                 }
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr172);
                     }
                  }
               }
               §§goto(addr150);
            }
            §§goto(addr172);
         }
         §§goto(addr38);
      }
      
      b2internal function § n§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.m_xf);
            if(!(_loc4_ && this))
            {
               §§push(§§pop().R);
               if(!(_loc4_ && _loc2_))
               {
                  §§pop().Set(this.m_sweep.a);
                  addr41:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(!_loc4_)
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr169:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr181:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr182:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr183:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr185:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr186:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc3_)
                                          {
                                             §§push(_loc1_.col2);
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(_loc2_.y);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr206:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   addr205:
                                                }
                                                §§goto(addr206);
                                                addr136:
                                                §§push(_loc1_.col2);
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc3_)
                                                {
                                                   addr148:
                                                   §§push(_loc2_.y);
                                                   if(_loc3_)
                                                   {
                                                      addr153:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc3_)
                                                      {
                                                         addr157:
                                                         §§pop().y = §§pop() - (§§pop() + §§pop());
                                                         addr156:
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            return;
                                                            addr165:
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr205);
                                                   }
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr153);
                                             }
                                             addr195:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr208:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                continue loop0;
                                             }
                                          }
                                          addr207:
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr165);
            }
         }
         §§goto(addr41);
      }
      
      b2internal function §>?§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§"!1§);
            if(!_loc3_)
            {
               §§push(b2_dynamicBody);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              if(!(_loc3_ && this))
                              {
                                 addr67:
                                 §§push(param1.§"!1§ == b2_dynamicBody);
                                 if(_loc4_)
                                 {
                                    §§goto(addr70);
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr78);
                           }
                        }
                        §§goto(addr73);
                     }
                  }
                  addr70:
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     addr73:
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           addr78:
                           var _loc2_:b2JointEdge = this.§>w§;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_.§<!-§ == param1)
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(_loc2_.§[!q§.§"!%§);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(§§pop() != false)
                                          {
                                             continue;
                                          }
                                          if(_loc4_ || param1)
                                          {
                                             break;
                                          }
                                          addr141:
                                          §§push(true);
                                       }
                                       §§goto(addr142);
                                    }
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr141);
                           }
                           §§push(false);
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                           addr142:
                           return §§pop();
                        }
                        addr76:
                        §§push(false);
                     }
                     §§goto(addr78);
                  }
                  return §§pop();
               }
            }
            §§goto(addr67);
         }
         §§goto(addr76);
      }
      
      b2internal function §]b§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.m_sweep);
            loop0:
            while(true)
            {
               §§push(param1);
               addr94:
               while(true)
               {
                  §§pop().§]b§(§§pop());
                  addr95:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        addr90:
                        while(true)
                        {
                           §§push(this.m_sweep);
                           if(_loc3_)
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
         §§goto(addr81);
      }
   }
}
