package §%t§
{
   import §&L§.b2Mat22;
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §0"§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §@!'§:b2Vec2;
      
      private var §0!6§:b2Vec2;
      
      private var §;!?§:b2Vec2;
      
      private var §&v§:b2Mat22;
      
      private var §]d§:b2Vec2;
      
      private var §2!W§:Number;
      
      private var §7?§:Number;
      
      private var §=E§:Number;
      
      private var §function§:Number;
      
      private var §;!V§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(!(_loc6_ && _loc3_))
         {
            this.§0"§ = new b2Mat22();
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
                     this.§@!'§ = new b2Vec2();
                     while(!_loc6_)
                     {
                        this.§0!6§ = new b2Vec2();
                        addr75:
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                        if(false)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(this.§0!6§);
                              if(!_loc6_)
                              {
                                 §§pop().SetV(param1.target);
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(this.§0!6§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr202:
                                             §§push(§§pop() - §&!F§.m_xf.position.x);
                                             if(_loc5_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc5_ || this)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      continue;
                                                   }
                                                   addr61:
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      addr68:
                                                      if(_loc6_ && this)
                                                      {
                                                         break loop9;
                                                      }
                                                      §§goto(addr75);
                                                   }
                                                   else
                                                   {
                                                      while(_loc5_)
                                                      {
                                                         continue loop9;
                                                         §§goto(addr61);
                                                      }
                                                      while(_loc5_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop2;
                                                      addr108:
                                                      addr100:
                                                   }
                                                }
                                                addr201:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc3_:* = §§pop();
                                             _loc4_ = §&!F§.m_xf.R;
                                             if(_loc5_ || _loc2_)
                                             {
                                                addr377:
                                                addr364:
                                                §§push(this.§@!'§);
                                                §§push(_loc2_);
                                                if(_loc5_)
                                                {
                                                   addr371:
                                                   §§push(§§pop() * _loc4_.col1.x + _loc3_ * _loc4_.col1.y);
                                                }
                                                §§pop().x = §§pop();
                                                addr378:
                                                §§push(this.§@!'§);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(_loc4_.col2.x);
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr322:
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§push(_loc4_.col2.y);
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           addr350:
                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 this.§2!W§ = param1.§3!,§;
                                                                                 this.§;!?§.§5b§();
                                                                                 addr283:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    this.§7?§ = param1.§?!J§;
                                                                                    addr262:
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       this.§=E§ = param1.§9!7§;
                                                                                       this.§function§ = 0;
                                                                                       addr256:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             this.§;!V§ = 0;
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§goto(addr283);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr256);
                                                                                          }
                                                                                          §§goto(addr283);
                                                                                       }
                                                                                       §§goto(addr262);
                                                                                    }
                                                                                    §§goto(addr378);
                                                                                    addr277:
                                                                                 }
                                                                                 addr361:
                                                                                 §§goto(addr361);
                                                                              }
                                                                              §§goto(addr371);
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                               }
                                                               §§goto(addr350);
                                                            }
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr364);
                                             }
                                             §§goto(addr277);
                                          }
                                          §§goto(addr201);
                                       }
                                       break;
                                    }
                                    addr123:
                                    addr136:
                                    while(_loc5_ || this)
                                    {
                                       this.§]d§ = new b2Vec2();
                                       §§goto(addr108);
                                    }
                                    while(true)
                                    {
                                       this.§&v§ = new b2Mat22();
                                       §§goto(addr123);
                                    }
                                 }
                              }
                              addr170:
                              §§push(§§pop().y);
                              if(!(_loc6_ && this))
                              {
                                 §§push(§§pop() - §&!F§.m_xf.position.y);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§goto(addr201);
                                 }
                              }
                              §§goto(addr202);
                           }
                           while(true)
                           {
                              this.§;!?§ = new b2Vec2();
                              §§goto(addr136);
                              §§goto(addr68);
                           }
                           addr142:
                        }
                        §§goto(addr170);
                        §§push(this.§0!6§);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§0!6§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §&!F§.GetWorldPoint(this.§@!'§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(this.§;!?§.x);
            if(!(_loc2_ && param1))
            {
               addr47:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc2_)
               {
                  §§push(§§pop() * this.§;!?§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §#!'§() : b2Vec2
      {
         return this.§0!6§;
      }
      
      public function §5!P§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(§&!F§.IsAwake() == false)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §&!F§.SetAwake(true);
               }
               while(true)
               {
                  §§goto(addr49);
               }
            }
            addr49:
            §§goto(addr60);
         }
         addr60:
         while(true)
         {
            this.§0!6§ = param1;
            if(_loc3_ || _loc2_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function § <§() : Number
      {
         return this.§2!W§;
      }
      
      public function §+"§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2!W§ = param1;
         }
      }
      
      public function §4!g§() : Number
      {
         return this.§7?§;
      }
      
      public function §+![§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7?§ = param1;
         }
      }
      
      public function §!!M§() : Number
      {
         return this.§=E§;
      }
      
      public function §85§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=E§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = §&!F§;
         §§push(_loc2_.GetMass());
         if(_loc14_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(_loc14_ || _loc3_)
         {
            §§push(§§pop() * this.§7?§);
            if(_loc14_ || this)
            {
               addr61:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(!_loc13_)
            {
               §§push(this.§=E§);
               if(_loc14_ || param1)
               {
                  addr95:
                  §§push(§§pop() * §§pop());
                  if(!(_loc13_ && param1))
                  {
                     §§push(_loc4_);
                  }
                  var _loc5_:* = §§pop();
                  §§push(_loc3_);
                  if(!(_loc13_ && this))
                  {
                     §§push(_loc4_);
                     if(_loc14_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc13_)
                        {
                           addr111:
                           §§push(§§pop() * _loc4_);
                           if(!_loc13_)
                           {
                              addr114:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(!_loc13_)
                           {
                              §§push(this);
                              §§push(param1.§`"§);
                              if(!_loc13_)
                              {
                                 §§push(_loc5_);
                                 if(_loc14_ || param1)
                                 {
                                    §§push(param1.§`"§);
                                    if(!(_loc13_ && param1))
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§pop().§;!V§ = §§pop();
                              loop0:
                              while(true)
                              {
                                 addr161:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc14_)
                                    {
                                       §§push(this.§;!V§);
                                       if(_loc14_ || _loc3_)
                                       {
                                          §§push(§§pop() == 0);
                                          if(!_loc13_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             addr180:
                                             §§push(1 / this.§;!V§);
                                             if(!_loc13_)
                                             {
                                                addr186:
                                                §§push(Number(§§pop()));
                                                if(_loc13_ && _loc3_)
                                                {
                                                   addr203:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(_loc14_ || _loc2_)
                                             {
                                                §§goto(addr203);
                                             }
                                          }
                                          §§pop().§;!V§ = §§pop();
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(param1.§`"§);
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                §§push(_loc6_);
                                                if(_loc14_ || _loc3_)
                                                {
                                                   addr149:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc14_ || _loc3_)
                                                   {
                                                      §§push(this.§;!V§);
                                                   }
                                                   §§pop().§function§ = §§pop();
                                                   if(_loc14_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue;
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§goto(addr149);
                                          }
                                          addr234:
                                          _loc7_ = _loc2_.m_xf.R;
                                          §§push(this.§@!'§.x);
                                          if(_loc14_ || this)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(_loc14_ || _loc2_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.§@!'§.y);
                                          if(_loc14_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                             if(!_loc13_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc9_:* = §§pop();
                                          §§push(_loc7_.col1.x);
                                          if(!(_loc13_ && this))
                                          {
                                             §§push(_loc8_);
                                             if(_loc14_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc14_)
                                                {
                                                   §§push(_loc7_.col2.x);
                                                   if(_loc14_ || _loc3_)
                                                   {
                                                      addr305:
                                                      §§push(§§pop() + §§pop() * _loc9_);
                                                      if(_loc13_)
                                                      {
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         §§push(_loc7_.col1);
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_.col2.y);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(§§pop() * _loc9_);
                                                                     }
                                                                  }
                                                                  addr1098:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.§8[§);
                                                                                    while(_loc14_)
                                                                                    {
                                                                                       continue loop10;
                                                                                       addr1037:
                                                                                       if(!(_loc14_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          _loc12_ = §§pop();
                                                                                          while(!_loc13_)
                                                                                          {
                                                                                             §§push(this.K1);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().col1);
                                                                                                while(_loc14_)
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.K1);
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().col2);
                                                                                                            addr1005:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               addr1006:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  addr1007:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.K1);
                                                                                                                     continue loop21;
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
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§goto(addr1098);
                                                                                    }
                                                                                    continue loop11;
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
                                                      §§goto(addr828);
                                                   }
                                                }
                                                §§goto(addr305);
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr305);
                                          addr205:
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr180);
                                 }
                              }
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr114);
                     }
                  }
                  §§goto(addr111);
               }
               §§push(§§pop() * §§pop());
               if(_loc14_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr95);
         }
         §§goto(addr61);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = §&!F§;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§@!'§.x);
         if(_loc15_ || this)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!(_loc16_ && _loc2_))
            {
               addr54:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§@!'§.y);
            if(_loc15_)
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(!(_loc16_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            if(!_loc16_)
            {
               §§push(_loc3_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(!(_loc16_ && param1))
                  {
                     §§push(_loc6_);
                     if(_loc15_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        loop1:
                        while(true)
                        {
                           §§push(_loc3_.col2);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop().x);
                              loop3:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(_loc15_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc16_ && _loc3_))
                                       {
                                          §§push(Number(§§pop()));
                                          loop5:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             addr201:
                                             loop28:
                                             while(true)
                                             {
                                                loop29:
                                                while(true)
                                                {
                                                   §§push(_loc3_.col1);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop().y);
                                                      if(_loc15_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc15_)
                                                            {
                                                               §§push(_loc3_.col2);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(_loc16_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!(_loc16_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc16_)
                                                                        {
                                                                           if(_loc16_ && _loc3_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           loop30:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr154:
                                                                              loop31:
                                                                              while(_loc15_)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 while(_loc15_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          break loop29;
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc16_ && _loc2_)
                                                                                       {
                                                                                          break loop4;
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc16_ && param1))
                                                                                    {
                                                                                       continue loop30;
                                                                                    }
                                                                                    continue loop31;
                                                                                 }
                                                                                 continue loop28;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        addr224:
                                                                        §§push(_loc7_);
                                                                        break loop3;
                                                                     }
                                                                     break loop3;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§goto(addr154);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      break loop4;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(_loc2_.§45§.y);
                                    if(!_loc16_)
                                    {
                                       §§push(_loc2_.m_angularVelocity);
                                       if(!(_loc16_ && _loc2_))
                                       {
                                          §§push(§§pop() * _loc6_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc15_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc9_:* = §§pop();
                                    _loc3_ = this.§&v§;
                                    if(_loc15_ || this)
                                    {
                                       §§push(_loc8_);
                                       if(!(_loc16_ && _loc3_))
                                       {
                                          §§push(this.§function§);
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             §§push(this.§]d§);
                                             if(_loc15_ || _loc3_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc15_)
                                                      {
                                                         §§push(this.§;!V§);
                                                         if(!(_loc16_ && _loc2_))
                                                         {
                                                            §§push(this.§;!?§);
                                                            if(_loc15_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr327:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc16_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(!(_loc16_ && _loc3_))
                                                                           {
                                                                              addr341:
                                                                              §§push(_loc9_);
                                                                              if(_loc15_)
                                                                              {
                                                                                 addr344:
                                                                                 §§push(this.§function§);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    addr350:
                                                                                    §§push(this.§]d§.y);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       addr353:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc15_ || _loc2_)
                                                                                       {
                                                                                          addr361:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             addr369:
                                                                                             §§push(this.§;!V§);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                addr375:
                                                                                                §§push(this.§;!?§.y);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr378:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc15_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         addr399:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            addr403:
                                                                                                            §§push(_loc3_.col1.x);
                                                                                                            if(_loc15_ || this)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  addr416:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     addr419:
                                                                                                                     §§push(_loc3_.col2.x);
                                                                                                                     if(_loc15_ || param1)
                                                                                                                     {
                                                                                                                        addr431:
                                                                                                                        addr429:
                                                                                                                        addr430:
                                                                                                                        §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                        if(_loc15_ || param1)
                                                                                                                        {
                                                                                                                           addr439:
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           var _loc10_:* = §§pop();
                                                                                                                           §§push(_loc3_.col1.y);
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              if(!(_loc16_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc15_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.col2.y);
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       addr470:
                                                                                                                                       §§push(§§pop() * _loc5_);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc15_ || _loc3_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr484:
                                                                                                                                    var _loc11_:* = §§pop();
                                                                                                                                    §§push(this.§;!?§.x);
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc12_:* = §§pop();
                                                                                                                                    §§push(this.§;!?§.y);
                                                                                                                                    if(_loc15_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc13_:* = §§pop();
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§;!?§);
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§;!?§);
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      addr528:
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         addr535:
                                                                                                                                                         §§push(this.§;!?§);
                                                                                                                                                         §§push(this.§;!?§.y);
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            addr540:
                                                                                                                                                            §§pop().y = §§pop() + _loc11_;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr540);
                                                                                                                                                      }
                                                                                                                                                      §§push(param1.§`"§);
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * this.§2!W§);
                                                                                                                                                         if(!(_loc16_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      var _loc14_:* = §§pop();
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§;!?§);
                                                                                                                                                         loop6:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().§+!I§());
                                                                                                                                                            loop7:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                               loop8:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * _loc14_);
                                                                                                                                                                  loop9:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        loop10:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§;!?§);
                                                                                                                                                                           loop11:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc14_);
                                                                                                                                                                              if(!(_loc16_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() / this.§;!?§.§ >§());
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§%!U§(§§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr681:
                                                                                                                                                                                 if(_loc16_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc2_);
                                                                                                                                                                                 §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc2_.§&f§);
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       if(_loc15_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                          if(_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr606:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!(_loc16_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr593:
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                if(_loc15_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr601:
                                                                                                                                                                                                   §§push(§§pop() * _loc10_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                             if(_loc15_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc15_ || _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop17:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§;!?§);
                                                                                                                                                                                                         if(!_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(_loc15_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                               if(_loc15_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr760);
                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                            addr749:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         if(_loc15_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop7;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr721:
                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                            if(_loc15_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc15_ || _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop9;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop8;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(_loc15_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr741:
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc15_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc11_ = §§pop();
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc2_.§45§);
                                                                                                                                                                                                                     loop19:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc2_.§45§);
                                                                                                                                                                                                                        addr694:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                           addr695:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc2_.§8[§);
                                                                                                                                                                                                                              addr697:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                                                                 addr698:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr699:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       addr700:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                          addr701:
                                                                                                                                                                                                                                          while(_loc15_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop19;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr745:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr779:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc10_ = §§pop();
                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr779:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  if(!(_loc16_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr779);
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr779);
                                                                                                                                                                                                                  §§goto(addr721);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr760:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr779);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr741);
                                                                                                                                                                                                         §§goto(addr779);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr780:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   return;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr745);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr674);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr601);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr593);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr606);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr749);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr780);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr540);
                                                                                                                                             }
                                                                                                                                             §§goto(addr528);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr535);
                                                                                                                                 }
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr484);
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 §§goto(addr484);
                                                                                                                              }
                                                                                                                              §§goto(addr470);
                                                                                                                           }
                                                                                                                           §§goto(addr484);
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     §§goto(addr431);
                                                                                                                  }
                                                                                                                  §§goto(addr439);
                                                                                                               }
                                                                                                               §§goto(addr429);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr439);
                                                                                                   }
                                                                                                   §§goto(addr431);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr416);
                                                                                          }
                                                                                          §§goto(addr399);
                                                                                       }
                                                                                       §§goto(addr416);
                                                                                    }
                                                                                    §§goto(addr430);
                                                                                 }
                                                                                 §§goto(addr361);
                                                                              }
                                                                              §§goto(addr439);
                                                                           }
                                                                           §§goto(addr403);
                                                                        }
                                                                        §§goto(addr369);
                                                                     }
                                                                     §§goto(addr399);
                                                                  }
                                                                  §§goto(addr431);
                                                               }
                                                               §§goto(addr378);
                                                            }
                                                            §§goto(addr375);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                   §§goto(addr431);
                                                }
                                                §§goto(addr353);
                                             }
                                             §§goto(addr350);
                                          }
                                          §§goto(addr416);
                                       }
                                       §§goto(addr419);
                                    }
                                    §§goto(addr341);
                                 }
                                 break;
                              }
                              §§goto(addr226);
                           }
                        }
                        addr179:
                     }
                     break;
                  }
                  §§goto(addr179);
               }
               §§push(-§§pop());
               if(_loc15_)
               {
                  §§goto(addr224);
               }
               §§goto(addr226);
            }
            §§goto(addr201);
         }
         §§goto(addr54);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
