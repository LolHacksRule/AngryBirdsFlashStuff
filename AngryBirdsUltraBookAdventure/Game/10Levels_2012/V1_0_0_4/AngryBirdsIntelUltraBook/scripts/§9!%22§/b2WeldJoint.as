package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Mat33;
   import §>H§.b2Math;
   import §>H§.b2Vec2;
   import §>H§.b2Vec3;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §4!'§:b2Vec2;
      
      private var §^6§:b2Vec2;
      
      private var §2!l§:Number;
      
      private var §,!2§:b2Vec3;
      
      private var §,0§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4!'§ = new b2Vec2();
         }
         while(true)
         {
            this.§^6§ = new b2Vec2();
            while(true)
            {
               this.§,!2§ = new b2Vec3();
               loop2:
               while(true)
               {
                  this.§,0§ = new b2Mat33();
                  loop3:
                  while(true)
                  {
                     super(param1);
                     while(true)
                     {
                        this.§4!'§.SetV(param1.§<?§);
                        continue loop2;
                        loop7:
                        while(!(_loc3_ && param1))
                        {
                           this.§,!2§.§`!5§();
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_ && param1)
                                 {
                                    break;
                                 }
                                 continue;
                                 addr63:
                              }
                              else
                              {
                                 addr100:
                              }
                              while(true)
                              {
                                 this.§2!l§ = param1.§-!Y§;
                                 if(_loc2_ || this)
                                 {
                                    continue loop3;
                                 }
                                 continue loop7;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(!(_loc2_ || this))
               {
                  continue;
               }
               this.§^6§.SetV(param1.§%!e§);
               §§goto(addr100);
            }
            if(_loc2_ || _loc2_)
            {
               return;
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.§4!'§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.§^6§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§,!2§.x);
            if(_loc2_ || _loc3_)
            {
               addr46:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§,!2§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr46);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§,!2§.z;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         _loc4_ = b2internal::6!G;
         _loc5_ = b2internal::0!w;
         _loc2_ = _loc4_.m_xf.R;
         if(_loc14_)
         {
            §§push(this.§4!'§);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               addr247:
               while(true)
               {
                  §§push(_loc4_.m_sweep);
                  addr249:
                  while(true)
                  {
                     §§push(§§pop().localCenter);
                     addr250:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr251:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr252:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr253:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::6!G;
         var _loc5_:b2Body = b2internal::0!w;
         var _loc6_:b2Vec2 = _loc4_.§^O§;
         §§push(_loc4_.m_angularVelocity);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§^O§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§7n§);
         if(!(_loc23_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§7n§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§;5§);
         if(!(_loc23_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§;5§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§4!'§.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§4!'§.y);
         if(_loc22_ || _loc2_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc22_)
            {
               addr117:
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            if(!(_loc23_ && param1))
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc22_)
                  {
                     §§push(_loc14_);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr212:
                        if(!(_loc22_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc22_)
                        {
                           if(_loc22_)
                           {
                              §§push(Number(§§pop()));
                              loop12:
                              while(true)
                              {
                                 _loc15_ = §§pop();
                                 while(true)
                                 {
                                    if(_loc22_ || _loc3_)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc23_ && this))
                                       {
                                          if(!_loc22_)
                                          {
                                             continue loop12;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       addr139:
                                       if(_loc22_ || _loc3_)
                                       {
                                          if(!(_loc23_ && _loc2_))
                                          {
                                             _loc14_ = §§pop();
                                             if(_loc22_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             addr249:
                                             while(true)
                                             {
                                                addr158:
                                                while(true)
                                                {
                                                   §§push(_loc2_.col1);
                                                   if(_loc23_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().y);
                                                }
                                                continue loop0;
                                             }
                                          }
                                          addr248:
                                       }
                                       while(true)
                                       {
                                          if(_loc22_)
                                          {
                                             §§push(_loc14_);
                                             if(_loc22_)
                                             {
                                                if(!(_loc23_ && this))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc22_ || param1))
                                                   {
                                                      continue loop12;
                                                   }
                                                   §§push(_loc2_.col2);
                                                   if(!_loc23_)
                                                   {
                                                      §§push(§§pop().y);
                                                      if(_loc22_ || this)
                                                      {
                                                         if(_loc22_ || _loc3_)
                                                         {
                                                            §§push(_loc15_);
                                                            if(!(_loc23_ && param1))
                                                            {
                                                               §§goto(addr212);
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr246:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr247:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr248);
                                                                  }
                                                               }
                                                            }
                                                            addr245:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr245);
                                                         }
                                                         addr244:
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr244);
                                                   }
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr247);
                                          §§goto(addr139);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr249);
                                 }
                                 addr156:
                                 while(false)
                                 {
                                    §§goto(addr158);
                                 }
                                 _loc2_ = _loc5_.m_xf.R;
                                 §§push(this.§^6§.x);
                                 if(!(_loc23_ && param1))
                                 {
                                    §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                    if(_loc22_ || param1)
                                    {
                                       addr277:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc16_:* = §§pop();
                                    §§push(this.§^6§.y);
                                    if(!(_loc23_ && param1))
                                    {
                                       §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                       if(_loc22_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc17_:* = §§pop();
                                    if(!(_loc23_ && _loc2_))
                                    {
                                       §§push(_loc2_.col1);
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc22_)
                                          {
                                             §§push(_loc16_);
                                             if(!_loc23_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc23_ && this))
                                                {
                                                   §§push(_loc2_.col2);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr425:
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(_loc17_);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc23_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc22_ || _loc2_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr449:
                                                                  loop43:
                                                                  while(true)
                                                                  {
                                                                     loop44:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.col1);
                                                                        if(!_loc23_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!(_loc23_ && this))
                                                                           {
                                                                              §§push(_loc16_);
                                                                              if(_loc22_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc23_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc2_.col2);
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc17_);
                                                                                       if(!(_loc23_ && _loc2_))
                                                                                       {
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc23_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                addr392:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc23_ && param1)
                                                                                                {
                                                                                                   break loop15;
                                                                                                }
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   _loc17_ = §§pop();
                                                                                                   while(!_loc23_)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         break loop15;
                                                                                                      }
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc22_ || this))
                                                                                                      {
                                                                                                         break loop15;
                                                                                                      }
                                                                                                      _loc16_ = §§pop();
                                                                                                      if(!(_loc23_ && param1))
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            §§push(_loc8_.x);
                                                                                                            if(!(_loc23_ && this))
                                                                                                            {
                                                                                                               addr459:
                                                                                                               §§push(_loc9_);
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  addr462:
                                                                                                                  §§push(_loc17_);
                                                                                                                  if(!(_loc23_ && this))
                                                                                                                  {
                                                                                                                     addr470:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc22_)
                                                                                                                     {
                                                                                                                        break loop18;
                                                                                                                     }
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(_loc22_)
                                                                                                                     {
                                                                                                                        addr493:
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           addr498:
                                                                                                                           §§push(§§pop() + §§pop() * _loc15_);
                                                                                                                           if(_loc22_ || _loc3_)
                                                                                                                           {
                                                                                                                              break loop15;
                                                                                                                           }
                                                                                                                           break loop43;
                                                                                                                        }
                                                                                                                        §§goto(addr498);
                                                                                                                     }
                                                                                                                     break loop43;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr498);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop44;
                                                                                                         break loop15;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop43;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             §§goto(addr459);
                                                                                          }
                                                                                          §§goto(addr462);
                                                                                       }
                                                                                       §§goto(addr470);
                                                                                    }
                                                                                    §§goto(addr462);
                                                                                 }
                                                                                 §§goto(addr392);
                                                                              }
                                                                              §§goto(addr498);
                                                                           }
                                                                           break loop43;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  addr507:
                                                                  var _loc18_:* = §§pop();
                                                                  §§push(_loc8_.y);
                                                                  if(!_loc23_)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(_loc22_)
                                                                     {
                                                                        §§push(_loc16_);
                                                                        if(!(_loc23_ && param1))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc22_ || param1)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc22_)
                                                                              {
                                                                                 §§push(_loc6_.y);
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    addr559:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc22_ || this)
                                                                                    {
                                                                                       addr546:
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          addr549:
                                                                                          §§push(§§pop() * _loc14_);
                                                                                       }
                                                                                    }
                                                                                    var _loc19_:Number = §§pop();
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc7_);
                                                                                       if(!(_loc23_ && this))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc20_:* = §§pop();
                                                                                    var _loc21_:b2Vec3 = new b2Vec3();
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       §§push(this.§,0§);
                                                                                       §§push(_loc21_);
                                                                                       §§push(_loc18_);
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§push(_loc19_);
                                                                                       if(_loc22_ || param1)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§push(_loc20_);
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§,!2§.§7x§(_loc21_);
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             §§push(_loc6_.x);
                                                                                             if(!(_loc23_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   §§push(§§pop() * _loc21_.x);
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                             }
                                                                                             §§pop().x = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                §§push(_loc6_.y);
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   if(_loc22_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc21_.y);
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                }
                                                                                                §§pop().y = §§pop();
                                                                                                continue loop20;
                                                                                                loop34:
                                                                                                while(_loc22_ || this)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   §§push(_loc8_.y);
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      §§push(_loc11_);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc21_.y);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   loop35:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      §§push(_loc9_);
                                                                                                      if(_loc22_)
                                                                                                      {
                                                                                                         addr606:
                                                                                                         if(!(_loc23_ && this))
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            if(_loc22_ || this)
                                                                                                            {
                                                                                                               if(!(_loc23_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     §§push(_loc16_);
                                                                                                                     if(!(_loc23_ && this))
                                                                                                                     {
                                                                                                                        addr638:
                                                                                                                        if(_loc22_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc21_.y);
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc23_ && this))
                                                                                                                              {
                                                                                                                                 addr657:
                                                                                                                                 if(_loc22_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       if(_loc22_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc21_.x);
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc22_ || param1)
                                                                                                                                             {
                                                                                                                                                addr681:
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc22_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc23_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr700:
                                                                                                                                                         §§push(_loc21_.z);
                                                                                                                                                         if(!_loc22_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr703:
                                                                                                                                                         §§push(§§pop() + §§pop() * (§§pop() + §§pop()));
                                                                                                                                                         if(_loc22_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc23_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr720:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(_loc22_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                  loop36:
                                                                                                                                                                  for(; !_loc23_; while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                     do
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                     }
                                                                                                                                                                     while(_loc23_);
                                                                                                                                                                     
                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop34;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop36;
                                                                                                                                                                  },return)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop20;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc7_ = §§pop();
                                                                                                                                                               }
                                                                                                                                                               addr811:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  §§push(_loc8_.x);
                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                     if(_loc22_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * _loc21_.x);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  continue loop34;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr810:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr811);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr720);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc21_.z);
                                                                                                                                                         addr807:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr805:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr809:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr810);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr703);
                                                                                                                                             }
                                                                                                                                             §§goto(addr700);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr803:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                break loop35;
                                                                                                                                             }
                                                                                                                                             addr803:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr807);
                                                                                                                                    }
                                                                                                                                    §§goto(addr681);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc21_.y);
                                                                                                                                       if(_loc22_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             if(_loc22_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr803);
                                                                                                                                                }
                                                                                                                                                addr801:
                                                                                                                                             }
                                                                                                                                             §§goto(addr807);
                                                                                                                                             §§goto(addr638);
                                                                                                                                          }
                                                                                                                                          addr793:
                                                                                                                                       }
                                                                                                                                       §§goto(addr801);
                                                                                                                                    }
                                                                                                                                    addr788:
                                                                                                                                 }
                                                                                                                                 §§goto(addr803);
                                                                                                                              }
                                                                                                                              §§goto(addr703);
                                                                                                                           }
                                                                                                                           §§goto(addr681);
                                                                                                                        }
                                                                                                                        §§goto(addr793);
                                                                                                                     }
                                                                                                                     §§goto(addr657);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr787:
                                                                                                                  }
                                                                                                                  §§goto(addr788);
                                                                                                               }
                                                                                                               §§goto(addr809);
                                                                                                            }
                                                                                                            §§goto(addr703);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr606);
                                                                                                            }
                                                                                                            addr786:
                                                                                                         }
                                                                                                         §§goto(addr787);
                                                                                                      }
                                                                                                      §§goto(addr720);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr805);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr734);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc23_ && this)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr559);
                                                                           }
                                                                        }
                                                                        §§goto(addr549);
                                                                     }
                                                                     §§goto(addr559);
                                                                  }
                                                                  §§goto(addr546);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc23_ && this))
                                                         {
                                                            addr481:
                                                            §§push(_loc6_.x);
                                                            if(_loc22_ || param1)
                                                            {
                                                               §§goto(addr470);
                                                            }
                                                            §§goto(addr498);
                                                         }
                                                         §§goto(addr493);
                                                      }
                                                   }
                                                }
                                                §§goto(addr481);
                                             }
                                             §§goto(addr425);
                                          }
                                          break;
                                       }
                                       §§goto(addr507);
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr449);
                                 }
                                 §§goto(addr277);
                              }
                              addr225:
                           }
                           while(true)
                           {
                              §§goto(addr243);
                           }
                           addr241:
                        }
                        §§goto(addr225);
                     }
                  }
                  §§goto(addr241);
               }
            }
            §§goto(addr156);
         }
         §§goto(addr117);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::6!G;
         var _loc5_:b2Body = b2internal::0!w;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§4!'§.x);
         if(!_loc21_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc22_)
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§4!'§.y);
            if(_loc22_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!(_loc21_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            if(_loc22_ || _loc3_)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  addr189:
                  while(true)
                  {
                     §§push(_loc6_);
                     addr190:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc21_ && _loc3_))
                        {
                           §§push(_loc2_.col2);
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr201:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 addr202:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr203:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr204:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                              }
                           }
                           addr200:
                        }
                        addr205:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr206:
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr185);
         }
         §§goto(addr45);
      }
   }
}
