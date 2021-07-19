package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §""%§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §[!8§:b2Vec2;
      
      private var §%?§:b2Vec2;
      
      private var §0!F§:b2Vec2;
      
      private var §6!L§:b2Mat22;
      
      private var §#X§:b2Vec2;
      
      private var §5!+§:Number;
      
      private var §3-§:Number;
      
      private var §&9§:Number;
      
      private var §[!f§:Number;
      
      private var §,! §:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc5_ || _loc3_)
         {
            this.§""%§ = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  while(true)
                  {
                     this.§[!8§ = new b2Vec2();
                     while(!_loc6_)
                     {
                        this.§%?§ = new b2Vec2();
                        while(true)
                        {
                           this.§0!F§ = new b2Vec2();
                           addr139:
                           while(true)
                           {
                              this.§6!L§ = new b2Mat22();
                           }
                        }
                        addr74:
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                        if(false)
                        {
                           while(true)
                           {
                              §§push(this.§%?§);
                              if(_loc5_)
                              {
                                 §§pop().SetV(param1.target);
                                 continue loop1;
                              }
                           }
                           while(_loc5_)
                           {
                              §§goto(addr83);
                              if(_loc6_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc5_)
                              {
                                 §§goto(addr74);
                              }
                              else
                              {
                                 §§goto(addr139);
                              }
                           }
                           addr83:
                           loop7:
                           while(true)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 super(param1);
                                 §§goto(addr110);
                              }
                              addr133:
                              while(true)
                              {
                                 this.§#X§ = new b2Vec2();
                                 continue loop7;
                              }
                           }
                           addr110:
                           §§goto(addr145);
                        }
                        else
                        {
                           §§push(this.§%?§);
                        }
                        §§push(§§pop().y);
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() - b2internal::8!F.m_xf.position.y);
                           if(_loc5_ || _loc3_)
                           {
                              addr203:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc3_:* = §§pop();
                        _loc4_ = b2internal::8!F.m_xf.R;
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(this.§[!8§);
                           loop11:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr355:
                              while(true)
                              {
                                 §§push(_loc4_.col1.x);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr372:
                                       while(true)
                                       {
                                          §§push(_loc4_.col1.y);
                                          addr375:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                    }
                                    addr371:
                                 }
                                 addr376:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr377:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       continue loop11;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr261);
                     }
                  }
               }
               if(_loc6_ && this)
               {
                  continue;
               }
               §§push(this.§%?§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop().x);
                  if(_loc5_)
                  {
                     §§push(§§pop() - b2internal::8!F.m_xf.position.x);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr57);
                        }
                        §§goto(addr203);
                     }
                  }
                  §§goto(addr57);
               }
               §§goto(addr173);
            }
         }
         §§goto(addr133);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§%?§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.§[!8§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§0!F§.x);
            if(_loc2_)
            {
               addr46:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§0!F§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr46);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §'#§() : b2Vec2
      {
         return this.§%?§;
      }
      
      public function §!!;§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(b2internal::8!F.IsAwake() == false)
            {
               while(true)
               {
                  b2internal::8!F.SetAwake(true);
                  addr59:
                  while(true)
                  {
                  }
               }
               addr56:
            }
            while(true)
            {
               this.§%?§ = param1;
               if(_loc3_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr56);
            }
         }
      }
      
      public function §?Q§() : Number
      {
         return this.§5!+§;
      }
      
      public function §&!4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5!+§ = param1;
         }
      }
      
      public function §-3§() : Number
      {
         return this.§3-§;
      }
      
      public function §1n§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3-§ = param1;
         }
      }
      
      public function §3i§() : Number
      {
         return this.§&9§;
      }
      
      public function § R§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&9§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::8!F;
         §§push(_loc2_.GetMass());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(_loc13_)
         {
            §§push(§§pop() * this.§3-§);
            if(_loc13_ || _loc3_)
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(_loc13_)
            {
               §§push(this.§&9§);
               if(!_loc14_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc13_ || param1)
                  {
                     addr68:
                     §§push(§§pop() * _loc4_);
                     if(!(_loc14_ && _loc2_))
                     {
                        addr76:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(_loc3_);
                     if(_loc13_)
                     {
                        §§push(_loc4_);
                        if(_loc13_ || param1)
                        {
                           addr96:
                           §§push(§§pop() * §§pop());
                           if(!_loc14_)
                           {
                              §§push(_loc4_);
                           }
                           var _loc6_:Number = §§pop();
                           if(!(_loc14_ && _loc2_))
                           {
                              §§push(this);
                              §§push(param1.§`!9§);
                              if(!_loc14_)
                              {
                                 §§push(_loc5_);
                                 if(_loc13_)
                                 {
                                    §§push(param1.§`!9§);
                                    if(_loc13_ || this)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§pop().§,! § = §§pop();
                              loop0:
                              while(true)
                              {
                                 addr148:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc13_)
                                    {
                                       §§push(this.§,! §);
                                       if(_loc13_)
                                       {
                                          if(§§pop() != 0)
                                          {
                                             addr158:
                                             §§push(1 / this.§,! §);
                                             if(!_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc13_ || _loc2_))
                                                {
                                                   addr181:
                                                   §§push(Number(§§pop()));
                                                }
                                                else
                                                {
                                                   addr172:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(!(_loc14_ && param1))
                                             {
                                                §§goto(addr181);
                                             }
                                          }
                                          §§pop().§,! § = §§pop();
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(param1.§`!9§);
                                             if(_loc13_ || _loc3_)
                                             {
                                                §§push(_loc6_);
                                                if(_loc13_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc14_ && this))
                                                   {
                                                      addr135:
                                                      §§push(§§pop() * this.§,! §);
                                                   }
                                                   §§pop().§[!f§ = §§pop();
                                                   if(_loc13_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue;
                                                }
                                             }
                                             §§goto(addr135);
                                          }
                                          addr207:
                                          _loc7_ = _loc2_.m_xf.R;
                                          §§push(this.§[!8§.x);
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(!(_loc14_ && _loc2_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.§[!8§.y);
                                          if(_loc13_ || _loc3_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                             if(_loc13_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc9_:* = §§pop();
                                          §§push(_loc7_.col1.x);
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc13_ || this)
                                                {
                                                   §§push(_loc7_.col2.x);
                                                   if(_loc13_)
                                                   {
                                                      addr286:
                                                      §§push(§§pop() * _loc9_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc14_)
                                                   {
                                                      addr291:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc10_:* = §§pop();
                                                if(_loc13_)
                                                {
                                                   §§push(_loc7_.col1);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().y);
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc14_ && this))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            while(true)
                                                            {
                                                               §§push(_loc7_.col2.y);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop() * _loc9_);
                                                               }
                                                               addr1103:
                                                               if(_loc14_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  _loc11_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(_loc2_.§`!`§);
                                                                        if(_loc13_ || _loc2_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        addr1091:
                                                                        _loc12_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(this.K1);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().col1);
                                                                              addr1056:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 addr1057:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr1058:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.K1);
                                                                                       addr1048:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().col2);
                                                                                          addr1049:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr1050:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                addr1051:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.K1);
                                                                                                   continue loop16;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(_loc14_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr511);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1130);
                                                                     }
                                                                  }
                                                                  addr1161:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr1162);
                                                                     §§goto(addr1083);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr1161);
                                                         }
                                                      }
                                                      if(_loc14_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.§""%§.col1.x);
                                                      if(_loc13_ || param1)
                                                      {
                                                         if(!(_loc14_ && _loc2_))
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               §§push(this.§,! §);
                                                               if(_loc13_)
                                                               {
                                                                  addr808:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc13_)
                                                                  {
                                                                     §§goto(addr810);
                                                                  }
                                                                  §§goto(addr956);
                                                               }
                                                               §§goto(addr946);
                                                            }
                                                            §§goto(addr1043);
                                                         }
                                                         §§goto(addr1004);
                                                      }
                                                      §§goto(addr808);
                                                   }
                                                }
                                                §§goto(addr556);
                                             }
                                             §§goto(addr286);
                                          }
                                          §§goto(addr291);
                                          addr183:
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr158);
                                 }
                              }
                           }
                           §§goto(addr183);
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc13_)
                        {
                        }
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr68);
         }
         §§goto(addr48);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::8!F;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§[!8§.x);
         if(_loc15_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§[!8§.y);
         if(_loc15_ || _loc2_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc15_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(_loc15_ || this)
         {
            §§push(_loc3_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               addr186:
               while(true)
               {
                  §§push(_loc6_);
                  addr187:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc16_)
                     {
                        break;
                     }
                     §§push(_loc3_.col2);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr193:
                        while(true)
                        {
                           §§push(_loc7_);
                           addr194:
                           addr215:
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc15_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr199:
                                 addr174:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    addr200:
                                    addr214:
                                    while(true)
                                    {
                                       continue loop0;
                                    }
                                    break loop5;
                                 }
                                 if(!(_loc15_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 _loc7_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc16_)
                                       {
                                          break;
                                       }
                                       if(_loc16_ && _loc3_)
                                       {
                                          continue loop3;
                                       }
                                       if(_loc15_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr199);
                                    }
                                    break;
                                 }
                                 var _loc8_:* = §§pop();
                                 §§push(_loc2_.§?!^§.y);
                                 if(!_loc16_)
                                 {
                                    §§push(_loc2_.m_angularVelocity);
                                    if(_loc15_)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc15_)
                                    {
                                       addr239:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc9_:* = §§pop();
                                    _loc3_ = this.§6!L§;
                                    if(_loc15_ || param1)
                                    {
                                       §§push(_loc8_);
                                       if(!(_loc16_ && param1))
                                       {
                                          §§push(this.§[!f§);
                                          if(_loc15_ || param1)
                                          {
                                             §§push(this.§#X§);
                                             if(!(_loc16_ && _loc2_))
                                             {
                                                §§push(§§pop().x);
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         §§push(this.§,! §);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(this.§0!F§);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc15_ || _loc3_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc16_ && _loc2_))
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(_loc15_ || param1)
                                                                           {
                                                                              addr330:
                                                                              §§push(_loc9_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 §§push(this.§[!f§);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    addr339:
                                                                                    §§push(this.§#X§.y);
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             §§push(this.§,! §);
                                                                                             if(_loc15_ || param1)
                                                                                             {
                                                                                                addr372:
                                                                                                §§push(this.§0!F§.y);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr377:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            addr387:
                                                                                                            §§push(_loc3_.col1.x);
                                                                                                            if(_loc15_ || _loc2_)
                                                                                                            {
                                                                                                               addr407:
                                                                                                               §§push(_loc4_);
                                                                                                               if(!(_loc16_ && this))
                                                                                                               {
                                                                                                                  addr442:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc15_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr423:
                                                                                                                     §§push(_loc3_.col2.x);
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        addr429:
                                                                                                                        §§push(§§pop() * _loc5_);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc10_:* = §§pop();
                                                                                                                  §§push(_loc3_.col1.y);
                                                                                                                  if(_loc15_ || param1)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc15_ || this)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.col2.y);
                                                                                                                           if(!(_loc16_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr474:
                                                                                                                              §§push(§§pop() * _loc5_);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              addr479:
                                                                                                                              §§push(-§§pop());
                                                                                                                              if(!(_loc16_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr487:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           var _loc11_:* = §§pop();
                                                                                                                           §§push(this.§0!F§.x);
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                           §§push(this.§0!F§.y);
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc13_:* = §§pop();
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              §§push(this.§0!F§);
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 §§push(this.§0!F§);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(_loc15_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       if(!(_loc16_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             if(_loc15_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr544:
                                                                                                                                                addr542:
                                                                                                                                                §§push(this.§0!F§);
                                                                                                                                                §§push(this.§0!F§.y);
                                                                                                                                                if(_loc15_ || param1)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr554:
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                addr555:
                                                                                                                                                §§push(param1.§`!9§);
                                                                                                                                                if(_loc15_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * this.§5!+§);
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      addr569:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc14_:* = §§pop();
                                                                                                                                                   if(!(_loc16_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§0!F§);
                                                                                                                                                      if(_loc15_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().§<T§());
                                                                                                                                                         loop12:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            loop13:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * _loc14_);
                                                                                                                                                               loop14:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§0!F§);
                                                                                                                                                                        addr804:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() / this.§0!F§.Length());
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§>[§(§§pop());
                                                                                                                                                                           addr812:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr792:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§0!F§);
                                                                                                                                                                     loop17:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        loop18:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           loop19:
                                                                                                                                                                           while(_loc15_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              loop20:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 loop21:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                                                                    addr777:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§0!F§);
                                                                                                                                                                                       if(_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(_loc15_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop12;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             continue loop12;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop13;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr804);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr812);
                                                                                                                                                }
                                                                                                                                                §§goto(addr569);
                                                                                                                                             }
                                                                                                                                             §§goto(addr555);
                                                                                                                                          }
                                                                                                                                          §§push(_loc11_);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr554);
                                                                                                                                 }
                                                                                                                                 §§goto(addr544);
                                                                                                                              }
                                                                                                                              §§goto(addr542);
                                                                                                                           }
                                                                                                                           §§goto(addr544);
                                                                                                                        }
                                                                                                                        §§goto(addr479);
                                                                                                                     }
                                                                                                                     §§goto(addr474);
                                                                                                                  }
                                                                                                                  §§goto(addr487);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc16_ && this))
                                                                                                               {
                                                                                                                  addr438:
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     addr441:
                                                                                                                     §§goto(addr442);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr442);
                                                                                                               }
                                                                                                               §§goto(addr441);
                                                                                                            }
                                                                                                            §§goto(addr442);
                                                                                                         }
                                                                                                         §§goto(addr441);
                                                                                                      }
                                                                                                      §§goto(addr423);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr429);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr407);
                                                                                       }
                                                                                       §§goto(addr372);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr429);
                                                                              }
                                                                              §§goto(addr441);
                                                                           }
                                                                           §§goto(addr387);
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                     §§goto(addr442);
                                                                  }
                                                                  §§goto(addr372);
                                                               }
                                                               §§goto(addr377);
                                                            }
                                                         }
                                                         §§goto(addr372);
                                                      }
                                                      §§goto(addr407);
                                                   }
                                                   §§goto(addr442);
                                                }
                                                §§goto(addr429);
                                             }
                                          }
                                          §§goto(addr339);
                                       }
                                       §§goto(addr438);
                                    }
                                    §§goto(addr330);
                                 }
                                 §§goto(addr239);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc15_ || this)
                           {
                              addr223:
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr224);
                        }
                     }
                  }
                  §§push(_loc2_.m_angularVelocity);
                  if(_loc15_)
                  {
                     §§push(-§§pop());
                     if(!_loc16_)
                     {
                        §§goto(addr213);
                     }
                  }
                  §§goto(addr215);
               }
            }
         }
         §§goto(addr182);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
