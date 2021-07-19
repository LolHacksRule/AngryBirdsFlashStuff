package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §+#"§:b2Vec2;
      
      private var §&W§:Number;
      
      private var §?#=§:Number;
      
      private var §<!8§:Number;
      
      private var §4"d§:Number;
      
      private var §##,§:Number;
      
      private var §9#6§:Number;
      
      private var §7!U§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || param1)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               addr171:
               while(true)
               {
                  this.§+#"§ = new b2Vec2();
                  while(true)
                  {
                     super(param1);
                     addr142:
                     while(_loc6_ || _loc2_)
                     {
                        this.m_localAnchor1.SetV(param1.§!"4§);
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.m_localAnchor2.SetV(param1.§#"B§);
            loop6:
            while(true)
            {
               this.§7!U§ = param1.length;
               addr116:
               while(true)
               {
                  this.§&W§ = param1.§""u§;
                  continue loop6;
               }
            }
         }
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
         if(_loc3_)
         {
            §§push(this.§##,§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  §§push(this.§+#"§.x);
                  if(!_loc2_)
                  {
                     addr49:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc3_)
                     {
                        addr52:
                        §§push(this.§##,§);
                        if(!_loc2_)
                        {
                           §§goto(addr78);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr78:
                  §§push(§§pop() * §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§+#"§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
               §§goto(addr49);
            }
            §§goto(addr52);
         }
         §§goto(addr49);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §;!]§() : Number
      {
         return this.§7!U§;
      }
      
      public function §0"4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§7!U§ = param1;
         }
      }
      
      public function §,!$§() : Number
      {
         return this.§&W§;
      }
      
      public function §,!m§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§&W§ = param1;
         }
      }
      
      public function §0!#§() : Number
      {
         return this.§?#=§;
      }
      
      public function §5"3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?#=§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc9_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::2!g;
         _loc5_ = b2internal:: "z;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc21_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc21_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         if(!_loc21_)
         {
            §§push(this.m_localAnchor1.y);
            loop0:
            while(true)
            {
               §§push(_loc4_.m_sweep.localCenter.y);
               loop1:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc7_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(_loc2_.col1);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().x);
                              loop6:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc21_)
                                    {
                                       if(!_loc20_)
                                       {
                                          break;
                                       }
                                       §§push(_loc2_.col2);
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc20_)
                                          {
                                             §§push(_loc7_);
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                             }
                                             addr178:
                                          }
                                          addr179:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc20_ || param1)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          addr123:
                                          §§push(_loc2_.col2);
                                          if(!(_loc20_ || this))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop().y);
                                          if(!_loc21_)
                                          {
                                             addr135:
                                             §§push(_loc7_);
                                             if(_loc20_)
                                             {
                                                addr139:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc21_)
                                                {
                                                   if(_loc21_ && _loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc21_)
                                                   {
                                                      if(_loc20_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop15:
                                                         while(!_loc21_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            do
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§push(_loc3_);
                                                                  if(_loc20_)
                                                                  {
                                                                     if(_loc21_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(_loc21_ && _loc2_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  if(!_loc21_)
                                                                  {
                                                                     if(_loc20_ || param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc20_)
                                                                     {
                                                                        if(!(_loc20_ || _loc3_))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc20_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        §§goto(addr123);
                                                                     }
                                                                     §§goto(addr135);
                                                                  }
                                                                  §§goto(addr179);
                                                                  addr110:
                                                               }
                                                               addr189:
                                                               while(true)
                                                               {
                                                                  addr104:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.col1);
                                                                     if(_loc21_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr110);
                                                                     §§push(§§pop().y);
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                            while(_loc6_ = §§pop(), _loc21_);
                                                            
                                                            while(false)
                                                            {
                                                               §§goto(addr104);
                                                            }
                                                            _loc2_ = _loc5_.m_xf.R;
                                                            §§push(this.m_localAnchor2.x);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                               if(_loc20_)
                                                               {
                                                                  addr218:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc8_:* = §§pop();
                                                               if(!(_loc21_ && _loc3_))
                                                               {
                                                                  §§push(this.m_localAnchor2.y);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.m_sweep.localCenter.y);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.col1);
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr499:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       addr500:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr501:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.col2);
                                                                                             addr503:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr504:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   addr505:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr506:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         addr507:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr508:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               continue loop23;
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
                                                               §§goto(addr322);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         continue loop3;
                                                         addr154:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         §§goto(addr189);
                                                      }
                                                      addr188:
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr179);
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr139);
                                       }
                                    }
                                    §§goto(addr188);
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
         §§goto(addr102);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::2!g;
         var _loc4_:b2Body = b2internal:: "z;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_ || _loc3_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(!_loc19_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc19_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!_loc19_)
            {
               addr61:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc18_)
            {
               §§push(_loc5_);
               if(_loc18_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc19_ && this))
                  {
                     §§push(_loc2_.col2.x);
                     if(!(_loc19_ && this))
                     {
                        addr94:
                        §§push(§§pop() * _loc6_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc19_)
                     {
                     }
                     addr100:
                     var _loc7_:* = §§pop();
                     if(!(_loc19_ && this))
                     {
                        §§push(_loc2_.col1.y);
                        if(_loc18_)
                        {
                           §§push(_loc5_);
                           if(_loc18_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc19_ && param1))
                              {
                                 addr124:
                                 §§push(_loc2_.col2.y);
                                 if(_loc18_)
                                 {
                                    addr129:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc19_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc19_ && _loc2_))
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc18_ || _loc2_)
                                       {
                                          addr150:
                                          §§push(_loc7_);
                                          if(_loc18_)
                                          {
                                             addr154:
                                             _loc5_ = Number(§§pop());
                                          }
                                          §§goto(addr154);
                                       }
                                       _loc2_ = _loc4_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc18_ || param1)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                          if(_loc18_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(!(_loc19_ && _loc2_))
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                          if(!_loc19_)
                                          {
                                             addr201:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc9_:* = §§pop();
                                          if(_loc18_ || this)
                                          {
                                             §§push(_loc2_.col1);
                                             loop0:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc18_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc19_ && this))
                                                      {
                                                         §§push(_loc2_.col2);
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(_loc9_);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr337:
                                                                  addr286:
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc19_ && _loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        continue loop0;
                                                                        addr308:
                                                                        addr373:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc19_ && _loc2_))
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc19_ && this)
                                                                                 {
                                                                                    addr382:
                                                                                    §§push(Number(§§pop()));
                                                                                    break loop4;
                                                                                 }
                                                                              }
                                                                              if(_loc18_)
                                                                              {
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr374);
                                                                     }
                                                                  }
                                                                  if(!(_loc18_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc19_ && _loc2_))
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           §§goto(addr308);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                            }
                                                            §§goto(addr337);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr360);
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      §§push(_loc3_.§ #`§.y);
                                                      if(!(_loc19_ && _loc2_))
                                                      {
                                                         §§push(_loc3_.m_angularVelocity);
                                                         if(!(_loc19_ && _loc2_))
                                                         {
                                                            §§push(§§pop() * _loc5_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc19_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc11_:* = §§pop();
                                                      §§push(_loc4_.§ #`§.x);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(_loc4_.m_angularVelocity);
                                                         if(_loc18_ || _loc2_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(!(_loc19_ && this))
                                                            {
                                                               §§push(§§pop() * _loc9_);
                                                            }
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc18_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc12_:* = §§pop();
                                                      §§push(_loc4_.§ #`§.y);
                                                      if(_loc18_)
                                                      {
                                                         §§push(_loc4_.m_angularVelocity);
                                                         if(!(_loc19_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * _loc8_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc18_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc13_:* = §§pop();
                                                      §§push(this.§+#"§.x);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(_loc12_);
                                                         if(!(_loc19_ && this))
                                                         {
                                                            §§push(_loc10_);
                                                            if(_loc18_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc19_)
                                                               {
                                                                  addr489:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc19_)
                                                                  {
                                                                     addr492:
                                                                     §§push(this.§+#"§.y);
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        addr508:
                                                                        §§push(_loc13_);
                                                                        if(!_loc19_)
                                                                        {
                                                                           addr505:
                                                                           §§push(§§pop() - _loc11_);
                                                                        }
                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                        if(_loc18_ || _loc2_)
                                                                        {
                                                                           addr516:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc14_:* = §§pop();
                                                                        §§push(this.§9#6§);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(!(_loc19_ && _loc3_))
                                                                           {
                                                                              addr530:
                                                                              §§push(_loc14_);
                                                                              if(_loc18_ || _loc3_)
                                                                              {
                                                                                 §§push(this.§4"d§);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    addr558:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(this.§<!8§);
                                                                                       if(!(_loc19_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() * this.§##,§);
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       addr562:
                                                                                       var _loc15_:Number = §§pop();
                                                                                       if(!(_loc19_ && _loc2_))
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(this.§##,§);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc15_);
                                                                                          }
                                                                                          §§pop().§##,§ = §§pop();
                                                                                       }
                                                                                       §§push(_loc15_);
                                                                                       if(!(_loc19_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() * this.§+#"§.x);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc16_:* = §§pop();
                                                                                       §§push(_loc15_);
                                                                                       if(_loc18_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() * this.§+#"§.y);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr608:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc17_:* = §§pop();
                                                                                          if(_loc18_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc3_.§ #`§);
                                                                                             loop11:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_.§ #`§);
                                                                                                loop12:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_.§3#>§);
                                                                                                      loop14:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.§ #`§);
                                                                                                                     loop19:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.§ #`§);
                                                                                                                        loop20:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           loop21:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.§3#>§);
                                                                                                                              loop22:
                                                                                                                              while(_loc18_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc17_);
                                                                                                                                 loop23:
                                                                                                                                 while(_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    loop24:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       loop25:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          loop26:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             §§push(_loc3_.m_angularVelocity);
                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.§3"y§);
                                                                                                                                                if(!(_loc19_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr860:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr853:
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr856:
                                                                                                                                                               §§push(§§pop() * _loc16_);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                         loop27:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_.§ #`§);
                                                                                                                                                            loop28:
                                                                                                                                                            for(; !_loc19_; while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.§ #`§);
                                                                                                                                                               if(!(_loc18_ || this))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop19;
                                                                                                                                                               §§goto(addr657);
                                                                                                                                                            })
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.§ #`§);
                                                                                                                                                               while(!(_loc19_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     while(_loc18_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.§3#>§);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                           addr787:
                                                                                                                                                                           while(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              continue loop24;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc19_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           loop36:
                                                                                                                                                                           while(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                    §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_.§3"y§);
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr652:
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr649:
                                                                                                                                                                                                      §§push(§§pop() * _loc16_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr657:
                                                                                                                                                                                                      if(_loc18_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop26;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop36;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr652);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr649);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr652);
                                                                                                                                                                                 }
                                                                                                                                                                                 return;
                                                                                                                                                                                 addr759:
                                                                                                                                                                              }
                                                                                                                                                                              continue loop18;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop27;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop21;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc4_.§ #`§);
                                                                                                                                                                  continue loop12;
                                                                                                                                                                  if(_loc19_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc19_ && _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop17;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc4_.§3#>§);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        addr712:
                                                                                                                                                                        if(!(_loc18_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop24;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop22;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr725:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_ && this)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop14;
                                                                                                                                                                              }
                                                                                                                                                                              addr735:
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc18_ || _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc19_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc19_ && param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       continue loop28;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop25;
                                                                                                                                                                                    §§goto(addr735);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop13;
                                                                                                                                                                                 addr798:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr742);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr786);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr787);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr725);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr735);
                                                                                                                                                               }
                                                                                                                                                               continue loop20;
                                                                                                                                                            }
                                                                                                                                                            continue loop11;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr856);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr853);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr860);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(!(_loc18_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr689);
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
                                                                                          §§goto(addr759);
                                                                                       }
                                                                                       §§goto(addr608);
                                                                                    }
                                                                                    §§goto(addr562);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr558);
                                                                           }
                                                                           §§goto(addr562);
                                                                        }
                                                                        §§goto(addr530);
                                                                     }
                                                                     §§goto(addr508);
                                                                  }
                                                                  §§goto(addr516);
                                                               }
                                                               §§goto(addr508);
                                                            }
                                                            §§goto(addr505);
                                                         }
                                                         §§goto(addr489);
                                                      }
                                                      §§goto(addr492);
                                                   }
                                                   §§goto(addr337);
                                                }
                                             }
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr201);
                                    }
                                 }
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr100);
                  §§push(Number(§§pop()));
               }
               §§goto(addr94);
            }
            §§goto(addr100);
         }
         §§goto(addr61);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         if(_loc17_)
         {
            if(this.§&W§ > 0)
            {
               if(_loc17_)
               {
                  return true;
               }
            }
         }
         var _loc3_:b2Body = b2internal::2!g;
         var _loc4_:b2Body = b2internal:: "z;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc17_)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!(_loc18_ && _loc2_))
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(!(_loc18_ && _loc3_))
               {
                  addr76:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(!_loc18_)
               {
                  §§push(_loc5_);
                  if(_loc17_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc18_ && _loc3_))
                     {
                        §§push(_loc2_.col2.x);
                        if(_loc17_ || _loc3_)
                        {
                           addr109:
                           §§push(§§pop() * _loc6_);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc17_ || this)
                        {
                           addr119:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        if(_loc17_ || _loc2_)
                        {
                           §§push(_loc2_.col1.y);
                           if(!(_loc18_ && this))
                           {
                              §§push(_loc5_);
                              if(!_loc18_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc17_ || this)
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(!_loc18_)
                                    {
                                       addr154:
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc18_)
                                    {
                                    }
                                    addr174:
                                    _loc5_ = §§pop();
                                    _loc2_ = _loc4_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(_loc17_ || _loc3_)
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                       if(_loc17_ || _loc3_)
                                       {
                                          addr202:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(_loc17_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                          if(_loc17_)
                                          {
                                             addr216:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc9_:* = §§pop();
                                          if(!(_loc18_ && _loc2_))
                                          {
                                             §§push(_loc2_.col1);
                                             loop0:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc17_ || this)
                                                      {
                                                         §§push(_loc2_.col2);
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!(_loc18_ && this))
                                                            {
                                                               §§push(_loc9_);
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc17_ || this)
                                                                  {
                                                                     addr349:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              addr352:
                                                                              while(true)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.col1);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§push(_loc8_);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc17_ || _loc2_)
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(_loc2_.col2);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             addr386:
                                                                                             addr386:
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                addr399:
                                                                                                §§push(§§pop() - _loc5_);
                                                                                                if(_loc17_ || _loc2_)
                                                                                                {
                                                                                                   addr398:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                var _loc10_:* = §§pop();
                                                                                                §§push(_loc4_.m_sweep.c.y);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§push(_loc3_.m_sweep.c.y);
                                                                                                         if(!(_loc18_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc17_ || _loc3_)
                                                                                                            {
                                                                                                               addr432:
                                                                                                               §§push(§§pop() - _loc6_);
                                                                                                               if(_loc17_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr432);
                                                                                                      }
                                                                                                      var _loc11_:* = §§pop();
                                                                                                      var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                               {
                                                                                                                  addr469:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     _loc10_ = §§pop();
                                                                                                                     if(_loc17_ || this)
                                                                                                                     {
                                                                                                                        addr480:
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(!(_loc18_ && this))
                                                                                                                        {
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              if(_loc17_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr509:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    addr512:
                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    if(!(_loc18_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr523:
                                                                                                                                       §§push(§§pop() - this.§7!U§);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          addr526:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    var _loc13_:* = §§pop();
                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(b2Math);
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().§<"X§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                                       if(!(_loc18_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!(_loc18_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             addr561:
                                                                                                                                             §§push(this.§9#6§);
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                addr565:
                                                                                                                                                §§push(-§§pop());
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   addr568:
                                                                                                                                                   §§push(§§pop() * _loc13_);
                                                                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                var _loc14_:* = §§pop();
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   this.§+#"§.Set(_loc10_,_loc11_);
                                                                                                                                                }
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * this.§+#"§.x);
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      addr595:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc15_:* = §§pop();
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * this.§+#"§.y);
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         addr611:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      var _loc16_:* = §§pop();
                                                                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr986:
                                                                                                                                                         _loc3_.m_sweep.c.x -= _loc3_.§3#>§ * _loc15_;
                                                                                                                                                         addr985:
                                                                                                                                                         addr981:
                                                                                                                                                         addr980:
                                                                                                                                                         addr987:
                                                                                                                                                         addr984:
                                                                                                                                                         addr983:
                                                                                                                                                         addr979:
                                                                                                                                                         addr967:
                                                                                                                                                         §§push(_loc3_.m_sweep);
                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr940:
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr944:
                                                                                                                                                               §§push(_loc3_.m_sweep);
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr947:
                                                                                                                                                                  §§push(§§pop().c.y);
                                                                                                                                                                  §§push(_loc3_.§3#>§);
                                                                                                                                                                  if(_loc17_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        addr962:
                                                                                                                                                                        §§pop().y = §§pop() - §§pop() * _loc16_;
                                                                                                                                                                        addr909:
                                                                                                                                                                        addr927:
                                                                                                                                                                        addr926:
                                                                                                                                                                        addr912:
                                                                                                                                                                        addr913:
                                                                                                                                                                        addr924:
                                                                                                                                                                        addr914:
                                                                                                                                                                        addr925:
                                                                                                                                                                        addr911:
                                                                                                                                                                        addr908:
                                                                                                                                                                        addr906:
                                                                                                                                                                        §§push(_loc3_.m_sweep);
                                                                                                                                                                        §§push(_loc3_.m_sweep.a);
                                                                                                                                                                        §§push(_loc3_.§3"y§);
                                                                                                                                                                        §§push(_loc5_ * _loc16_);
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr923:
                                                                                                                                                                           §§push(§§pop() * _loc15_);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().a = §§pop() - §§pop() * (§§pop() - §§pop());
                                                                                                                                                                        addr928:
                                                                                                                                                                        addr961:
                                                                                                                                                                        addr960:
                                                                                                                                                                        addr963:
                                                                                                                                                                        §§push(_loc4_.m_sweep);
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr879:
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           §§push(_loc4_.m_sweep.c.x);
                                                                                                                                                                           if(_loc17_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr890:
                                                                                                                                                                                 §§push(_loc4_.§3#>§);
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr894:
                                                                                                                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       addr898:
                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr769:
                                                                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                                                                             if(_loc17_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                if(_loc17_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc17_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc17_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc17_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc4_.§3#>§);
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc17_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr857:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr867:
                                                                                                                                                                                                                                                      §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                                                      addr868:
                                                                                                                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                            if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop().a);
                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc4_.§3"y§);
                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc17_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                                                                 if(_loc17_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr703:
                                                                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                                                                       if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                                                                          if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr720:
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr735:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr738:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr746:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop().a = §§pop();
                                                                                                                                                                                                                                                                                                               addr756:
                                                                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc3_.§`"a§();
                                                                                                                                                                                                                                                                                                                     addr642:
                                                                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc4_.§`"a§();
                                                                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr898);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           return b2Math.§6"%§(_loc13_) < b2Settings.b2_linearSlop;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr642);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr756);
                                                                                                                                                                                                                                                                                                                     addr765:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr928);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr868);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr909);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr927);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr926);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr912);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr913);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr924);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr923);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr720);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr735);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr720);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr914);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr925);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr703);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr911);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr738);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr746);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr908);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr909);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr769);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr961);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr890);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr960);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr890);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr985);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr894);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr857);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr981);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr879);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr894);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr867);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr980);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr947);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr879);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr944);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr879);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr940);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr879);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr985);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr987);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr963);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr962);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr984);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr986);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr947);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr906);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr983);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr962);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr979);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr967);
                                                                                                                                                         }
                                                                                                                                                         addr966:
                                                                                                                                                         §§goto(addr966);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr765);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr611);
                                                                                                                                                }
                                                                                                                                                §§goto(addr595);
                                                                                                                                             }
                                                                                                                                             §§goto(addr568);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr565);
                                                                                                                                    }
                                                                                                                                    §§goto(addr561);
                                                                                                                                 }
                                                                                                                                 §§goto(addr526);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr523);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr512);
                                                                                                                  }
                                                                                                                  §§goto(addr509);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr523);
                                                                                                         }
                                                                                                         §§goto(addr469);
                                                                                                      }
                                                                                                      §§goto(addr480);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   break loop1;
                                                                                                }
                                                                                                _loc9_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc17_ || _loc2_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                             }
                                                                                             addr311:
                                                                                          }
                                                                                          §§goto(addr398);
                                                                                       }
                                                                                       §§goto(addr399);
                                                                                    }
                                                                                    §§goto(addr359);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr349:
                                                                  }
                                                                  break;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc17_ || _loc3_)
                                                               {
                                                                  break loop1;
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr349);
                                                }
                                                §§push(_loc3_.m_sweep.c.x);
                                                if(_loc17_ || _loc3_)
                                                {
                                                   §§goto(addr386);
                                                }
                                                §§goto(addr399);
                                             }
                                          }
                                          §§goto(addr352);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc17_)
                                 {
                                    _loc6_ = §§pop();
                                    if(!_loc18_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc17_ || this)
                                       {
                                          §§goto(addr174);
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr154);
                           }
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr109);
               }
               §§goto(addr119);
            }
            §§goto(addr76);
         }
         §§goto(addr52);
      }
   }
}
