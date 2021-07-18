package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2GearJoint extends b2Joint
   {
       
      
      private var m_ground1:b2Body;
      
      private var m_ground2:b2Body;
      
      private var m_revolute1:b2RevoluteJoint;
      
      private var m_prismatic1:b2PrismaticJoint;
      
      private var m_revolute2:b2RevoluteJoint;
      
      private var m_prismatic2:b2PrismaticJoint;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §'!V§:b2Jacobian;
      
      private var §-"§:Number;
      
      private var §-_§:Number;
      
      private var §9#6§:Number;
      
      private var §##,§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     addr56:
                     while(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           while(true)
                           {
                              this.§'!V§ = new b2Jacobian();
                              continue loop0;
                           }
                           continue;
                           addr38:
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!g.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: "z.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(this.§##,§);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this.§'!V§.§`#C§.x);
                  if(_loc3_)
                  {
                     §§goto(addr55);
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr55);
         }
         addr55:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§##,§);
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr85);
            }
            §§push(§§pop() * §§pop());
         }
         addr85:
         §§push(§§pop() * §§pop());
         if(!_loc2_)
         {
            addr80:
            §§push(this.§'!V§.§`#C§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal:: "z.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc8_)
         {
            §§push(§§pop() - b2internal:: "z.m_sweep.localCenter.x);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc9_ || _loc2_)
         {
            §§push(§§pop() - b2internal:: "z.m_sweep.localCenter.y);
            if(_loc9_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(_loc9_)
         {
            §§push(_loc3_);
            if(_loc9_)
            {
               addr91:
               §§push(§§pop() * §§pop());
               if(_loc9_ || _loc2_)
               {
                  §§push(_loc2_.col2.x);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
               }
               var _loc5_:Number = §§pop();
               if(_loc9_ || param1)
               {
                  §§push(_loc2_.col1.y);
                  if(!_loc8_)
                  {
                     §§push(_loc3_);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc8_)
                        {
                           §§push(_loc2_.col2.y);
                           if(_loc9_ || param1)
                           {
                              §§push(§§pop() * _loc4_);
                              if(_loc9_)
                              {
                                 addr125:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc9_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc9_ || _loc3_)
                                       {
                                          addr149:
                                          §§push(_loc5_);
                                          if(_loc9_ || _loc2_)
                                          {
                                             addr157:
                                             §§push(Number(§§pop()));
                                             if(_loc9_ || this)
                                             {
                                             }
                                             addr170:
                                             §§push(§§pop() * this.§'!V§.§`#C§.x);
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc6_:* = §§pop();
                                             §§push(this.§##,§);
                                             if(_loc9_ || param1)
                                             {
                                                §§push(§§pop() * this.§'!V§.§`#C§.y);
                                                if(_loc9_ || this)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(param1);
                                             if(_loc9_ || param1)
                                             {
                                                §§push(this.§##,§);
                                                if(!_loc8_)
                                                {
                                                   §§push(this.§'!V§.§5V§);
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(_loc9_ || this)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc9_)
                                                               {
                                                                  §§goto(addr270);
                                                               }
                                                               addr270:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc9_)
                                                               {
                                                                  addr264:
                                                                  §§push(_loc4_);
                                                                  if(_loc9_)
                                                                  {
                                                                     addr268:
                                                                     §§push(§§pop() * _loc6_);
                                                                  }
                                                               }
                                                               return §§pop() * §§pop();
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr270);
                                          }
                                          _loc3_ = §§pop();
                                       }
                                       §§push(this.§##,§);
                                       if(_loc8_)
                                       {
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                                 §§goto(addr157);
                              }
                           }
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr157);
               }
               §§goto(addr149);
            }
            §§push(§§pop() + §§pop());
            if(_loc9_ || this)
            {
            }
         }
         §§goto(addr91);
      }
      
      public function § #U§() : Number
      {
         return this.§-_§;
      }
      
      public function §&#]§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§-_§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc4_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::2!g;
         var _loc5_:b2Body = b2internal:: "z;
         §§push(0);
         if(_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(_loc15_ || _loc2_)
         {
            §§push(this.§'!V§);
            if(_loc15_ || _loc2_)
            {
               §§pop().§&"Q§();
               if(_loc15_ || _loc2_)
               {
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(!(_loc16_ && _loc2_))
                        {
                           §§push(§§pop().R);
                           if(!(_loc16_ && this))
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§"j§;
                              if(!_loc16_)
                              {
                                 §§push(_loc10_.col1);
                                 if(_loc15_ || _loc3_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc15_)
                                    {
                                       §§push(_loc11_.x);
                                       if(_loc15_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc16_)
                                          {
                                             §§push(_loc10_.col2);
                                             if(_loc15_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc15_ || param1)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(_loc15_ || _loc2_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc15_ || param1)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(!_loc16_)
                                                               {
                                                                  addr217:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc15_)
                                                                  {
                                                                     addr220:
                                                                     §§push(_loc11_.x);
                                                                     if(_loc15_ || param1)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           addr239:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(!(_loc16_ && _loc2_))
                                                                           {
                                                                              addr247:
                                                                              §§push(§§pop() * _loc11_.y);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc15_ || this)
                                                                           {
                                                                              addr259:
                                                                              _loc7_ = Number(§§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr259);
                                                                     }
                                                                     §§goto(addr247);
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               _loc10_ = _loc4_.m_xf.R;
                                                               if(_loc15_)
                                                               {
                                                                  §§push(this.m_localAnchor1);
                                                                  loop80:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr609:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.m_sweep);
                                                                        addr611:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().localCenter);
                                                                           addr612:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr613:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr614:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr615:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       continue loop80;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr373);
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                   }
                                                }
                                                §§goto(addr247);
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr259);
                                 }
                              }
                              §§goto(addr217);
                           }
                           addr685:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§"j§;
                           if(!(_loc16_ && _loc3_))
                           {
                              §§push(_loc10_.col1);
                              if(_loc15_)
                              {
                                 §§push(§§pop().x);
                                 if(_loc15_)
                                 {
                                    §§push(_loc11_.x);
                                    if(_loc15_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc15_ || _loc3_)
                                       {
                                          §§push(_loc10_.col2);
                                          if(_loc15_ || _loc3_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc15_)
                                             {
                                                §§push(_loc11_.y);
                                                if(!(_loc16_ && this))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc15_ || param1)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         addr760:
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc16_ && _loc2_))
                                                         {
                                                            addr768:
                                                            _loc6_ = §§pop();
                                                            if(!(_loc16_ && _loc2_))
                                                            {
                                                               addr778:
                                                               §§push(_loc10_.col1.y);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(_loc11_.x);
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     addr790:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc15_)
                                                                     {
                                                                        addr793:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc15_)
                                                                        {
                                                                           addr801:
                                                                           §§push(§§pop() + §§pop() * _loc11_.y);
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr804:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr801);
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     addr806:
                                                                     _loc10_ = _loc5_.m_xf.R;
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(this.m_localAnchor2);
                                                                        loop37:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr1249:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.m_sweep);
                                                                              addr1251:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().localCenter);
                                                                                 addr1252:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr1253:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr1254:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr1255:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             continue loop37;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr1248:
                                                                     }
                                                                     loop44:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_localAnchor2);
                                                                        if(_loc15_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           loop45:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.m_sweep);
                                                                              if(_loc15_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop().localCenter);
                                                                                 if(!(_loc16_ && param1))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    loop46:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc15_ || this)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       loop47:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          loop48:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc10_.col1);
                                                                                             loop49:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc15_ || _loc2_)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   loop50:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      loop51:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc10_.col2);
                                                                                                         loop52:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(!(_loc16_ && this))
                                                                                                            {
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(_loc9_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  loop71:
                                                                                                                  while(!(_loc16_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     loop72:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        loop73:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop74:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              loop75:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§'!V§);
                                                                                                                                 loop76:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§`#C§);
                                                                                                                                    §§push(this.§-_§);
                                                                                                                                    if(_loc15_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(_loc15_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr1031:
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(!(_loc16_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr1040:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             §§push(this.§-_§);
                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop());
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   addr1052:
                                                                                                                                                   §§push(§§pop() * _loc7_);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().Set(§§pop(),§§pop());
                                                                                                                                             while(_loc15_ || this)
                                                                                                                                             {
                                                                                                                                                do
                                                                                                                                                {
                                                                                                                                                   §§push(this.§'!V§);
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      continue loop76;
                                                                                                                                                   }
                                                                                                                                                   §§push(this.§-_§);
                                                                                                                                                   if(_loc15_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * _loc12_);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§pop().§5V§ = §§pop();
                                                                                                                                                   loop79:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc15_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(!(_loc16_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               continue loop74;
                                                                                                                                                            }
                                                                                                                                                            if(_loc16_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue loop73;
                                                                                                                                                            }
                                                                                                                                                            if(_loc15_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc15_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr853:
                                                                                                                                                                     if(!(_loc15_ || _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc15_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              break loop79;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                           §§goto(addr853);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop51;
                                                                                                                                                                        addr1135:
                                                                                                                                                                     }
                                                                                                                                                                     §§push(this.§-_§);
                                                                                                                                                                     if(_loc15_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§-_§);
                                                                                                                                                                        if(_loc15_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              addr881:
                                                                                                                                                                              §§push(_loc5_.§3#>§);
                                                                                                                                                                              if(_loc15_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr890:
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop71;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc16_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_.§3"y§);
                                                                                                                                                                                    if(_loc15_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr917:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr915:
                                                                                                                                                                                             §§push(§§pop() * _loc12_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop72;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr920:
                                                                                                                                                                                          if(!(_loc16_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr927:
                                                                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr936:
                                                                                                                                                                                                   if(_loc16_ && _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr956:
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(_loc15_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop47;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr956);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1253);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1188:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!(_loc16_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1197:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                                                                            addr1198:
                                                                                                                                                                                                            while(_loc15_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop49;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                            addr1108:
                                                                                                                                                                                                            while(_loc15_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop71;
                                                                                                                                                                                                                  §§goto(addr920);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1188:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                loop66:
                                                                                                                                                                                                while(!_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                                                                   loop67:
                                                                                                                                                                                                   while(!(_loc16_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc15_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop50;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc15_ || _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop74;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1108);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               break loop67;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1155:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr927);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1188);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      addr1157:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                                                                         addr1158:
                                                                                                                                                                                                         while(!_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                            if(!_loc15_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop74;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc15_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(_loc15_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc16_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     continue loop66;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1254);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1108);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1249);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1198);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   addr1154:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1155);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1153:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1091);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1116);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr915);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1154);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr917);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr890);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr881);
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc10_.col2);
                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1153);
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1255);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop45;
                                                                                                                                                                  addr1144:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1157);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1083);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr956);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1158);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1144);
                                                                                                                                                      §§goto(addr936);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(false);
                                                                                                                                                
                                                                                                                                                §§goto(addr1257);
                                                                                                                                                if(_loc16_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!(_loc15_ || this))
                                                                                                                                                {
                                                                                                                                                   continue loop75;
                                                                                                                                                }
                                                                                                                                                §§goto(addr980);
                                                                                                                                             }
                                                                                                                                             continue loop44;
                                                                                                                                          }
                                                                                                                                          §§goto(addr1052);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1040);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1031);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1188);
                                                                                                         }
                                                                                                         continue loop46;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1197);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1252);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr1251);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1248);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr801);
                                                               }
                                                               §§goto(addr793);
                                                            }
                                                            §§goto(addr806);
                                                         }
                                                         §§goto(addr804);
                                                      }
                                                      §§goto(addr768);
                                                   }
                                                   §§goto(addr790);
                                                }
                                             }
                                             §§goto(addr801);
                                          }
                                          §§goto(addr793);
                                       }
                                       §§goto(addr760);
                                    }
                                    §§goto(addr801);
                                 }
                                 §§goto(addr768);
                              }
                              §§goto(addr778);
                           }
                           §§goto(addr790);
                        }
                        break;
                     }
                     if(_loc15_)
                     {
                        §§push(this.§'!V§);
                        if(!(_loc16_ && param1))
                        {
                           §§pop().§'[§ = -1;
                           if(!_loc16_)
                           {
                              §§push(_loc14_);
                              if(_loc15_)
                              {
                                 §§push(_loc4_.§3"y§);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc15_ || _loc2_)
                                       {
                                          _loc14_ = §§pop();
                                          if(!(_loc16_ && this))
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr617:
                                             if(!this.m_revolute2)
                                             {
                                                §§push(_loc3_.m_xf);
                                                break;
                                             }
                                             if(!(_loc16_ && _loc2_))
                                             {
                                                addr627:
                                                §§push(this.§'!V§);
                                                §§push(this.§-_§);
                                                if(!_loc16_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§5V§ = §§pop();
                                                if(_loc15_)
                                                {
                                                   addr637:
                                                   §§push(_loc14_);
                                                   if(_loc15_)
                                                   {
                                                      addr640:
                                                      §§push(this.§-_§);
                                                      if(_loc15_ || _loc3_)
                                                      {
                                                         §§push(this.§-_§);
                                                         if(_loc15_ || _loc3_)
                                                         {
                                                            addr669:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr666:
                                                               §§push(_loc5_.§3"y§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc15_)
                                                            {
                                                               addr673:
                                                               _loc14_ = Number(§§pop());
                                                               if(_loc15_ || param1)
                                                               {
                                                                  addr1257:
                                                                  §§push(this);
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(_loc15_)
                                                                     {
                                                                        if(§§pop() > 0)
                                                                        {
                                                                           addr1271:
                                                                           §§push(1 / _loc14_);
                                                                           if(_loc15_ || _loc3_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc15_)
                                                                              {
                                                                                 addr1284:
                                                                              }
                                                                           }
                                                                           §§goto(addr1284);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc16_ && _loc3_))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§pop().§9#6§ = §§pop();
                                                                        if(!_loc16_)
                                                                        {
                                                                           if(!param1.§-'§)
                                                                           {
                                                                              this.§##,§ = 0;
                                                                              if(!(_loc16_ && _loc3_))
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          §§push(_loc4_.m_angularVelocity);
                                                                                          if(!(_loc16_ && this))
                                                                                          {
                                                                                             §§push(_loc4_.§3"y§);
                                                                                             if(!(_loc16_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.§##,§);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr1596:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      addr1594:
                                                                                                      §§push(§§pop() * this.§'!V§.§'[§);
                                                                                                   }
                                                                                                   §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_.§ #`§);
                                                                                                      loop33:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               §§push(_loc5_.§ #`§);
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.§3#>§);
                                                                                                                     loop17:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§##,§);
                                                                                                                        loop14:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 §§push(this.§'!V§);
                                                                                                                                 loop20:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§`#C§);
                                                                                                                                    loop18:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       loop8:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc15_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(_loc15_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop2:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc16_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr1558:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      loop23:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  break loop23;
                                                                                                                                                               }
                                                                                                                                                               continue loop12;
                                                                                                                                                            }
                                                                                                                                                            addr1561:
                                                                                                                                                         }
                                                                                                                                                         addr1604:
                                                                                                                                                         loop24:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_.§3#>§);
                                                                                                                                                            if(_loc15_)
                                                                                                                                                            {
                                                                                                                                                               addr1608:
                                                                                                                                                               §§push(this.§##,§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  §§goto(addr1608);
                                                                                                                                                               }
                                                                                                                                                               addr1610:
                                                                                                                                                            }
                                                                                                                                                            addr1611:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§'!V§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc16_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().§43§);
                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1625:
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              addr1627:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 addr1628:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    continue loop34;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1625);
                                                                                                                                                                           }
                                                                                                                                                                           addr1626:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().§43§);
                                                                                                                                                                        }
                                                                                                                                                                        addr1655:
                                                                                                                                                                     }
                                                                                                                                                                     loop7:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        addr1657:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           addr1658:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              addr1659:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 addr1660:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.§ #`§);
                                                                                                                                                                                    addr1601:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_.§ #`§);
                                                                                                                                                                                       addr1603:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop7;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1615:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr1653:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1655);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      loop1:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.§ #`§);
                                                                                                                                                         if(!(_loc15_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc5_.§ #`§);
                                                                                                                                                         if(!(_loc15_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                         if(_loc15_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc16_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc16_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc15_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_.§3#>§);
                                                                                                                                                                        if(_loc15_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc15_ || _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop17;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc15_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc15_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§##,§);
                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc15_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!(_loc16_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1455:
                                                                                                                                                                                          §§push(this.§'!V§);
                                                                                                                                                                                          if(!(_loc15_ || _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop20;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc16_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().§`#C§);
                                                                                                                                                                                             if(!(_loc15_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1480:
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             if(!(_loc15_ || this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1490:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc16_ && this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop2;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1498:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc15_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop1;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1633:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_.§ #`§);
                                                                                                                                                                                                                  addr1635:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc4_.§ #`§);
                                                                                                                                                                                                                     addr1637:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1660);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1561);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1503:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.§3#>§);
                                                                                                                                                                                                      addr1640:
                                                                                                                                                                                                      loop3:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§##,§);
                                                                                                                                                                                                         addr1652:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1653);
                                                                                                                                                                                                            continue loop3;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1628);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1657);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1615);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1490);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1652);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1480);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1658);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1611);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1455);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1659);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1558);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1498);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1637);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1603);
                                                                                                                                                      }
                                                                                                                                                      addr1558:
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      §§push(_loc5_.m_angularVelocity);
                                                                                                                                                      if(_loc15_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.§3"y§);
                                                                                                                                                         if(!(_loc16_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§##,§);
                                                                                                                                                            if(_loc15_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr1356:
                                                                                                                                                               addr1357:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§'!V§.§5V§);
                                                                                                                                                               }
                                                                                                                                                               §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                               return;
                                                                                                                                                               addr1358:
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1356);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1357);
                                                                                                                                                      addr1563:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1640);
                                                                                                                                                }
                                                                                                                                                addr1550:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1610);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1626);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1627);
                                                                                                                           }
                                                                                                                           §§goto(addr1550);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1558);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1635);
                                                                                                         }
                                                                                                         §§goto(addr1601);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1594);
                                                                                          }
                                                                                          §§goto(addr1596);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr1319:
                                                                                    }
                                                                                    §§goto(addr1356);
                                                                                 }
                                                                                 §§goto(addr1503);
                                                                              }
                                                                              §§goto(addr1358);
                                                                           }
                                                                           §§goto(addr1633);
                                                                           addr1297:
                                                                        }
                                                                        §§goto(addr1356);
                                                                     }
                                                                     §§goto(addr1284);
                                                                  }
                                                                  §§goto(addr1271);
                                                                  addr681:
                                                               }
                                                               §§goto(addr1297);
                                                            }
                                                            §§goto(addr673);
                                                         }
                                                         §§goto(addr669);
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr666);
                                                   }
                                                   §§goto(addr673);
                                                }
                                                §§goto(addr681);
                                             }
                                             §§goto(addr1319);
                                          }
                                          §§goto(addr627);
                                       }
                                       §§goto(addr673);
                                    }
                                    §§goto(addr640);
                                 }
                                 §§goto(addr669);
                              }
                              §§goto(addr673);
                           }
                           §§goto(addr1660);
                        }
                        §§goto(addr627);
                     }
                     §§goto(addr1563);
                     §§goto(addr1257);
                  }
                  §§goto(addr685);
                  §§push(§§pop().R);
               }
               §§goto(addr1257);
            }
            §§goto(addr627);
         }
         §§goto(addr637);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = b2internal::2!g;
         var _loc3_:b2Body = b2internal:: "z;
         §§push(this.§'!V§.§1#7§(_loc2_.§ #`§,_loc2_.m_angularVelocity,_loc3_.§ #`§,_loc3_.m_angularVelocity));
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§9#6§);
         if(_loc7_)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               §§push(§§pop() * _loc4_);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            §§push(this);
            §§push(this.§##,§);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() + _loc5_);
            }
            §§pop().§##,§ = §§pop();
            while(true)
            {
               §§push(_loc2_.§ #`§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.§ #`§);
                  addr353:
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(!(_loc6_ && this))
                     {
                        §§push(_loc2_.§3#>§);
                        while(true)
                        {
                           §§push(_loc5_);
                           addr364:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc6_)
                              {
                                 §§push(this.§'!V§);
                                 while(true)
                                 {
                                    §§push(§§pop().§43§);
                                    addr370:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr371:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                 }
                                 addr369:
                              }
                              addr372:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                              }
                           }
                        }
                        addr363:
                     }
                     addr373:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr374:
                        while(true)
                        {
                           §§push(_loc2_.§ #`§);
                           continue loop1;
                        }
                     }
                  }
               }
               if(_loc6_ && param1)
               {
                  continue;
               }
               §§push(_loc3_);
               §§push(_loc3_.m_angularVelocity);
               if(_loc7_ || _loc3_)
               {
                  §§push(_loc3_.§3"y§);
                  if(_loc7_)
                  {
                     §§push(_loc5_);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc7_ || this)
                        {
                           addr87:
                           §§push(§§pop() * this.§'!V§.§5V§);
                        }
                        §§goto(addr89);
                        §§push(§§pop() + §§pop());
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr89);
            }
         }
         §§goto(addr347);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::2!g;
         var _loc4_:b2Body = b2internal:: "z;
         if(!(_loc10_ && this))
         {
            §§push(this.m_revolute1);
            if(_loc9_ || this)
            {
               if(§§pop())
               {
                  if(_loc9_ || this)
                  {
                     addr146:
                     §§push(this.m_revolute1.§4"F§());
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        _loc5_ = §§pop();
                     }
                     addr150:
                  }
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.m_revolute2);
                        if(!(_loc10_ && this))
                        {
                           if(!§§pop())
                           {
                              §§push(this.m_prismatic2.§##2§());
                              if(_loc9_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc9_ || param1)
                                 {
                                    if(_loc9_ || this)
                                    {
                                       if(_loc9_)
                                       {
                                          if(_loc9_)
                                          {
                                             if(_loc9_)
                                             {
                                                _loc6_ = §§pop();
                                                if(_loc9_)
                                                {
                                                   if(_loc9_ || param1)
                                                   {
                                                      while(false)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr152:
                                                      §§push(this.§-"§);
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            §§push(this.§-_§);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc9_)
                                                         {
                                                            addr179:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc7_:* = §§pop();
                                                         §§push(this.§9#6§);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * _loc7_);
                                                               if(!_loc10_)
                                                               {
                                                                  addr197:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc8_:* = §§pop();
                                                            if(!(_loc10_ && this))
                                                            {
                                                               §§push(_loc3_.m_sweep);
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().c);
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.m_sweep);
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.§3#>§);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr656:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§'!V§);
                                                                                       addr658:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§43§);
                                                                                          addr659:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr660:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    loop46:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ || _loc2_))
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop47:
                                                                                       while(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop48:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             loop49:
                                                                                             while(!_loc10_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.m_sweep);
                                                                                                   addr310:
                                                                                                   addr469:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         addr317:
                                                                                                         §§push(§§pop().c);
                                                                                                         if(_loc9_ || this)
                                                                                                         {
                                                                                                            addr325:
                                                                                                            if(!(_loc10_ && this))
                                                                                                            {
                                                                                                               §§push(_loc4_.m_sweep);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop().c);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           continue loop48;
                                                                                                                        }
                                                                                                                        addr354:
                                                                                                                        if(!(_loc10_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(_loc4_.§3#>§);
                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 continue loop47;
                                                                                                                              }
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    continue loop46;
                                                                                                                                 }
                                                                                                                                 addr377:
                                                                                                                                 if(_loc9_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!(_loc10_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(this.§'!V§);
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                addr405:
                                                                                                                                                §§push(§§pop().§`#C§);
                                                                                                                                                if(_loc9_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr414:
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc10_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr429:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc10_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            continue loop48;
                                                                                                                                                         }
                                                                                                                                                         addr661:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            addr662:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               addr663:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.m_sweep);
                                                                                                                                                                  while(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_.m_sweep);
                                                                                                                                                                        addr589:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           addr590:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                              addr591:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.§3#>§);
                                                                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    addr601:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr602:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§'!V§);
                                                                                                                                                                                    addr604:
                                                                                                                                                                                    while(_loc9_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().§43§);
                                                                                                                                                                                       if(!(_loc10_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             break loop47;
                                                                                                                                                                                             §§goto(addr377);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr620:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr659);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr658);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr325);
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc10_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                        while(!(_loc10_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_.m_sweep);
                                                                                                                                                                           while(!(_loc10_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().c);
                                                                                                                                                                                 while(!(_loc10_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_.§3#>§);
                                                                                                                                                                                       addr508:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          addr509:
                                                                                                                                                                                          while(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             while(_loc9_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§'!V§);
                                                                                                                                                                                                while(_loc9_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().§`#C§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop46;
                                                                                                                                                                                                      §§goto(addr405);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr604);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr602);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr601);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr354);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop5;
                                                                                                                                                                                 addr498:
                                                                                                                                                                              }
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr589);
                                                                                                                                                                           §§goto(addr317);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop3;
                                                                                                                                                                        addr479:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop2;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break loop46;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr509);
                                                                                                                                                }
                                                                                                                                                §§goto(addr529);
                                                                                                                                             }
                                                                                                                                             §§goto(addr521);
                                                                                                                                          }
                                                                                                                                          §§goto(addr508);
                                                                                                                                       }
                                                                                                                                       §§goto(addr512);
                                                                                                                                    }
                                                                                                                                    §§goto(addr429);
                                                                                                                                 }
                                                                                                                                 §§goto(addr620);
                                                                                                                              }
                                                                                                                              §§goto(addr414);
                                                                                                                           }
                                                                                                                           §§goto(addr429);
                                                                                                                        }
                                                                                                                        §§goto(addr506);
                                                                                                                     }
                                                                                                                     §§goto(addr590);
                                                                                                                  }
                                                                                                                  §§goto(addr498);
                                                                                                               }
                                                                                                               §§goto(addr488);
                                                                                                            }
                                                                                                            §§goto(addr587);
                                                                                                         }
                                                                                                         §§goto(addr479);
                                                                                                      }
                                                                                                      break;
                                                                                                      addr465:
                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(§§pop().a);
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(_loc4_.§3"y§);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               addr248:
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc9_ || param1)
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(this.§'!V§);
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              addr273:
                                                                                                                              §§push(§§pop().§5V§);
                                                                                                                              if(_loc9_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr281:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    addr284:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc10_ && param1))
                                                                                                                                    {
                                                                                                                                       §§pop().a = §§pop();
                                                                                                                                       loop53:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                          {
                                                                                                                                             addr299:
                                                                                                                                             if(_loc10_ && param1)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr456:
                                                                                                                                          while(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§goto(addr465);
                                                                                                                                             }
                                                                                                                                             §§goto(addr663);
                                                                                                                                             continue loop53;
                                                                                                                                          }
                                                                                                                                          continue loop49;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.m_sweep);
                                                                                                                                          addr553:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.m_sweep);
                                                                                                                                             addr555:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().a);
                                                                                                                                                if(_loc9_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.§3"y§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc9_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§'!V§);
                                                                                                                                                            addr576:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().§'[§);
                                                                                                                                                               addr577:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr578:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr248);
                                                                                                                                                         }
                                                                                                                                                         addr574:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr577);
                                                                                                                                                   }
                                                                                                                                                   addr565:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr299);
                                                                                                                                       }
                                                                                                                                       addr632:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().a = §§pop();
                                                                                                                                       break loop49;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr578);
                                                                                                                              }
                                                                                                                              §§goto(addr577);
                                                                                                                           }
                                                                                                                           §§goto(addr576);
                                                                                                                        }
                                                                                                                        §§goto(addr565);
                                                                                                                     }
                                                                                                                     §§goto(addr281);
                                                                                                                  }
                                                                                                                  §§goto(addr273);
                                                                                                               }
                                                                                                               §§goto(addr574);
                                                                                                            }
                                                                                                            §§goto(addr281);
                                                                                                         }
                                                                                                         §§goto(addr284);
                                                                                                      }
                                                                                                      §§goto(addr555);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr471);
                                                                                                      }
                                                                                                      break;
                                                                                                      §§goto(addr310);
                                                                                                   }
                                                                                                   §§goto(addr553);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr469);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(!_loc10_)
                                                                                       {
                                                                                          §§goto(addr624);
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§goto(addr656);
                                                                                    }
                                                                                    §§goto(addr660);
                                                                                 }
                                                                              }
                                                                              §§goto(addr661);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr549);
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      §§goto(addr179);
                                                      addr83:
                                                   }
                                                   else
                                                   {
                                                      addr96:
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         §§push(this.m_revolute2);
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr126:
                                                   }
                                                }
                                                addr108:
                                                if(_loc9_)
                                                {
                                                   break loop0;
                                                }
                                                continue loop0;
                                             }
                                             addr117:
                                             while(true)
                                             {
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                   }
                                                   addr125:
                                                }
                                                else
                                                {
                                                   §§goto(addr150);
                                                }
                                             }
                                             §§goto(addr126);
                                          }
                                          §§goto(addr125);
                                       }
                                       addr106:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc6_ = §§pop();
                                    §§goto(addr108);
                                 }
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr96);
                        }
                        break;
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr152);
               }
               else
               {
                  §§push(this.m_prismatic1.§##2§());
               }
               §§goto(addr117);
            }
            §§goto(addr146);
         }
         §§goto(addr83);
      }
   }
}
