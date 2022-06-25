package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §>!C§:b2Vec2;
      
      private var §4a§:b2Vec2;
      
      private var §try§:b2Vec2;
      
      private var §;!]§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §?!S§:b2Mat22;
      
      private var §&""§:b2Vec2;
      
      private var §1!F§:Number;
      
      private var §^!f§:Number;
      
      private var §#g§:Number;
      
      private var §9M§:Number;
      
      private var §!!V§:Number;
      
      private var §!z§:Number;
      
      private var §>7§:Boolean;
      
      private var §%A§:Boolean;
      
      private var §=H§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_)
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               while(!(_loc5_ && _loc2_))
               {
                  this.m_localAnchor2.SetV(param1.§true§);
                  while(true)
                  {
                     this.§>!C§.SetV(param1.§ !S§);
                     while(_loc6_)
                     {
                        §§push(this.§4a§);
                        loop12:
                        while(true)
                        {
                           §§push(this.§>!C§);
                           addr241:
                           while(true)
                           {
                              §§push(§§pop().y);
                              if(!(_loc5_ && this))
                              {
                                 §§push(-§§pop());
                              }
                              addr250:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop12;
                              }
                           }
                        }
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        §§goto(addr68);
                     }
                  }
                  if(!(_loc6_ || _loc2_))
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     this.§!!V§ = param1.§;!Q§;
                     §§goto(addr133);
                  }
                  §§goto(addr294);
               }
            }
         }
         §§goto(addr349);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && this))
         {
            §§push(this.§&""§.x);
            if(!_loc3_)
            {
               §§push(this.§;!]§.x);
               if(_loc2_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_ || this)
                  {
                     §§push(this.§^!f§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.§&""§.y);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              §§push(this.§try§.x);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc3_)
                                 {
                                    addr88:
                                    §§push(§§pop() + §§pop());
                                    if(!_loc3_)
                                    {
                                       addr91:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc2_)
                                       {
                                          addr95:
                                          §§push(this.§&""§.x);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(this.§;!]§.y);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc3_)
                                                {
                                                   §§push(this.§^!f§);
                                                   if(!_loc2_)
                                                   {
                                                   }
                                                   addr141:
                                                   return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop() * this.§try§.y));
                                                   addr140:
                                                }
                                                §§goto(addr140);
                                             }
                                             §§push(this.§&""§.y);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc2_)
                                                {
                                                }
                                             }
                                          }
                                          §§goto(addr140);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr95);
               }
               §§goto(addr141);
            }
         }
         §§goto(addr91);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || param1)
         {
            return §§pop() * this.§&""§.y;
         }
      }
      
      public function §+t§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::&A;
         var _loc2_:b2Body = b2internal::4!d;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!(_loc11_ && _loc1_))
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_ || this)
            {
               addr66:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!_loc11_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§2^§(this.§>!C§)).x);
            if(_loc10_ || _loc3_)
            {
               §§push(_loc6_);
               if(!_loc11_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc11_ && _loc1_))
                  {
                     §§push(_loc8_.y);
                     if(!_loc11_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(!_loc10_)
                        {
                        }
                        §§goto(addr133);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc10_)
                     {
                        addr132:
                        §§push(Number(§§pop()));
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr132);
               }
               addr133:
               var _loc9_:* = §§pop();
               return §§pop();
            }
            §§goto(addr132);
         }
         §§goto(addr66);
      }
      
      public function §#;§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::&A;
         var _loc2_:b2Body = b2internal::4!d;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_ || _loc2_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc22_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(_loc21_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc21_ || this)
            {
               §§push(_loc4_);
               if(_loc21_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc22_)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc21_ || this)
                     {
                        addr94:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc22_)
                     {
                        addr99:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     if(!_loc22_)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc21_ || _loc1_)
                        {
                           §§push(_loc4_);
                           if(_loc21_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc22_)
                              {
                                 §§push(_loc3_.col2.y);
                                 if(_loc21_)
                                 {
                                    addr131:
                                    §§push(§§pop() + §§pop() * _loc5_);
                                    if(_loc21_)
                                    {
                                       addr134:
                                       §§push(Number(§§pop()));
                                       if(_loc21_)
                                       {
                                          addr137:
                                          _loc5_ = §§pop();
                                          addr150:
                                          if(!(_loc22_ && this))
                                          {
                                             §§push(_loc6_);
                                             if(!_loc22_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc3_ = _loc2_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!_loc22_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(!_loc22_)
                                             {
                                                addr167:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(!_loc22_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                if(!_loc22_)
                                                {
                                                   addr181:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                if(!_loc22_)
                                                {
                                                   §§push(_loc3_.col1);
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         if(_loc21_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.col2);
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc21_ || this)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc21_)
                                                                              {
                                                                                 addr306:
                                                                                 _loc6_ = §§pop();
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.col1);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc21_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§push(_loc7_);
                                                                                             if(_loc21_ || _loc3_)
                                                                                             {
                                                                                                if(_loc22_ && this)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc21_ || _loc1_)
                                                                                                {
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      §§push(_loc3_.col2);
                                                                                                      if(_loc21_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr320:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               addr334:
                                                                                                               var _loc9_:Number = §§pop();
                                                                                                               §§push(_loc1_.m_sweep.c.y);
                                                                                                               if(_loc21_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc5_);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr350:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  var _loc10_:* = §§pop();
                                                                                                                  §§push(_loc2_.m_sweep.c.x);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc7_);
                                                                                                                     if(_loc21_ || this)
                                                                                                                     {
                                                                                                                        addr367:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc11_:* = §§pop();
                                                                                                                     §§push(_loc2_.m_sweep.c.y);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc8_);
                                                                                                                        if(!(_loc22_ && this))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     var _loc12_:* = §§pop();
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _loc9_);
                                                                                                                        if(!(_loc22_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr398:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc13_:* = §§pop();
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(!(_loc22_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() - _loc10_);
                                                                                                                           if(_loc21_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr417:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc14_:* = §§pop();
                                                                                                                           var _loc15_:b2Vec2 = _loc1_.§2^§(this.§>!C§);
                                                                                                                           var _loc16_:b2Vec2 = _loc1_.§%!<§;
                                                                                                                           var _loc17_:b2Vec2 = _loc2_.§%!<§;
                                                                                                                           §§push(_loc1_.m_angularVelocity);
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc18_:* = §§pop();
                                                                                                                           §§push(_loc2_.m_angularVelocity);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc19_:* = §§pop();
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_.y);
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc22_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc21_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(!(_loc22_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                if(_loc21_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   addr485:
                                                                                                                                                   §§push(_loc15_.x);
                                                                                                                                                   if(!_loc22_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc21_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc21_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr505:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!_loc22_)
                                                                                                                                                            {
                                                                                                                                                               addr508:
                                                                                                                                                               §§push(_loc15_.x);
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  addr512:
                                                                                                                                                                  §§push(_loc17_.x);
                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     addr516:
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     if(!_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                        if(_loc21_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(!(_loc22_ && _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc21_ || _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr543:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc21_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr551:
                                                                                                                                                                                    §§push(_loc16_.x);
                                                                                                                                                                                    if(!(_loc22_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(!(_loc22_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr568:
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          if(!(_loc22_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                             if(!(_loc22_ && _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                if(_loc21_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc21_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr600:
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(!(_loc22_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr608:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr611:
                                                                                                                                                                                                            §§push(_loc15_.y);
                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr615:
                                                                                                                                                                                                               §§push(_loc17_.y);
                                                                                                                                                                                                               if(!(_loc22_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr624:
                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                     if(!_loc22_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!_loc22_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(!_loc22_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr646:
                                                                                                                                                                                                                              §§push(_loc16_.y);
                                                                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr659:
                                                                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr656:
                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                    if(!_loc22_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr663:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(!_loc22_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr668:
                                                                                                                                                                                                                                          return Number(§§pop());
                                                                                                                                                                                                                                          addr667:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr667);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr668);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr659);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr656);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr659);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr659);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr668);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr615);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr659);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr656);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr646);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr624);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr608);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr646);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr568);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr600);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr656);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr543);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr646);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr551);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr611);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr668);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr512);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr516);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr600);
                                                                                                                                                }
                                                                                                                                                §§goto(addr615);
                                                                                                                                             }
                                                                                                                                             §§goto(addr505);
                                                                                                                                          }
                                                                                                                                          §§goto(addr668);
                                                                                                                                       }
                                                                                                                                       §§goto(addr663);
                                                                                                                                    }
                                                                                                                                    §§goto(addr485);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr505);
                                                                                                                           }
                                                                                                                           §§goto(addr508);
                                                                                                                        }
                                                                                                                        §§goto(addr417);
                                                                                                                     }
                                                                                                                     §§goto(addr398);
                                                                                                                  }
                                                                                                                  §§goto(addr367);
                                                                                                               }
                                                                                                               §§goto(addr350);
                                                                                                            }
                                                                                                            §§goto(addr334);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc22_ && _loc2_))
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   loop8:
                                                                                                   for(; _loc21_; _loc7_ = §§pop(),if(!(_loc21_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   },if(false)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   },§§push(_loc1_.m_sweep.c.x),if(!(_loc22_ && _loc3_))
                                                                                                   {
                                                                                                      break loop7;
                                                                                                   })
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(!(_loc22_ && _loc1_))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               break loop7;
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                §§goto(addr334);
                                                                                             }
                                                                                             §§goto(addr320);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                              }
                                                                              §§goto(addr334);
                                                                           }
                                                                           §§goto(addr306);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                   }
                                                }
                                                §§goto(addr280);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr167);
                                       }
                                    }
                                    _loc4_ = §§pop();
                                    §§goto(addr150);
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr131);
                        }
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr99);
               }
               §§goto(addr94);
            }
            §§goto(addr99);
         }
         §§goto(addr47);
      }
      
      public function §%!u§() : Boolean
      {
         return this.§>7§;
      }
      
      public function §`9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::&A.SetAwake(true);
            do
            {
               b2internal::4!d.SetAwake(true);
               do
               {
                  this.§>7§ = param1;
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function §+!-§() : Number
      {
         return this.§#g§;
      }
      
      public function §6X§() : Number
      {
         return this.§9M§;
      }
      
      public function §;!2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            b2internal::&A.SetAwake(true);
            loop0:
            while(true)
            {
               b2internal::4!d.SetAwake(true);
               addr78:
               while(true)
               {
                  this.§#g§ = param1;
                  continue loop0;
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §5!r§() : Boolean
      {
         return this.§%A§;
      }
      
      public function §!""§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            b2internal::&A.SetAwake(true);
            while(true)
            {
               b2internal::4!d.SetAwake(true);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§%A§ = param1;
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::&A.SetAwake(true);
            while(true)
            {
               b2internal::4!d.SetAwake(true);
               while(_loc2_ || _loc3_)
               {
                  this.§!z§ = param1;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §3S§() : Number
      {
         return this.§!z§;
      }
      
      public function §;!%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::&A.SetAwake(true);
            while(true)
            {
               b2internal::4!d.SetAwake(true);
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§!!V§ = param1;
            if(_loc2_ || param1)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §@!2§() : Number
      {
         return this.§!!V§;
      }
      
      public function § o§() : Number
      {
         return this.§^!f§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc4_:b2Mat22 = null;
         var _loc5_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::&A;
         var _loc3_:b2Body = b2internal::4!d;
         if(_loc23_)
         {
            b2internal::9&.SetV(_loc2_.§6!#§());
            if(!(_loc24_ && _loc2_))
            {
               b2internal::2![.SetV(_loc3_.§6!#§());
            }
         }
         var _loc6_:b2Transform = _loc2_.§%J§();
         var _loc7_:b2Transform = _loc3_.§%J§();
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc23_)
         {
            §§push(§§pop() - b2internal::9&.x);
            if(!(_loc24_ && param1))
            {
               addr82:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc24_)
            {
               §§push(§§pop() - b2internal::9&.y);
               if(!(_loc24_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            if(!_loc24_)
            {
               §§push(_loc4_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  addr214:
                  while(true)
                  {
                     §§push(_loc8_);
                     if(_loc23_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        while(true)
                        {
                           §§push(_loc4_.col2);
                           addr225:
                           while(true)
                           {
                              §§push(§§pop().x);
                           }
                        }
                        addr223:
                     }
                     addr226:
                     while(true)
                     {
                        §§push(_loc9_);
                        addr227:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr228:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr229:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr230:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    addr231:
                                    while(true)
                                    {
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
            §§goto(addr137);
         }
         §§goto(addr82);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc2_:b2Body = b2internal::&A;
         var _loc3_:b2Body = b2internal::4!d;
         var _loc4_:b2Vec2 = _loc2_.§%!<§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc24_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§%!<§;
         §§push(_loc3_.m_angularVelocity);
         if(_loc24_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc24_)
         {
            §§push(this.§%A§);
            if(_loc24_ || this)
            {
               §§push(Boolean(§§pop()));
               if(_loc24_)
               {
                  if(§§pop())
                  {
                     loop41:
                     while(true)
                     {
                        §§pop();
                        addr645:
                        loop40:
                        while(true)
                        {
                           §§push(this.§=H§ == b2internal::3!`);
                           if(_loc24_)
                           {
                              if(!(_loc24_ || param1))
                              {
                                 continue loop41;
                              }
                              addr541:
                              §§push(!§§pop());
                              while(true)
                              {
                                 break loop40;
                                 §§goto(addr541);
                              }
                           }
                           break;
                        }
                        loop1:
                        while(§§pop())
                        {
                           loop2:
                           while(!_loc23_)
                           {
                              §§push(this.§try§.x);
                              if(!(_loc23_ && _loc2_))
                              {
                                 §§push(_loc6_.x);
                                 if(!_loc23_)
                                 {
                                    §§push(_loc4_.x);
                                    if(!(_loc23_ && this))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc23_ && _loc3_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          while(true)
                                          {
                                             §§push(this.§try§);
                                             addr580:
                                             while(true)
                                             {
                                                §§push(§§pop().y);
                                             }
                                          }
                                          addr578:
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc6_.y);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc4_.y);
                                             if(!_loc23_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc23_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc24_ || this)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(this.m_a2);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!(_loc23_ && this))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr611:
                                                                  loop39:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.m_a1);
                                                                     if(!_loc23_)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!(_loc23_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    _loc13_ = §§pop();
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§1!F§);
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          §§push(this.§!z§);
                                                                                          loop13:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc24_ || this)
                                                                                                {
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc14_ = §§pop();
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§^!f§);
                                                                                                            if(_loc24_ || param1)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop17:
                                                                                                               for(; _loc24_; if(!(_loc24_ || param1))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               },§§push(this.m_a2),if(!(_loc23_ && this))
                                                                                                               {
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              _loc11_ = §§pop();
                                                                                                                              §§goto(addr315);
                                                                                                                           }
                                                                                                                           §§goto(addr737);
                                                                                                                        }
                                                                                                                        §§goto(addr482);
                                                                                                                     }
                                                                                                                     §§goto(addr734);
                                                                                                                  }
                                                                                                                  §§goto(addr391);
                                                                                                               },§§goto(addr667))
                                                                                                               {
                                                                                                                  _loc15_ = §§pop();
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param1.§?!C§);
                                                                                                                     if(_loc24_ || this)
                                                                                                                     {
                                                                                                                        §§push(this.§!!V§);
                                                                                                                        while(_loc24_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           §§push(this.m_s1);
                                                                                                                           if(_loc24_ || param1)
                                                                                                                           {
                                                                                                                              addr732:
                                                                                                                              §§push(_loc5_);
                                                                                                                              break loop8;
                                                                                                                           }
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              addr737:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(this.§>7§);
                                                                                                                              if(_loc24_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc23_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr762:
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§=H§ == b2internal::]B);
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                addr777:
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc23_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§try§.x);
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_.x);
                                                                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(_loc24_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§try§.y);
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.y);
                                                                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - _loc4_.y);
                                                                                                                                                                           if(_loc24_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.m_a2);
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr851:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc24_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc24_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr867:
                                                                                                                                                                                                §§push(this.m_a1);
                                                                                                                                                                                                if(_loc24_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr877:
                                                                                                                                                                                                   §§push(§§pop() * _loc5_);
                                                                                                                                                                                                   if(_loc24_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(_loc24_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(_loc24_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc17_ = §§pop();
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§&""§);
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc18_ = §§pop().Copy();
                                                                                                                                                                                                                  _loc19_ = this.§?!S§.§,!&§(new b2Vec2(),-_loc12_,-_loc17_);
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1585:
                                                                                                                                                                                                                     this.§&""§.§2!3§(_loc19_);
                                                                                                                                                                                                                     if(_loc24_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1571:
                                                                                                                                                                                                                        if(this.§=H§ == b2internal::1l)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1581:
                                                                                                                                                                                                                           this.§&""§.y = b2Math.§&h§(this.§&""§.y,0);
                                                                                                                                                                                                                           addr1503:
                                                                                                                                                                                                                           §§push(-_loc12_);
                                                                                                                                                                                                                           §§push(this.§&""§.y);
                                                                                                                                                                                                                           §§push(_loc18_.y);
                                                                                                                                                                                                                           if(_loc24_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1519:
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              §§push(this.§?!S§.col2.x);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc20_ = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                                                           addr1573:
                                                                                                                                                                                                                           addr1575:
                                                                                                                                                                                                                           addr1582:
                                                                                                                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1480:
                                                                                                                                                                                                                              §§push(this.§?!S§.col1.x);
                                                                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1488:
                                                                                                                                                                                                                                 if(§§pop() != 0)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1501:
                                                                                                                                                                                                                                       _loc21_ = Number(_loc20_ / this.§?!S§.col1.x + _loc18_.x);
                                                                                                                                                                                                                                       addr1434:
                                                                                                                                                                                                                                       addr1497:
                                                                                                                                                                                                                                       addr1500:
                                                                                                                                                                                                                                       addr1492:
                                                                                                                                                                                                                                       addr1496:
                                                                                                                                                                                                                                       addr1499:
                                                                                                                                                                                                                                       addr1502:
                                                                                                                                                                                                                                       §§push(this.§&""§);
                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                §§push(this.§&""§.x);
                                                                                                                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - _loc18_.x);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                addr1455:
                                                                                                                                                                                                                                                if(_loc24_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                   §§push(this.§&""§.y);
                                                                                                                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - _loc18_.y);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   addr1402:
                                                                                                                                                                                                                                                   if(_loc24_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1343:
                                                                                                                                                                                                                                                      §§push(_loc19_.x);
                                                                                                                                                                                                                                                      §§push(this.§;!]§.x);
                                                                                                                                                                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1351:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1360:
                                                                                                                                                                                                                                                            §§push(_loc19_.y);
                                                                                                                                                                                                                                                            if(!(_loc23_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1370:
                                                                                                                                                                                                                                                               §§push(this.§try§.x);
                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1373:
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1377:
                                                                                                                                                                                                                                                                     _loc8_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     addr1376:
                                                                                                                                                                                                                                                                     if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1305:
                                                                                                                                                                                                                                                                        §§push(_loc19_.x);
                                                                                                                                                                                                                                                                        §§push(this.§;!]§);
                                                                                                                                                                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1315:
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop().y);
                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1322:
                                                                                                                                                                                                                                                                                 §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                 §§push(this.§try§);
                                                                                                                                                                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1335:
                                                                                                                                                                                                                                                                                    _loc9_ = Number(§§pop() + §§pop() * §§pop().y);
                                                                                                                                                                                                                                                                                    addr1334:
                                                                                                                                                                                                                                                                                    addr1336:
                                                                                                                                                                                                                                                                                    addr1332:
                                                                                                                                                                                                                                                                                    addr1333:
                                                                                                                                                                                                                                                                                    §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.m_s1);
                                                                                                                                                                                                                                                                                          if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1270:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1279:
                                                                                                                                                                                                                                                                                                   §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                   §§push(this.m_a1);
                                                                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1284:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1300:
                                                                                                                                                                                                                                                                                                            _loc10_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            addr1299:
                                                                                                                                                                                                                                                                                                            addr1301:
                                                                                                                                                                                                                                                                                                            §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1168:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * this.m_s2);
                                                                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                        if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(this.m_a2);
                                                                                                                                                                                                                                                                                                                              if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1200:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1212:
                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr1239:
                                                                                                                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - b2internal::`!Q * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     addr1153:
                                                                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - b2internal::`!Q * _loc9_);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1075:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                 §§push(b2internal::3< * _loc10_);
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1102:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr1110:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + b2internal::'!$ * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                      addr1070:
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr1021:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() + b2internal::'!$ * _loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(b2internal::]!% * _loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr987:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1021);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1940:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc2_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§pop().SetV(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1965:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              _loc3_.§%!<§.SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1971:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1948:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1971);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1961:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1967:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1967);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1965);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1455);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1070);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1961);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1462:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1472:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1434);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1573);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1497);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1501);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1299);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1168);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1110);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1500);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1075);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr987);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1315);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1200);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1075);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1377);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1334);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1102);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr987);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1336);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1153);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1948);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1377);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1961);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1212);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1488);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1360);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1284);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1168);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1301);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1965);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1455);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1239);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr1551:
                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§&""§);
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1566:
                                                                                                                                                                                                                                                                                                                                                                        §§pop().y = b2Math.§;!t§(this.§&""§.y,0);
                                                                                                                                                                                                                                                                                                                                                                        addr1567:
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1503);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1585);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1575);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1472);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1402);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1503);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1492);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1376);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1305);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1300);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1519);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1373);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1279);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1370);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1279);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1343);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1200);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1480);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1270);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1343);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1335);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1503);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1322);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1332);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1503);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1333);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1284);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1351);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1300);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1370);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1462);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1335);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1343);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1582);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1503);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1496);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1503);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1499);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1567);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1502);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1581);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1566);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1551);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1965);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1462);
                                                                                                                                                                                                                                 §§push(_loc18_.x);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1581);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1961);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(this.§=H§);
                                                                                                                                                                                                                        if(_loc24_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() == b2internal::4!S)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1551);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1581);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1571);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1961);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1965);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1911:
                                                                                                                                                                                                                  §§push(this.§&""§.x);
                                                                                                                                                                                                                  if(!(_loc23_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + _loc22_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                  addr1906:
                                                                                                                                                                                                                  _loc8_ = Number(_loc22_ * this.§;!]§.x);
                                                                                                                                                                                                                  addr1907:
                                                                                                                                                                                                                  addr1901:
                                                                                                                                                                                                                  addr1905:
                                                                                                                                                                                                                  addr1904:
                                                                                                                                                                                                                  addr1924:
                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                  §§push(this.§;!]§);
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1890:
                                                                                                                                                                                                                     _loc9_ = Number(§§pop() * §§pop().y);
                                                                                                                                                                                                                     addr1891:
                                                                                                                                                                                                                     addr1888:
                                                                                                                                                                                                                     addr1889:
                                                                                                                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1866:
                                                                                                                                                                                                                        addr1868:
                                                                                                                                                                                                                        addr1872:
                                                                                                                                                                                                                        §§push(_loc22_ * this.m_s1);
                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1928:
                                                                                                                                                                                                                              if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc24_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1842:
                                                                                                                                                                                                                                    §§push(this.m_s2);
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1845:
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1862:
                                                                                                                                                                                                                                                _loc11_ = Number(§§pop());
                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                §§push(_loc4_.x);
                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - b2internal::`!Q * _loc8_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                addr1863:
                                                                                                                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                   §§push(_loc4_.y);
                                                                                                                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - b2internal::`!Q * _loc9_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   addr1745:
                                                                                                                                                                                                                                                   addr1802:
                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                   if(_loc24_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc24_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1765:
                                                                                                                                                                                                                                                            §§push(Number(§§pop() - b2internal::3< * _loc10_));
                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc5_ = §§pop();
                                                                                                                                                                                                                                                                  addr1771:
                                                                                                                                                                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                        §§push(_loc6_.x);
                                                                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + b2internal::'!$ * _loc8_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                        addr1738:
                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1710:
                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                              §§push(_loc6_.y);
                                                                                                                                                                                                                                                                              if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + b2internal::'!$ * _loc9_);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                              addr1726:
                                                                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1654:
                                                                                                                                                                                                                                                                                 §§push(b2internal::]!% * _loc11_);
                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1670:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1685:
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1708:
                                                                                                                                                                                                                                                                                                                           if(false)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1710);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1940);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1907);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1891);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1738);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1726);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1906);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1866);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1745);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1765);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1685);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1888);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1868);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1842);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1765);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1685);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1863);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1771);
                                                                                                                                                                                                                                                                        addr1785:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1863);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1802);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1906);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1890);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1901);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1845);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1862);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1866);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1905);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1889);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1872);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1904);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1927:
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc22_ = §§pop();
                                                                                                                                                                                                                              addr1908:
                                                                                                                                                                                                                              §§goto(addr1911);
                                                                                                                                                                                                                              §§push(this.§&""§);
                                                                                                                                                                                                                              addr1929:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1862);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1924);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1929);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1903:
                                                                                                                                                                                                                  §§goto(addr1903);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1708);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1890);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1654);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1890);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1866);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1911);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1605:
                                                                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc24_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1613:
                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                   if(_loc24_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                      if(_loc24_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§?!S§.col1.x);
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                            if(_loc24_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1646:
                                                                                                                                                                                                                  _loc22_ = §§pop();
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1908);
                                                                                                                                                                                                                     addr1649:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1785);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1928);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1654);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1670);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1911);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1765);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1911);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1927);
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1927);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr877);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1602:
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1605);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1670);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1845);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr851);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr877);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1911);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1927);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1605);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr877);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1845);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr867);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1613);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(this.§?!S§.col1.x);
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1602);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1646);
                                                                                                                                             }
                                                                                                                                             §§goto(addr777);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1928);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr777);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr762);
                                                                                                                           }
                                                                                                                           §§goto(addr1649);
                                                                                                                           if(!(_loc23_ && this))
                                                                                                                           {
                                                                                                                              _loc14_ = §§pop();
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     addr482:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           _loc16_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(b2Math);
                                                                                                                              §§push(this.§^!f§);
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                 {
                                                                                                                                    addr454:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    §§push(_loc16_);
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§pop().§^!f§ = §§pop().§?!?§(§§pop(),§§pop(),_loc16_);
                                                                                                                                 loop22:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§^!f§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       addr391:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr403);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr734);
                                                                                                                                             addr395:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr651:
                                                                                                                                             §§push(_loc6_.x);
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                addr655:
                                                                                                                                                §§push(_loc4_.x);
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr659:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr667:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc24_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr675:
                                                                                                                                                         §§push(this.§;!]§.y);
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr717:
                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                            if(_loc24_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.y);
                                                                                                                                                               break loop6;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               break loop39;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr734);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr732);
                                                                                                                                                      }
                                                                                                                                                      addr705:
                                                                                                                                                      §§push(this.m_s2);
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr709:
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(!(_loc23_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr717);
                                                                                                                                                         }
                                                                                                                                                         break loop8;
                                                                                                                                                      }
                                                                                                                                                      break loop39;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr709);
                                                                                                                                                }
                                                                                                                                                break loop8;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr705);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr734);
                                                                                                                                       }
                                                                                                                                       addr378:
                                                                                                                                       if(_loc23_ && this)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                       loop33:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(!(_loc23_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(this.m_a1);
                                                                                                                                             while(_loc24_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr338:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               continue loop16;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc24_ || _loc2_))
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               continue loop17;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr734);
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                         addr341:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr395);
                                                                                                                                                      §§goto(addr734);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr667);
                                                                                                                                                   addr201:
                                                                                                                                                   if(_loc23_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§push(b2internal::3< * _loc10_);
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      continue loop13;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr734);
                                                                                                                                                }
                                                                                                                                                if(!(_loc24_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr104:
                                                                                                                                                   if(_loc24_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            addr117:
                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                            if(_loc24_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc24_ || _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                               if(true)
                                                                                                                                                               {
                                                                                                                                                                  break loop1;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                  §§push(_loc6_.y);
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + b2internal::'!$ * _loc9_);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                               }
                                                                                                                                                               addr134:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc24_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr152:
                                                                                                                                                                  if(_loc23_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop22;
                                                                                                                                                               }
                                                                                                                                                               addr185:
                                                                                                                                                               loop46:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc24_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr134);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                           §§push(_loc4_.y);
                                                                                                                                                                           if(_loc24_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - b2internal::`!Q * _loc9_);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                        }
                                                                                                                                                                        addr281:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr238:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop33;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop46;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop33;
                                                                                                                                                                     addr238:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr201);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr675);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr238);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop12;
                                                                                                                                                               §§goto(addr117);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     §§push(_loc4_.x);
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - b2internal::`!Q * _loc8_);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     §§goto(addr281);
                                                                                                                                                                  }
                                                                                                                                                                  addr317:
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                               §§goto(addr152);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr341);
                                                                                                                                                            addr315:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr667);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr117);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            continue loop8;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                            addr429:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr651);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr104);
                                                                                                                                                      }
                                                                                                                                                      addr423:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr734);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc24_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue loop7;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr378);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr675);
                                                                                                                                                         addr368:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr667);
                                                                                                                                                   addr365:
                                                                                                                                                }
                                                                                                                                                §§goto(addr675);
                                                                                                                                             }
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                          §§goto(addr737);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr454);
                                                                                                                              if(!(_loc24_ || param1))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(!(_loc23_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(b2internal::]!% * _loc11_);
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr95);
                                                                                                                                 }
                                                                                                                                 §§goto(addr655);
                                                                                                                              }
                                                                                                                              §§goto(addr734);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr578);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            §§goto(addr734);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr709);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr694:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc23_ && _loc3_))
                                                                                          {
                                                                                             §§goto(addr651);
                                                                                          }
                                                                                          §§goto(addr732);
                                                                                       }
                                                                                       §§goto(addr651);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr734);
                                                                              }
                                                                           }
                                                                           addr624:
                                                                        }
                                                                        §§goto(addr717);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc23_)
                                                                  {
                                                                  }
                                                                  §§goto(addr734);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         addr733:
                                                         §§goto(addr734);
                                                      }
                                                   }
                                                   §§goto(addr655);
                                                }
                                                §§goto(addr659);
                                             }
                                             break;
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(_loc24_)
                                          {
                                             §§goto(addr694);
                                          }
                                       }
                                    }
                                    §§goto(addr733);
                                 }
                                 §§goto(addr624);
                              }
                              §§goto(addr611);
                           }
                           §§goto(addr645);
                        }
                        §§push(this.§;!]§.x);
                        if(_loc24_)
                        {
                           §§goto(addr651);
                        }
                        §§goto(addr675);
                     }
                     addr644:
                  }
                  §§goto(addr542);
               }
            }
            §§goto(addr644);
         }
         §§goto(addr317);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc37_:Boolean = true;
         var _loc38_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc4_:b2Body = b2internal::&A;
         var _loc5_:b2Body = b2internal::4!d;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         §§push(_loc4_.m_sweep.a);
         if(!(_loc38_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         §§push(_loc5_.m_sweep.a);
         if(!_loc38_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(!_loc38_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         §§push(0);
         if(!(_loc38_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc17_:* = §§pop();
         var _loc18_:Boolean = false;
         §§push(0);
         if(_loc37_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc19_:* = §§pop();
         var _loc20_:b2Mat22 = b2Mat22.§&!i§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§&!i§(_loc9_);
         _loc10_ = _loc20_;
         §§push(this.m_localAnchor1.x);
         if(!_loc38_)
         {
            §§push(§§pop() - b2internal::9&.x);
            if(!(_loc38_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc22_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc37_ || _loc2_)
         {
            §§push(§§pop() - b2internal::9&.y);
            if(!_loc38_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc23_:* = §§pop();
         if(!(_loc38_ && param1))
         {
            §§push(_loc10_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               addr268:
               while(true)
               {
                  §§push(_loc22_);
                  addr269:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr270:
                     while(true)
                     {
                        §§push(_loc10_.col2);
                        addr272:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr273:
                           while(true)
                           {
                              §§push(_loc23_);
                              addr274:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr275:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr276:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr277:
                                       while(true)
                                       {
                                          _loc11_ = §§pop();
                                          addr278:
                                          while(true)
                                          {
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
         §§goto(addr189);
      }
   }
}
