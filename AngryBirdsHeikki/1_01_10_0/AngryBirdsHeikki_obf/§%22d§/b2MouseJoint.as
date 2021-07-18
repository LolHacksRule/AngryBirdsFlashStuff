package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §=6§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §3!K§:b2Vec2;
      
      private var §!v§:b2Vec2;
      
      private var §12§:b2Vec2;
      
      private var §`!6§:b2Mat22;
      
      private var §@c§:b2Vec2;
      
      private var §-+§:Number;
      
      private var §26§:Number;
      
      private var §1b§:Number;
      
      private var §1!>§:Number;
      
      private var §-!'§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(!_loc5_)
         {
            this.§=6§ = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§3!K§ = new b2Vec2();
                     loop3:
                     while(!_loc5_)
                     {
                        this.§!v§ = new b2Vec2();
                        addr91:
                        if(!(_loc5_ && _loc3_))
                        {
                           loop9:
                           while(true)
                           {
                              §§push(this.§!v§);
                              loop10:
                              while(true)
                              {
                                 §§pop().SetV(param1.target);
                                 loop11:
                                 while(true)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(this.§!v§);
                                       if(_loc6_ || param1)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop10;
                                          }
                                          §§push(§§pop().x);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() - b2internal::2!`.m_xf.position.x);
                                             if(_loc6_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc6_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   addr53:
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break loop9;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         if(true)
                                                         {
                                                            §§push(this.§!v§);
                                                         }
                                                         continue loop9;
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   loop5:
                                                   while(true)
                                                   {
                                                      this.§`!6§ = new b2Mat22();
                                                      while(true)
                                                      {
                                                         this.§@c§ = new b2Vec2();
                                                         loop7:
                                                         for(; _loc6_; while(true)
                                                         {
                                                            if(!(_loc6_ || _loc2_))
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§goto(addr91);
                                                            continue loop11;
                                                         },continue loop3)
                                                         {
                                                            addr106:
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               super(param1);
                                                               continue;
                                                            }
                                                            addr131:
                                                            while(true)
                                                            {
                                                               this.§12§ = new b2Vec2();
                                                               continue loop5;
                                                               §§goto(addr106);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          var _loc3_:* = §§pop();
                                          _loc4_ = b2internal::2!`.m_xf.R;
                                          if(_loc6_ || _loc2_)
                                          {
                                             addr349:
                                             addr368:
                                             addr346:
                                             addr345:
                                             §§push(this.§3!K§);
                                             §§push(_loc2_ * _loc4_.col1.x);
                                             if(_loc6_)
                                             {
                                                addr367:
                                                §§push(§§pop() + _loc3_ * _loc4_.col1.y);
                                             }
                                             §§pop().x = §§pop();
                                             addr369:
                                             §§push(this.§3!K§);
                                             if(!_loc5_)
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc4_.col2.x);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr303:
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  addr318:
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(_loc4_.col2.y);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr333:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              addr341:
                                                                              §§pop().y = §§pop() + §§pop();
                                                                              this.§-+§ = param1.§ N§;
                                                                              addr342:
                                                                              if(_loc6_)
                                                                              {
                                                                                 this.§12§.§^!,§();
                                                                                 this.§26§ = param1.§&!a§;
                                                                                 addr235:
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    if(_loc6_ || _loc2_)
                                                                                    {
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          this.§1b§ = param1.§0J§;
                                                                                          this.§1!>§ = 0;
                                                                                          addr221:
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             this.§-!'§ = 0;
                                                                                             if(_loc6_ || _loc2_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr235);
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr221);
                                                                                          }
                                                                                          addr229:
                                                                                          §§goto(addr229);
                                                                                          addr256:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 addr261:
                                                                                 §§goto(addr261);
                                                                              }
                                                                              §§goto(addr369);
                                                                           }
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                     §§goto(addr349);
                                                                  }
                                                                  §§goto(addr367);
                                                               }
                                                               §§goto(addr333);
                                                            }
                                                            §§goto(addr368);
                                                         }
                                                         §§goto(addr341);
                                                      }
                                                      §§goto(addr318);
                                                   }
                                                   §§goto(addr346);
                                                }
                                                §§goto(addr303);
                                             }
                                             §§goto(addr345);
                                          }
                                          §§goto(addr256);
                                       }
                                       break;
                                    }
                                    §§goto(addr84);
                                 }
                                 §§push(§§pop().y);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() - b2internal::2!`.m_xf.position.y);
                                    if(!(_loc5_ && this))
                                    {
                                       addr174:
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr174);
                              }
                           }
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§!v§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.§3!K§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§12§.x);
            if(!_loc3_)
            {
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() * this.§12§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §0x§() : b2Vec2
      {
         return this.§!v§;
      }
      
      public function §#!c§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(b2internal::2!`.IsAwake() == false)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr66:
                  b2internal::2!`.SetAwake(true);
               }
               while(true)
               {
               }
               addr69:
            }
            while(true)
            {
               this.§!v§ = param1;
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §2§() : Number
      {
         return this.§-+§;
      }
      
      public function §2!>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-+§ = param1;
         }
      }
      
      public function §[!a§() : Number
      {
         return this.§26§;
      }
      
      public function §+>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§26§ = param1;
         }
      }
      
      public function §">§() : Number
      {
         return this.§1b§;
      }
      
      public function §3R§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§1b§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::2!`;
         §§push(_loc2_.GetMass());
         if(!(_loc14_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(!_loc14_)
         {
            §§push(§§pop() * this.§26§);
            if(_loc13_ || param1)
            {
               addr53:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(!(_loc14_ && _loc2_))
            {
               §§push(this.§1b§);
               if(_loc13_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc13_ || this)
                  {
                     addr78:
                     §§push(§§pop() * _loc4_);
                     if(_loc14_ && _loc2_)
                     {
                     }
                     addr87:
                     var _loc5_:* = §§pop();
                     §§push(_loc3_);
                     if(_loc13_ || this)
                     {
                        §§push(_loc4_);
                        if(!_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc13_ || _loc3_)
                           {
                              addr108:
                              §§push(§§pop() * _loc4_);
                              if(!_loc13_)
                              {
                              }
                              addr112:
                              var _loc6_:* = §§pop();
                              if(!_loc14_)
                              {
                                 §§push(this);
                                 §§push(param1.§?u§);
                                 if(!_loc14_)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc14_ && _loc3_))
                                    {
                                       §§push(param1.§?u§);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop() * _loc6_);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§pop().§-!'§ = §§pop();
                                 loop0:
                                 while(true)
                                 {
                                    addr148:
                                    while(true)
                                    {
                                       §§push(this);
                                       if(_loc13_ || _loc2_)
                                       {
                                          §§push(this.§-!'§);
                                          if(!_loc14_)
                                          {
                                             if(§§pop() != 0)
                                             {
                                                addr163:
                                                §§push(1 / this.§-!'§);
                                                if(_loc13_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc14_ && _loc2_))
                                                   {
                                                      addr177:
                                                   }
                                                }
                                                else
                                                {
                                                   addr181:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                §§push(0);
                                                if(_loc13_)
                                                {
                                                   §§goto(addr181);
                                                }
                                             }
                                             §§pop().§-!'§ = §§pop();
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(param1.§?u§);
                                                if(!_loc14_)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc13_ || this)
                                                   {
                                                      addr136:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc13_)
                                                      {
                                                         §§push(this.§-!'§);
                                                      }
                                                      §§pop().§1!>§ = §§pop();
                                                      if(_loc13_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr136);
                                             }
                                             addr207:
                                             _loc7_ = _loc2_.m_xf.R;
                                             §§push(this.§3!K§.x);
                                             if(_loc13_ || _loc3_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                if(!_loc14_)
                                                {
                                                   addr229:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                §§push(this.§3!K§.y);
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc9_:* = §§pop();
                                                §§push(_loc7_.col1.x);
                                                if(!_loc14_)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc13_)
                                                      {
                                                         §§push(_loc7_.col2.x);
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            addr271:
                                                            §§push(§§pop() * _loc9_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc13_ || param1)
                                                         {
                                                            addr281:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc10_:* = §§pop();
                                                         if(!_loc14_)
                                                         {
                                                            §§push(_loc7_.col1);
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().y);
                                                               if(_loc13_ || _loc2_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(_loc13_ || this)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc14_)
                                                                     {
                                                                        addr1043:
                                                                        §§push(_loc7_.col2.y);
                                                                        if(_loc13_)
                                                                        {
                                                                           addr1058:
                                                                           §§push(§§pop() * _loc9_);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           addr1063:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr1020:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    addr1021:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§",§);
                                                                                       addr998:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        if(!(_loc13_ || param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc11_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§-2§);
                                                                           if(!(_loc14_ && _loc3_))
                                                                           {
                                                                              if(_loc13_ || param1)
                                                                              {
                                                                                 addr984:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc13_ || _loc3_)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       _loc12_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.K1);
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().col1);
                                                                                             addr963:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                addr964:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr965:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.K1);
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(!(_loc14_ && _loc2_))
                                                                                          {
                                                                                             §§goto(addr737);
                                                                                             §§push(this.§=6§);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr998);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr1020);
                                                                           }
                                                                           §§goto(addr984);
                                                                        }
                                                                        §§goto(addr999);
                                                                     }
                                                                  }
                                                                  §§goto(addr1058);
                                                               }
                                                               §§goto(addr1043);
                                                               while(true)
                                                               {
                                                                  if(!(_loc13_ || _loc3_))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr910);
                                                                  §§push(_loc12_);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1021);
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   §§goto(addr271);
                                                }
                                                §§goto(addr281);
                                             }
                                             §§goto(addr229);
                                             addr183:
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr163);
                                    }
                                 }
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr112);
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr87);
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr78);
         }
         §§goto(addr53);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::2!`;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§3!K§.x);
         if(_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc16_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§3!K§.y);
         if(!_loc15_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(!(_loc15_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(_loc16_)
         {
            §§push(_loc3_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(_loc16_ || param1)
               {
                  §§push(_loc6_);
                  loop1:
                  while(true)
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
                           if(!_loc15_)
                           {
                              §§push(_loc7_);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc15_ && this))
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc16_ || _loc3_)
                                       {
                                          _loc4_ = §§pop();
                                          while(true)
                                          {
                                             addr104:
                                             while(true)
                                             {
                                                §§push(_loc3_.col1);
                                                if(_loc15_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc16_ || this)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(_loc6_);
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            if(_loc16_ || this)
                                                            {
                                                               §§push(§§pop().y);
                                                               if(_loc15_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(_loc15_ && param1)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc16_ || _loc2_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc15_ && _loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc15_ && _loc3_)
                                                                           {
                                                                              addr249:
                                                                              §§push(Number(§§pop()));
                                                                              break loop5;
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!(_loc16_ || _loc2_))
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                        addr222:
                                                                        §§push(_loc2_.m_angularVelocity);
                                                                        if(_loc16_ || _loc3_)
                                                                        {
                                                                        }
                                                                        break;
                                                                        addr157:
                                                                     }
                                                                     §§push(-§§pop());
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop4;
                                                                  addr240:
                                                                  break;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         §§goto(addr249);
                                                      }
                                                      break loop5;
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr222);
                                             }
                                             continue loop0;
                                             if(!(_loc16_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(false)
                                             {
                                                §§goto(addr104);
                                             }
                                             §§push(_loc2_.§@S§.x);
                                             if(!(_loc15_ && param1))
                                             {
                                                §§goto(addr222);
                                             }
                                             §§goto(addr249);
                                          }
                                       }
                                       break;
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(_loc2_.§@S§.y);
                                    if(_loc16_ || this)
                                    {
                                       §§push(_loc2_.m_angularVelocity);
                                       if(!(_loc15_ && param1))
                                       {
                                          §§push(§§pop() * _loc6_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc15_ && this))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc9_:* = §§pop();
                                    _loc3_ = this.§`!6§;
                                    if(!_loc15_)
                                    {
                                       §§push(_loc8_);
                                       if(_loc16_)
                                       {
                                          §§push(this.§1!>§);
                                          if(_loc16_ || param1)
                                          {
                                             §§push(this.§@c§);
                                             if(_loc16_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc16_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc16_)
                                                      {
                                                         §§push(this.§-!'§);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(this.§12§);
                                                            if(_loc16_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           addr353:
                                                                           _loc4_ = §§pop();
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(_loc16_ || _loc2_)
                                                                              {
                                                                                 §§push(this.§1!>§);
                                                                                 if(!(_loc15_ && param1))
                                                                                 {
                                                                                    addr378:
                                                                                    §§push(this.§@c§.y);
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc15_ && _loc3_))
                                                                                       {
                                                                                          addr396:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc15_ && param1))
                                                                                          {
                                                                                             addr404:
                                                                                             §§push(this.§-!'§);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr410:
                                                                                                §§push(this.§12§.y);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   addr413:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      addr416:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr419:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            addr423:
                                                                                                            §§push(_loc3_.col1.x);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               addr438:
                                                                                                               §§push(_loc4_);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr441:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc16_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.col2.x);
                                                                                                                     if(_loc16_ || param1)
                                                                                                                     {
                                                                                                                        addr461:
                                                                                                                        §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           addr464:
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(_loc16_ || this)
                                                                                                                           {
                                                                                                                              addr472:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr461);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr461);
                                                                                                            }
                                                                                                            var _loc10_:* = §§pop();
                                                                                                            §§push(_loc3_.col1.y);
                                                                                                            if(!(_loc15_ && this))
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               if(!(_loc15_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc16_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.col2.y);
                                                                                                                     if(!(_loc15_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr510:
                                                                                                                        §§push(§§pop() * _loc5_);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr519:
                                                                                                                        var _loc11_:* = §§pop();
                                                                                                                        §§push(this.§12§.x);
                                                                                                                        if(_loc16_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc12_:* = §§pop();
                                                                                                                        §§push(this.§12§.y);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc13_:* = §§pop();
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§push(this.§12§);
                                                                                                                           if(_loc16_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(this.§12§);
                                                                                                                              if(_loc16_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(!(_loc15_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc10_);
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          addr573:
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          if(!(_loc15_ && param1))
                                                                                                                                          {
                                                                                                                                             addr585:
                                                                                                                                             §§push(this.§12§);
                                                                                                                                             §§push(this.§12§.y);
                                                                                                                                             if(!(_loc15_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr593:
                                                                                                                                                §§push(§§pop() + _loc11_);
                                                                                                                                             }
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                          }
                                                                                                                                          §§push(param1.§?u§);
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * this.§-+§);
                                                                                                                                             if(_loc16_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr610:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             var _loc14_:* = §§pop();
                                                                                                                                             if(!(_loc15_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(this.§12§);
                                                                                                                                                loop11:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().§,H§());
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
                                                                                                                                                               loop15:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§12§);
                                                                                                                                                                  loop16:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(!(_loc15_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / this.§12§.§--§());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§0O§(§§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        loop33:
                                                                                                                                                                        while(!(_loc15_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr768:
                                                                                                                                                                           §§push(_loc2_.§@S§);
                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc2_.§@S§);
                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc16_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc2_.§",§);
                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                             if(!(_loc15_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr718:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!(_loc15_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr726:
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc16_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      loop34:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc16_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc16_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                            §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                            if(!(_loc15_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc2_.§-2§);
                                                                                                                                                                                                               if(_loc16_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                  if(!(_loc15_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr670:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr658:
                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                           if(_loc16_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr666:
                                                                                                                                                                                                                              §§push(§§pop() * _loc10_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr829:
                                                                                                                                                                                                                              loop24:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§12§);
                                                                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                 if(!(_loc15_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr784:
                                                                                                                                                                                                                                    if(!(_loc15_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                       if(!(_loc15_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          if(!(_loc15_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr809:
                                                                                                                                                                                                                                                if(!(_loc15_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr817:
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   if(!(_loc16_ || _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc2_.§@S§);
                                                                                                                                                                                                                                                      addr752:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc2_.§@S§);
                                                                                                                                                                                                                                                         addr754:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            addr755:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc2_.§",§);
                                                                                                                                                                                                                                                               addr757:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                                                                                                                  addr758:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     addr759:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        addr760:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr768);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop34;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                                                                      addr833:
                                                                                                                                                                                                                                                      while(!_loc15_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc15_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            §§goto(addr784);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop14;
                                                                                                                                                                                                                                                      §§goto(addr809);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr832:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc10_ = §§pop();
                                                                                                                                                                                                                                                continue loop24;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr817);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr833);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr838);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr817);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(!_loc15_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr832);
                                                                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                                                                 §§goto(addr840);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr840:
                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr666);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr658);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr670);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr825);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr760);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr759);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr758);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr757);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr718);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr755);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr726);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr754);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr752);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr829);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr825);
                                                                                                                                          }
                                                                                                                                          §§goto(addr610);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr593);
                                                                                                                                 }
                                                                                                                                 §§goto(addr573);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr585);
                                                                                                                     }
                                                                                                                     §§goto(addr519);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr519);
                                                                                                               }
                                                                                                               §§goto(addr510);
                                                                                                            }
                                                                                                            §§goto(addr519);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr464);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr461);
                                                                                             }
                                                                                             §§goto(addr441);
                                                                                          }
                                                                                          §§goto(addr472);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr461);
                                                                                 }
                                                                                 §§goto(addr396);
                                                                              }
                                                                              §§goto(addr404);
                                                                           }
                                                                           §§goto(addr423);
                                                                        }
                                                                        §§goto(addr419);
                                                                     }
                                                                     §§goto(addr353);
                                                                  }
                                                                  §§goto(addr416);
                                                               }
                                                               §§goto(addr461);
                                                            }
                                                            §§goto(addr410);
                                                         }
                                                         §§goto(addr441);
                                                      }
                                                      §§goto(addr472);
                                                   }
                                                   §§goto(addr378);
                                                }
                                                §§goto(addr413);
                                             }
                                             §§goto(addr378);
                                          }
                                          §§goto(addr410);
                                       }
                                       §§goto(addr438);
                                    }
                                    §§goto(addr423);
                                 }
                                 break;
                              }
                           }
                           §§goto(addr240);
                        }
                     }
                  }
               }
               §§goto(addr222);
            }
         }
         §§goto(addr174);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
